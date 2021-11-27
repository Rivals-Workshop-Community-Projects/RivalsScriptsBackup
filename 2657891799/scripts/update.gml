//update
timer++

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);

if state == PS_AIR_DODGE || state == PS_ROLL_FORWARD  || state == PS_ROLL_BACKWARD {
    if window == 1 && window_timer == 0 {
        var dodgevfx = spawn_hit_fx(x, y, vfx_airdodge)
            dodgevfx.depth = -10
    }
}

if state == PS_WALL_JUMP && !clinging {
    if state_timer == 0 walljump_timer = 0
    else walljump_timer++
}

if state == PS_PRATFALL {
    vsp -= 0.3
}

//shuriken vfx
for (var i = 0; i < array_length(shuriken_vfx_array); i++) {
    //decrease alpha
    shuriken_vfx_array[i][@2] -= 0.05
}

//if timer mod 60 == 0 spawn_hit_fx(x+300, y-200, 195)

//fspecial
move_cooldown[AT_FSPECIAL] = clamp(move_cooldown[AT_FSPECIAL], 2, 10000)

if state == PS_AIR_DODGE || state == PS_PARRY_START || state == PS_PARRY || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_PRATFALL || state == PS_PRATLAND {
    ss_start = false
}

if proj_doll > 0 proj_doll --

if (proj_doll && (special_pressed || special_down))
|| (force_cancel)
|| (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack != AT_FSPECIAL && hit_doll != undefined && !hitstop && (special_pressed || special_down) {
    ss_start = true
    ss_dist = 60*spr_dir
    ss_timer = (force_cancel || proj_doll) ? 100 : 0
    force_cancel = false
    proj_doll = false
    reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO);
    move_cooldown[AT_FSPECIAL] = 12
    has_hit = false
    destroy_hitboxes()
    attack_end()
}

if ss_start {
    ss_timer++
    ss_type = 0
    
    var ss_list = [AT_UTHROW,AT_JAB,AT_FTILT,AT_UTILT,AT_DTILT,AT_NAIR,AT_FAIR,AT_DATTACK,AT_DAIR,AT_BAIR,AT_UAIR,AT_FSTRONG,AT_DSTRONG,AT_USTRONG,AT_NSPECIAL,AT_DSPECIAL,AT_USPECIAL]
    for (var i = 0; i < array_length(ss_list); i++) {
        move_cooldown[ss_list[i]] = 2
    }
    
    var dist_mult = 3
    
    ss_dist += dist_mult*sign(ss_dist)
    ss_dist = clamp(ss_dist, -250, 250)
    if hit_doll != undefined && instance_exists(hit_doll) && !(attack_down || strong_down) && !(hit_doll.state == PS_DEAD && hit_doll.last_hit != id) && (hit_doll.state != PS_DEAD || hit_doll.hit_counter < 2) {
        ss_type = 1
        ss_doll = hit_doll
        ss_x = ss_doll.x
        ss_y = ss_doll.y-16
    } else if doll_id != noone && instance_exists(doll_id) && !(attack_down || strong_down) && !(doll_id.state == PS_DEAD && doll_id.last_hit != id) && (doll_id.state != PS_DEAD || doll_id.hit_counter < 2) {
        ss_type = 1
        ss_doll = doll_id
        ss_x = ss_doll.x
        ss_y = ss_doll.y-16
    } else {
        ss_x = x + ss_dist
        ss_y = 320
        
        var bottom_y = view_get_yview() + view_get_hview()
        while ss_y < bottom_y && !position_meeting(ss_x, ss_y, asset_get("par_block")) {
            ss_y += 16
        }
        if ss_y > bottom_y - 10 ss_y = bottom_y - 10
    }
    
    
    //if (has_hit_player && !hitpause && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) || (ss_timer > 90 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
    if !was_parried && (ss_timer > 90 || !special_down || hit_doll != undefined) {
        set_state(free ? PS_ATTACK_AIR : PS_ATTACK_GROUND)
        attack = AT_FSPECIAL
        window = 1
        window_timer = 0
        state_timer = 0
        ss_start = false
        move_cooldown[AT_FSPECIAL] = 80
        hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE);
        sprite_index = get_attack_value(AT_FSPECIAL, AG_SPRITE);
        ss_count++
        if attack_down || strong_down ss_type = 0
    }
}

if free ss_free_timer++
else ss_free_timer = 0

