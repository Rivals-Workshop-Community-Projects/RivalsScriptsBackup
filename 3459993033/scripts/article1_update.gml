lock_state = false;

var state_info = player_id.toadie_animations[? state];

/*
with pHitBox { 
    if player_id == other.player_id or !place_meeting(x,y,other) continue;
    
    player_id.has_hit = true;
    spawn_hit_fx(lerp(x, other.x, 0.5), lerp(y, other.y, 0.5), hit_effect)
    with other {
        sound_play(other.sound_effect)
        ds_list_add(player_id.particles, {
            sprite: sprite_get("toadie_die"),
            x: x,
            y: y,
            hsp: 3 - random_func(3, 6, true),
            vsp: -3,
            xaccel: 0,
            yaccel: 0.4,
            angle: 0,
            torque: 6,
            lifetime: 300,
            xscale: spr_dir,
            yscale: 1
        })
        instance_destroy()
    }
}*/

if (state != PS_SPAWN){
    hit_detection()
}

switch state {
    case PS_SPAWN:
        hsp *= 0.95;
        vsp *= 0.95
        
        if state_timer == 0 or state_timer == 6 {
            sound_play(sound_get("sfx_delta_head_spin"), false, noone, 0.8, 1.4)
        }
    break;
    case PS_IDLE:
    depth = -8
    cooldown = max(cooldown-1, 0)
    
    zone_timer = min(zone_timer+1, zone_max_time)
    if zone_timer == zone_max_time {
        zone_timer = 0;
        if distance_to_object(player_id) > 200 {
            spr_dir = sign(player_id.x-x)
            if spr_dir == 0 spr_dir = 1;
            
            var dir = point_direction(x,y,player_id.x, player_id.y - floor(player_id.char_height/2))
            hsp = lengthdir_x(6, dir);
            vsp = lengthdir_y(6,dir)
        }
    }

    hsp *= 0.95;
    vsp *= 0.95
    
    var was_destroyed = false
    var player_cooldown = 60;
    with pHitBox {
        if player_id != other.player_id or !place_meeting(x,y,other) or other.state == PS_DEAD continue;
        
        
        var spawn = -1;
        var the_hsp = 0;
        var the_vsp = -2;
        switch attack {
            case AT_JAB:
                if hbox_num == 4 or hbox_num == 5 {
                    //print("window_changed")
                    player_id.jab_should_skip = true
                    if (player_id.nspec_fully_charged && !player_id.shield_down){
                        spawn = 1;
                        the_hsp = player_id.spr_dir * 17;
                        the_vsp = -6
                    } else {
                        spawn = 0;
                        the_hsp = player_id.spr_dir * 10;
                        the_vsp = -5
                    }
                    
                }
            break;
            case AT_FSPECIAL:
                if player_id.was_parried break;
                
                spawn = 0;
                the_vsp = -16
                with player_id {
                    set_state(PS_IDLE_AIR)
                    vsp = -9
                    hsp *= 0.4
                }
                player_cooldown = 120;
            break;
            case AT_FSPECIAL_2:
                if player_id.was_parried break;
                
                spawn = 1;
                the_vsp = -16
                with player_id if (other.hbox_num == 1) {
                    set_state(PS_IDLE_AIR)
                    vsp = -9
                    hsp *= 0.4
                }
                player_cooldown = 120;
            break;
            case AT_NSPECIAL:
                switch hbox_num {
                    case 1:
                        spawn=0;
                        the_hsp = hsp
                        the_vsp = -3
                    break;
                    case 2:
                        spawn = 1;
                        the_hsp = hsp
                        the_vsp = -5
                    break;
                    case 3:
                    case 4:
                        spawn = 0;
                        the_hsp = 7*player_id.spr_dir
                        the_vsp = -3
                        break;
                    case 5:
                        spawn = 1;
                        the_hsp = 15*player_id.spr_dir
                        the_vsp = -5
                        break;
                }
            break;
            case AT_BAIR:
                if player_id.nspec_fully_charged && !player_id.shield_down {
                    spawn = 1;
                    the_hsp = -(10*player_id.spr_dir)
                    the_vsp = -8
                }
                else {
                    spawn = 0;
                    the_hsp = -(8*player_id.spr_dir)
                    the_vsp = -8
                }
            break;
            case AT_DAIR:
            if player_id.nspec_fully_charged && !player_id.shield_down {
                spawn = 1;
                the_hsp = 0
                the_vsp = 9
            }
            else {
                spawn = 0;
                the_hsp = 0
                the_vsp = 6                
            }
            break
        }
        
        if spawn == 0 {
            with other {
                var shell = create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y+6))
                shell.hsp = the_hsp
                shell.vsp = the_vsp
                shell.die_on_ground = other.attack == AT_DAIR or other.attack == AT_FSPECIAL
                was_destroyed = true
            }
            
            destroyed_next = type == 2
            break;
        }
        else if spawn == 1 {
            with other {
                var bomb = create_hitbox(AT_DSPECIAL, 3, floor(x), floor(y+2))
                bomb.hsp = the_hsp
                bomb.vsp = the_vsp
                was_destroyed = true
            }
            player_id.nspec_fully_charged = false;
            player_id.nspecial_charge = 0;
            
            destroyed_next = type == 2
            break;            
        }
    }
    
    if y < blastzone_t + 200 {
        y = lerp(y, blastzone_t + 200, 0.1)
    }

    
    if was_destroyed {
        spawn_hit_fx(x,y+6,player_id.poof_disappear)
        sound_play(sound_get("sfx_delta_transform"), false, noone, 1, 1.1)
        sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 1.5);
        player_id.move_cooldown[AT_DSPECIAL] = player_cooldown;
        instance_destroy()
    }
    
    if instance_exists(hitbox) {
        hitbox.x = x;
        hitbox.y = y;
    }
    if cooldown == 0 {
        with oPlayer {
                if self == other.player_id continue;
                
            if (state_cat == SC_HITSTUN || state == PS_TUMBLE) && !activated_kill_effect {
                if place_meeting(x+hsp,y+vsp,other) {
                    other.travel_direction = sign(other.player_id.x-other.x)
                    if other.travel_direction == 0 other.travel_direction = 1;
                    other.spr_dir = other.travel_direction 
                    
                    other.toadie_trajectory_direction = other.travel_direction == -1 ? 180 - other.initial_direction : other.initial_direction
                    other.state = PS_ATTACK_GROUND;
                    other.state_timer = 0;
                    other.window = 0;
                    other.target_player = self;
                    state_info = other.player_id.toadie_animations[? other.state];
                    other.sprite_index = state_info.sprite;
                }
                else if distance_to_object(other) < 70 {
                    var dir = point_direction(other.x,other.y,x,y - floor(char_height/2))
                    other.hsp = lengthdir_x(6, dir);
                    other.vsp = lengthdir_y(6,dir)
                    other.spr_dir = sign(x-other.x)
                    if other.spr_dir == 0 other.spr_dir = 1;
                }
            }
                // if state_cat == SC_HITSTUN {
                //     if place_meeting(x+hsp,y+vsp,other) {
                //         other.travel_direction = sign(other.player_id.x-other.x)
                //         if other.travel_direction == 0 other.travel_direction = 1;
                //         other.spr_dir = other.travel_direction 
                        
                //         other.toadie_trajectory_direction = other.travel_direction == -1 ? 180 - other.initial_direction : other.initial_direction
                //         with other {
                //             if !instance_exists(hitbox) {
                //                 hitbox = create_hitbox(AT_DSPECIAL, 1, floor(x),floor(y-16))
                //                 hitbox.owner = self;
                //             }
                //         }
                //     }
                //     if distance_to_object(other) < 70 {
                //         other.target_player = self;
                //         other.spr_dir = sign(x-other.x)
                //         if other.spr_dir == 0 other.spr_dir = 1;
                //         var dir = point_direction(other.x,other.y,x,y - floor(char_height/2))
                //         other.hsp = lengthdir_x(6, dir);
                //         other.vsp = lengthdir_y(6,dir)
                        
                //         other.state = PS_ATTACK_GROUND;
                //         other.state_timer = 0;
                //         other.window = 0;
                //         state_info = other.player_id.toadie_animations[? other.state];
                //         other.sprite_index = state_info.sprite;
                //     }
                // }
        }
    }
    break;
    case PS_ATTACK_GROUND:
        if instance_exists(hitbox) {
            hitbox.x = x;
            hitbox.y = y+10
        }
    
        if window == 0 {
            // if window_timer < 2 {
                target_player_position = {
                    x: target_player.x,
                    y: target_player.y-floor(target_player.char_height/2)
                }
                if (state_timer == 3){
                    sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.7, 1.2);
                }
            //     // var dir = point_direction(x,y, target_player_position.x, target_player_position.y)
            //     // spr_dir = sign(target_player.x-x)
            //     // if spr_dir == 0 spr_dir = 1;
            // }
        } else if window == 1 and window_timer == 0 {
            var dir = point_direction(x,y, target_player_position.x, target_player_position.y)
            hsp = lengthdir_x(8, dir);
            vsp = lengthdir_y(8, dir)
            
            // spr_dir = sign(target_player.x-x)
            // if spr_dir == 0 spr_dir = 1;
            
            if !instance_exists(hitbox){
                hitbox = create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y+10))
                hitbox.owner = self;
            }
        }
        
        
        if window == 2 {
            hsp *= 0.9
            vsp *= 0.9
            
            if state_timer == 12 {
                sound_play(sound_get("sfx_delta_toady_confusion"))
            }
        }
    break;
    case PS_ATTACK_AIR:
    //print("attacking")
    //depth = -2;
        for (var i = 0; i < array_length(grabbed_players); i++) {
            var rate = 0.3 + 0.7*(min(state_timer,10)/10)
            
            grabbed_players[i].x = lerp(grabbed_players[i].x, x+hsp, rate);
            grabbed_players[i].y = lerp(grabbed_players[i].y, y+vsp + grabbed_players[i].char_height, rate);
            toadie_trajectory_direction += (grabbed_players[i].up_down - grabbed_players[i].down_down) * travel_direction
        }
        
        var spd = ease_backIn(0, 17, state_timer, 30, 1)
        hsp = lengthdir_x(spd, toadie_trajectory_direction)
        vsp = lengthdir_y(spd, toadie_trajectory_direction)

        
        if state_timer > 30 or array_length(grabbed_players) == 0 {
            state=PS_IDLE
            sprite_index = player_id.toadie_animations[? state].sprite;
            image_index = 0;
            window = 0;
            state_timer = 0;
            lock_state = true
            grabbed_players = []
            cooldown = 60;
            hsp *=0.1;
            vsp *=0.1;
            zone_timer = 0;
        }
    break;
    case PS_DEAD:
    player_id.move_cooldown[AT_DSPECIAL] = 120;
    depth = 0;
    if (hitstop <= 0){
        ds_list_add(player_id.kamek_particles_obj.particles, {
        sprite: sprite_get("toadie_die"),
        x: x,
        y: y-16,
        hsp: lengthdir_x(orig_knock, kb_dir),
        vsp: lengthdir_y(orig_knock, kb_dir),
        xaccel: 0,
        yaccel: 0.4,
        angle: 0,
        torque: 5 + orig_knock,
        lifetime: 300,
        xscale: spr_dir,
        yscale: 1
        })
        instance_destroy();
        exit;
    }
    break;
}


