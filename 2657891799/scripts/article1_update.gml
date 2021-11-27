//article1_update
if state != PS_DEAD hit_detection();

state_timer++

if free vsp += 0.6
else if prev_vsp > 1 {
    vsp = -floor(prev_vsp/2)
    sound_play(asset_get("sfx_land_light"), false, noone, clamp(abs(vsp/4), 0, 1), 1.2)
}

vsp = clamp(vsp, -100, 10)
if !hitstop hsp *= free ? 0.92 : 0.80
//if !hitstop hsp *= 0.85
//if !hitstop vsp *= 0.85

//blastzone destroy
if (x > player_id.room_width + 10) || (x < -10) || (y > player_id.room_height + 50) {
    destroy = true
}

switch state {
    case PS_IDLE:
    image_index = 0
    hit_counter = 0
    break;
    
    case PS_ATTACK_AIR: //shine hitbox
    if state_timer == 1 {
        shinebox = create_article_hitbox(AT_DSPECIAL, 1, x, y-35)
    }
    if state_timer > 30 {
        state = PS_IDLE
        state_timer = 0
    }
    break;
    
    case PS_AIR_DODGE: //freeze in place
    hsp = 0
    vsp = 0
    image_index = 1
    if state_timer > 20 {
        state = PS_DEAD
        state_timer = 0
    }
    break;
    
    case PS_DEAD:
    image_index = 0
    if state_timer == 2 {
        sound_play(sound_get("substitute_die"))
    }
    if state_timer >= 40 {
        destroy = true
        spawn_hit_fx(x, y-35, 301)
    }
    break;
}

if shinebox != undefined && instance_exists(shinebox) {
    shinebox.x = x
    shinebox.y = y-35
    shinebox.hsp = hsp
    shinebox.vsp = vsp
}

if state == PS_ATTACK_AIR {
    if recent_player != undefined && recent_player.is_greninja {
        with hit_fx_obj if sprite_index == other.recent_player.shine_spr {
            x = other.x
            y = other.y - 35
        }
    }
}

prev_vsp = vsp

if destroy {
    player_id.doll_id = noone
    sound_play(sound_get("substitute_destroy"))
    instance_destroy(id)
}



#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the hitbox that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.

//Default hit stuff
sound_play(hbox.sound_effect);
spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y-35,hbox.hit_effect);

hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;

//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.

var can_dead = false
if hbox.type == 1 {
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        hit_doll = other.id;
        
        if !is_greninja || (is_greninja && ((state_timer > 1000 && attack == AT_DAIR) || attack == AT_UTHROW)) {
            can_dead = true
        }
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
        
        if is_greninja other.recent_player = id
        other.last_hit = id
    }
    
    
    if hit_player_obj.is_greninja && hbox.attack == AT_FSPECIAL {
        state = PS_DEAD
        state_timer = 0
        image_index = 0
    }
    
    shake_camera(floor(hbox.kb_value/1.2), 2)
} else if hbox.type == 2 {
    if (hbox.attack == AT_NSPECIAL && hbox.hbox_num != 4 && hit_player_obj == player_id) { //non-multihit shuriken hit
        hit_player_obj.proj_doll = 12;
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
else orig_knock = hbox.kb_value + percentage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);

hsp = lengthdir_x(orig_knock, kb_dir);
vsp = lengthdir_y(orig_knock, kb_dir);

if can_dead && orig_knock > 10 {
    state = PS_DEAD
    state_timer = 0
    hit_counter++
}
            

#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        //&& (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}

#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
with recent_player if is_greninja {
    var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
    hbox.owner = other;
}
return hbox;

#define hit_detection
//Code by Supersonic#9999
//You probably don't have to do anything to this function.
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
if num == 0 return;
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
