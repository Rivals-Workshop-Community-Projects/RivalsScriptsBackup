
// Top priority! This allows all state 0 logic to assume that the player has control of the ptooie.
if (state == 0 && ((player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR) || player_id.attack != AT_NSPECIAL)) {
    state = 1;
    state_timer = 0;
}

// Bash handling
if (getting_bashed && reflect_owner != bashed_id) {
    if (state == 0) { // inflict punish state on player if being held
        player_id.window = 9;
        player_id.window_timer = 0;
    }
    state = 2;
    state_timer = 0;
    can_hit = array_create(20, true);
    
    was_reflected = true;
    reflect_owner = bashed_id;
    if (instance_exists(hitbox)) hitbox.destroyed = true;
    hitbox = create_article_hitbox(AT_NSPECIAL, 1, x, y);
}
if (orig_player != player) player = orig_player; // anti-theft for bash

// Inter-ptooie collision
with (obj_article1) if ("is_spider_ptooie" in self && place_meeting(x, y, other) && hitstop > 0) {
    if (state == 0) {
        state = 1; // the other ptooie will do so reciprocally
        player_id.window = 9;
        player_id.window_timer = 0;
    }
    var deflect_speed = free ? 4 : 2;
    if (x < other.x || (x == other.x && player < other.player)) {
        if (-deflect_speed < hsp) hsp = -deflect_speed;
        if (other.hsp < deflect_speed) other.hsp = deflect_speed;
    } else {
        if (-deflect_speed < other.hsp) other.hsp = -deflect_speed;
        if (hsp < deflect_speed) hsp = deflect_speed;
    }
}


// Hit detection, hitstop
hit_detection();
if (hitstop > 0) {
    hitstop = round(hitstop);
    update_hitbox(0, 0);
    exit;
}

// State management
switch state {
    // Controlled
    case 0:
        // Movement is controlled by the player.
        // Wall detection
        if (place_meeting(x, y, asset_get("par_block"))) {
            state = 1;
            state_timer = 0;
            ignores_walls = false;
            can_be_grounded = true;
            if (player_id.window <= 3) {
                player_id.window = 8;
                player_id.window_timer = 0;
            }
            else if (player_id.window == 6) {
                vsp = 1;
                hsp = 3*player_id.spr_dir;
            }
        }
        break;
    
    // Free-moving
    case 1:
        // Should fall through platforms iff reflected
        ignores_walls = was_reflected && free && collision_line(x-20, y+20, x+20, y+20, asset_get("par_jumpthrough"), false, false) && !collision_line(x-20, y+20, x+20, y+20, asset_get("par_block"), false, false);
        can_be_grounded = !was_reflected;
        
        // Fixes floating-point weirdness with platform collision
        if (state_timer == 0) {
            x = round(x);
            y = floor(y);
        }
        
        // Movement handling
        if (hit_wall) {
            hsp = old_hsp * -0.8;
            var volume = (abs(old_hsp) > 5 ? 1 : abs(old_hsp)/5)
            sound_play(asset_get("sfx_fishing_rod_land"), false, noone, volume, 1.2);
            sound_play(asset_get("sfx_kragg_roll_land"), false, noone, volume/2);
        }
        if (free || ignores_walls) { // if ignoring walls, then it needs to pass through a platform
            vsp += 0.5;
        } else {
            if (old_vsp >= 1) {
                vsp = old_vsp*-0.2;
                var volume = (abs(old_vsp) > 5 ? 1 : abs(old_vsp)/5)
                sound_play(asset_get("sfx_fishing_rod_land"), false, noone, volume, 1.2);
                sound_play(asset_get("sfx_kragg_roll_land"), false, noone, volume/2);
            }
            if (abs(hsp) <= 0.2) hsp = 0;
            else if (hsp > 0) hsp -= 0.2;
            else hsp += 0.2;
            hsp = clamp(-3, hsp, 3);
        }
        rot_speed = lerp(rot_speed, -hsp, 0.8);
        
        // Idleness handling
        if (!free && abs(hsp) < idle_threshold) {
            idle_timer++;
            var lifetime = was_reflected ? parried_despawn_time : idle_despawn_time;
            if (idle_timer > lifetime) destroyed = true;
        } else if (idle_timer > 0) {
            idle_timer = clamp(idle_timer-5, 0, idle_timer);
        }
        
        break;
    
    // Bashed
    case 2:
        if (hit_wall) {
            hsp = old_hsp * -0.8;
            state = 1;
            state_timer = 0;
        }
        if (!free) {
            vsp = old_vsp * -0.2;
            state = 1;
            state_timer = 0;
        }
        if (y < get_stage_data(SD_TOP_BLASTZONE_Y)) {
            destroyed = true; // this is the only state that needs a top blast zone check
        }
        break;
}
draw_angle += rot_speed;