state_timer += !lock_state
var window_info = state_info.windows[window]
image_index = window_info.frame_start + ((state_timer / window_info.length) * window_info.frames)

if state_timer >= window_info.length {
    if !window_info.loop {
        window += 1;
        if window == array_length(state_info.windows) {
            window = 0;
            switch state {
                case PS_ATTACK_GROUND:
                case PS_SPAWN:
                case PS_ATTACK_AIR:
                    state = PS_IDLE
                    sprite_index = player_id.toadie_animations[? state].sprite;
                    image_index = 0;
                break;
            }
        }    
    }
    
    window_timer = 0;
}

///     article[index]_update.gml
 
//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;

hit_player_obj.has_hit = true;
hbox.has_hit = true;
 
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
//hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
//hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
//if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
//hsp = lengthdir_x(orig_knock, kb_dir);
//vsp = lengthdir_y(orig_knock, kb_dir);
 
//Default hit stuff
sound_play(hbox.sound_effect);
//ty nart :p
var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
with hit_player_obj { // use a with so that it's shaded correctly
    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
    temp_fx.depth = other.depth-1;
    temp_fx.hit_angle = other.kb_dir;
    temp_fx.kb_speed = other.orig_knock;
}

state = PS_DEAD;
state_timer = 0;
sprite_index = player_id.toadie_animations[? state].sprite;
image_index = 0;
window = 0;
window_timer = 0;
player_id.move_cooldown[AT_DSPECIAL] = 120;

lock_state = true;
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
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