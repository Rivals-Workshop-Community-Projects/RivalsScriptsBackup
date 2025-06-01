visible=get_match_setting(SET_HITBOX_VIS)
image_xscale = owner.spr_dir
x = owner.x + owner.hsp;
y = owner.y + owner.vsp + (owner.minion_offset_y*2);
depth = owner.depth - 3
if owner.state != PS_ATTACK_GROUND {
    sprite_index = player_id.minion_state_info[? owner.state].hurtbox
} else {
    sprite_index = player_id.minion_attacks[owner.attack].hurtbox
}

if (array_find_index(no_collision_on, owner.state) == -1) {
    hit_detection();
}


#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
if hbox.type == 1 {
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
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
hitstop = floor(desired_hitstop); 

//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
//Default hit stuff
sound_play(hbox.sound_effect);
//ty nart :p
var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
with hit_player_obj { // use a with so that it's shaded correctly
    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
    temp_fx.hit_angle = other.kb_dir;
    temp_fx.kb_speed = other.orig_knock;
}

if !(owner.state == PS_BURIED or owner.state == PS_SPAWN or owner.state == PS_PARRY) {
    var should_be_in_hitstun = true;
    if owner.state == PS_ATTACK_GROUND and (owner.state_timer < owner.attack_invinc_threshold or (owner.attack == 4 or owner.attack == 5)) should_be_in_hitstun = false;
    player_id.minion_attack_forgiveness_timer = 0;
    if should_be_in_hitstun
    {
        var dir = sign(hbox.x - owner.x)
        if (dir != 0)
        {
            owner.spr_dir = dir; 
        }
        owner.state = PS_HITSTUN
        owner.state_timer = 0;
        owner.lock_state = true;
        owner.minion_image_index = 0;
        owner.minion_sprite_index = player_id.minion_state_info[? owner.state].sprite;
        owner.vsp = owner.knockback_multiplier * lengthdir_y(orig_knock, kb_dir);
        owner.hsp = owner.knockback_multiplier * lengthdir_x(orig_knock, kb_dir);
    }
    owner.hitstop = ceil(get_hitstop_formula(100-owner.incubation, hbox.hbox_num, hbox.hitpause, hbox.hitpause_growth, hbox.extra_hitpause));
}

if owner.invinc_timer == 0 {
    var is_minion = !(owner.state == PS_BURIED or owner.state == PS_SPAWN);
    
    if !is_minion and owner.disabled_timer == 0 {
    	owner.disabled_timer = owner.disabled_timer_max;
    	sound_play(asset_get("sfx_ori_dspecial_bash_miss"), false, noone, 0.9, 1.1)
    }
    
    var mult = owner.gravestone_damage_multiplier
    print("this should run")
    owner.incubation -= (hbox.damage * mult) + floor(owner.incubation*owner.gravestone_tax_amount*!is_minion)
    owner.incubation_growth_cooldown = owner.incubation_growth_cooldown_max
    
    if is_minion and owner.incubation <= 0 {
		spawn_hit_fx(owner.x,owner.y + owner.death_vfx_offset, player_id.minion_death_vfx).depth = owner.depth+1
		sound_play(sound_get("sfx_deracine_minion_death_shing"))
    }
}
else {
    print("this should not run")
}


#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return (player != other.player_id.player) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        //&& (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;
 
#define hit_detection()
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management
with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
    }
 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
var hit_variable = `hit_article_${id}`;
if num == 0 {
    ds_list_destroy(hitbox_list);
    return;
}
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if hit_variable not in hbox 
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                variable_instance_set(hbox, hit_variable, true);
            }
        } else {
            //fake hit if group has already hit; optimization thing
            variable_instance_set(hbox, hit_variable, true);
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
                if filters(hbox) {
                    if hbox.hit_priority > highest_priority {
                        highest_priority = hbox.hit_priority;
                        highest_priority_owner = hbox.player;
                        highest_priority_hbox = hbox;
                    }
                } else {
                    //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                    variable_instance_set(hbox, hit_variable, true);
                }
            } else {
                //fake hit if group has already hit; optimization thing
                variable_instance_set(hbox, hit_variable, true);
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}
 
if final_hbox != noone {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);