// Hitbox handling
var hbox_active = instance_exists(hitbox);
if (!free && vsp >= 0 && abs(hsp) <= 2) {
    if (hbox_active) {
        can_hit = hitbox.can_hit;
        hitbox.destroyed = true;
    }
    hitbox_cooldown = 2;
} else if (!hbox_active && hitbox_cooldown <= 0) {
    hitbox = create_article_hitbox(AT_NSPECIAL, 1, x, y);
}
hitbox_cooldown--;
update_hitbox(hsp, vsp);


// General destroy conditions
if (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) || x < get_stage_data(SD_LEFT_BLASTZONE_X) || get_stage_data(SD_RIGHT_BLASTZONE_X) < x) {
    destroyed = true;
}
if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_weak"));
    destroyed = true;
}
if (destroyed) {
    if (state == 0 && player_id.window <= 4) {
        player_id.window = 7
        player_id.window_timer = 0;
    }
    var vfx = spawn_hit_fx(x-10, y, HFX_FOR_HIT_SMALL);
    vfx.spr_dir = 1;
    vfx.depth = depth-1;
    if (instance_exists(hitbox)) hitbox.destroyed = true;
    instance_destroy();
    exit;
}

old_hsp = hsp;
old_vsp = vsp;
state_timer++;

#define update_hitbox(h, v)
if (instance_exists(hitbox)) {
    hitbox.x = x;
    hitbox.y = y;
    hitbox.hsp = h;
    hitbox.vsp = v;
    
    hitbox.hitbox_timer--;
    
    if (hsp == 0) hitbox.kb_angle = 90;
    else {
        hitbox.kb_angle = 45;
        hitbox.spr_dir = (hsp < 0) ? -1 : 1;
    }
}

// Supersonic collision template functions below \/

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;

//Unique behavior
if (instance_exists(hitbox)) {
    can_hit = hitbox.can_hit;
    hitbox.destroyed = true;
}
hitbox_cooldown += 4;
armor -= hbox.damage;
if (armor <= 0) {
    if (state == 0) {
        state = 1;
        state_timer = 0;
        player_id.window = 9; // punished endlag
        player_id.window_timer = 0;
    }
    can_hit[hbox.player] = 0;
    if (instance_exists(hitbox)) {
        hitbox.can_hit = can_hit;
    }
}

if ("ptooie_obj" in hbox && "can_hit_ptooies" in hbox.ptooie_obj) {
    hbox.ptooie_obj.can_hit_ptooies[@ player] = false;
}

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
if ("ptooie_obj" in hbox) hbox.ptooie_obj.hitstop += 2; // Reasonably safe; used for inter-ptooie collision

//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
//hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
//hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
orig_knock *= 0.5;

if (armor <= 0) {
    hsp = lengthdir_x(orig_knock, kb_dir);
    vsp = lengthdir_y(orig_knock, kb_dir);
}
 
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

#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("ptooie_obj" not in self || ptooie_obj.can_hit_ptooies[other.player]) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (!player_equal || other.was_reflected)
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.ptooie_obj = self;
hbox.can_hit = can_hit;
if (was_reflected) {
    hbox.reflected = true;
    hbox.last_player_id = reflect_owner
    hbox.player = reflect_owner.player;
}
return hbox;
 
#define hit_detection
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