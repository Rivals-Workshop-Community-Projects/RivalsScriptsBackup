//Default hit stuff
//This might go unused.
enum EN_EVENT {
    INIT,
    UPDATE,
    ANIMATION,
    DEATH,
    GOT_HIT,
    GOT_PARRIED,
    ATTACK_UPDATE,
}
if (!filters(enemy_hitboxID)) exit;

mask_index = hurtbox_mask;
if (!place_meeting(x, y, enemy_hitboxID)) {
    mask_index = collision_box;
    exit;
}
mask_index = collision_box;
    
custom_behavior(EN_EVENT.GOT_HIT)

sound_play(enemy_hitboxID.sound_effect);
var fx = spawn_hit_fx(floor(x+enemy_hitboxID.hit_effect_x),floor(y+enemy_hitboxID.hit_effect_y),floor(enemy_hitboxID.hit_effect == 0 ? 301 : enemy_hitboxID.hit_effect));
fx.pause = 8;
 
hit_player_obj = enemy_hitboxID.player_id;
hit_player_num = enemy_hitboxID.player;
owned_player = hit_player_num;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
if enemy_hitboxID.type == 1 {
    var desired_hitstop = get_hitstop_formula(percent, enemy_hitboxID.damage, enemy_hitboxID.hitpause, enemy_hitboxID.hitpause_growth, 0);
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
}
// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
hitstop = floor(desired_hitstop) + enemy_hitboxID.extra_hitpause; 

 
//Hit Lockout
//Default Hitstun Calculation
hitstun = get_hitstun_formula(percent, kb_adj, enemy_hitboxID.hitstun_factor, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale);
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if enemy_hitboxID.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = get_kb_formula(percent, kb_adj, enemy_hitboxID.hitstun_factor, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale);
kb_dir = get_hitbox_angle(enemy_hitboxID);
if (kb_dir == 361) {
    if (free)
        kb_dir = 45;
    else
        kb_dir = 40;
}
percent += ceil(enemy_hitboxID.damage);

//Changed this to account for bouncing
if !free && kb_dir > 180 && kb_dir < 360 vsp = orig_knock*dsin(kb_dir);
else if !free vsp = -abs(orig_knock*dsin(kb_dir));
else vsp = -orig_knock*dsin(kb_dir);
hsp = orig_knock*dcos(kb_dir);
if hsp != 0 spr_dir = -sign(hsp);

if (place_meeting(x + hsp, y, asset_get("par_block"))) hsp = -hsp;
next_state = PS_HITSTUN;
 
#define custom_behavior(_eventID)
art_event = _eventID
user_event(6); //Custom behavior

#define filters(hitboxID)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hitboxID {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("follower_owner" not in self || follower_owner.player_id != other.player_id) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        //&& (!player_equal) //uncomment to prevent the article from being hit by its follower_owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its follower_owner's team.
}