if draw_jet {
    draw_jet_timer++
    if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
        var newx = uspec_start[0] + 8*dcos(uspec_start[2])
        var newy = uspec_start[1] - 8*dsin(uspec_start[2])
        var collision = instance_position(newx, newy, asset_get("par_block"))
        if draw_jet_timer < 12 && !collision {
            uspec_start[0] = newx
            uspec_start[1] = newy
        }
    }
    
    var draw_x = uspec_start[0]
    var draw_y = uspec_start[1]
    var draw_ang = uspec_start[2]
    var index = floor(draw_jet_timer/6)
    var hitbox_x = 0
    var hitbox_y = 0
    if index <= 3 {
        var stop_draw = false
        var jet_limit = clamp(draw_jet_timer, 1, 14)*2
        for (var i = 0; i < jet_limit; i++) {
            var _x = draw_x-(10*i*dcos(draw_ang))
            var _y = draw_y+(i*10*dsin(draw_ang))
            
            var collision = instance_position(_x, _y, asset_get("par_block"))
            if collision != noone {
                has_collided = true
                if collision_x == undefined collision_x = _x
                if collision_y == undefined collision_y = _y
            }
            
            if has_collided {
                if _y > collision_y {
                    stop_draw = true
                }
            }
            
            if !stop_draw && collision == noone {
                jet_array[i] = [((56+i-(draw_jet_timer >= 12 ? 0 : draw_jet_timer*3)) mod 28) + (index)*28, _x, _y, draw_ang+180]
                //draw_sprite_ext(sprite_get("jet"), i+(index)*14, _x, _y, 1, 1, draw_ang+180, c_white, 1)
            } else {
                if !spawn_splash {
                    spawn_splash = true
                    
                    
                    var splashfx = spawn_hit_fx(_x, floor(_y/16)*16 + 2, vfx_splash)
                        splashfx.depth = -10
                }
                //if !stop_draw draw_sprite_ext(sprite_get("jet_splash"), 0, round(_x/16)*16, round(_y/16)*16, 1, 1, 0, c_white, 1)
                stop_draw = true 
            }
            
            if i == jet_limit-1 {
                hitbox_x = round(_x)
                hitbox_y = round(_y)
            }
        }
        
        if draw_jet_timer < 14 && !has_collided {
            var angle_index = uspec_dir/45
            var jetbox = create_hitbox(AT_USPECIAL, 1, hitbox_x, hitbox_y)
            switch angle_index {
                case 0: case 4: //horizontal
                jetbox.kb_angle = 45
                break;
                
                case 6: //up
                jetbox.kb_angle = 90
                break;
                
                case 2: //down
                jetbox.kb_angle = 270
                break;
                
                case 5: case 7: //diagonal up
                jetbox.kb_angle = 60
                break;
                
                case 1: case 3: //diagonal down
                jetbox.kb_angle = 40
                break;
            }
        }
    } else {
        draw_jet = false
    }
}

//ustrong gong hit
with oPlayer if id != other.id && activated_kill_effect && triggers_kill_effect {
    with other sound_play(asset_get("sfx_frog_gong_hit"))
    triggers_kill_effect = false;
}

//dspecial armour
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL {
    if window == 1 && window_timer > 5 {
        super_armor = true
    } else {
        super_armor = false
    }
} else if attack == AT_DSPECIAL && super_armor {
    super_armor = false
}

if state == PS_HITSTUN || state == PS_HITSTUN_LAND || !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_UTHROW || attack == AT_DAIR || attack == AT_FSPECIAL || attack == AT_DSPECIAL)) {
    if counter_hit {
        counter_hit = noone
        invincible = false
    }
}

if state == PS_WALL_JUMP || state == PS_HITSTUN || state == PS_HITSTUN_LAND move_cooldown[AT_FSPECIAL] = 2

//intro anim

var intro_time = get_gameplay_time();
if intro_time == 27 sound_play(asset_get("sfx_ell_fist_explode"))
if intro_time == 27 sound_play(sound_get("ss_attack"))
if intro_time == 27 || intro_time == 24 {
    for (var i = 0; i < 8; i++) {
        var smokex = x + (random_func(i, 60, true) - 30)
        var smokey = y - 35 + (random_func(i+1, 60, true) - 30)
        var smokeangle = random_func(i+2, 360, true)
        var smokefx = spawn_hit_fx(smokex, smokey, vfx_smoke)
            smokefx.draw_angle = smokeangle
            smokefx.depth = -10
    }
}