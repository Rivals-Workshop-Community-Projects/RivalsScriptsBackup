//article2_update
if !recall_active timer++
if !recall_active state_timer++

if item != 0 {
    if !recall_active { //recall is inactive
        if recall_cooldown > 0 recall_cooldown--
        if recall_timer != 0 {
            if hbox_id != undefined && instance_exists(hbox_id) {
                hbox_id.hit_priority = 4
            }
            sound_stop(sound_get("timer_tick"))
            sound_play(sound_get("stasis_end_weak"))
            switch item {
                case 1: //homing cart
                //sound_play(sound_get("SpObj_Chaser_Move_01_2"), false, noone, 0.2)
                break;
                
                case 4: //rocket
                sound_play(sound_get("SpObjRocket_RadiateEnergyMoving"), true, noone, 0.2)
                break;
            }
            hsp = recall_prev_hsp
            vsp = recall_prev_vsp
        }
        
        recall_delay = 0
        recall_timer = 0
        //update recall array
        if timer mod recall_increment == 1 && !(abs(recall_prev_x - x) < 0.1 && abs(recall_prev_y - y) < 0.1) {
            var arr_data = [x, y, hsp, vsp]
            array_push(recall_array, arr_data)
        }
        recall_prev_x = x
        recall_prev_y = y
        
        if collision_timer == 0 {
            recall_prev_hsp = hsp
            recall_prev_vsp = vsp
        }
    } else { //recall is active
        if hbox_id != undefined && instance_exists(hbox_id) {
            hbox_id.hit_priority = 0
        }
        if hbox_has_hit {
            recall_active = false
        }
        recall_delay++
        hsp = 0
        vsp = 0
        
        if recall_delay == 1 {
            sound_play(asset_get("sfx_abyss_hex_hit"))
            spawn_hit_fx(x, y, 302)
            sound_stop(sound_get("SpObjRocket_RadiateEnergyMoving"))
            sound_stop(sound_get("SpObj_TimerBomb_SignExplode_First"))
            //spawn_hit_fx(x, y, 109)
        }
        
        if recall_delay > 20 { //delay
            recall_timer++
            if recall_timer == 1 {
                sound_play(sound_get("timer_tick"), true)
            }
            if recall_timer mod recall_increment == 0 && array_length(recall_array) > 0 { //reduce recall array length every increment
                recall_array = array_slice(recall_array, 0, array_length(recall_array) - 1)
            }
            
            //move article position to previous point every increment
            if array_length(recall_array) > 1 {
                var start_index = recall_array[array_length(recall_array)-1]
                var end_index = recall_array[array_length(recall_array)-2]
                //x = ease_linear(start_index[0], end_index[0], recall_timer mod recall_increment, recall_increment)
                //y = ease_linear(start_index[1], end_index[1], recall_timer mod recall_increment, recall_increment)
                
                //need to use hsp/vsp to get platforms to work with players standing on them
                hsp = -start_index[2]
                vsp = -start_index[3]
                
                //x and y position comparison, alter hsp and vsp slightly if too offset
                var x_diff = x - ease_linear(start_index[0], end_index[0], recall_timer mod recall_increment, recall_increment)
                var y_diff = y - ease_linear(start_index[1], end_index[1], recall_timer mod recall_increment, recall_increment)
                
    
                hsp -= floor(x_diff/4)
                vsp -= floor(y_diff/4)
            }
        }
    }
    
    if recall_timer >= recall_timer_max {
        recall_active = false
    }
}
if !recall_active {
    switch item {
        case 0: //default
        draw_sprite_index = sprite_get("arrow_proj")
        
        if free {
            vsp += 0.2
        }
        update_collision()
        if collision_timer > 0 {
            instance_destroy(hbox_id)
        }
        if collision_timer > 60 || (collision_timer == 0 && !instance_exists(hbox_id)) {
            destroy = true
        }
        
        break;
        
        case 1: //homingcart
        if timer == 1 {
            sound_play(sound_get("SpObj_Chaser_FindEnemy_06"), false, noone, 0.7)
        }
        update_collision()
        draw_sprite_index = sprite_get("arrow_homingcart")
        
        if collision_timer == 0 {
            //autohoming
            var nearestPlayer = noone;
            var nearestDist = 1000000;
            with oPlayer if id != other.player_id {
                var dist = distance_to_point(other.x, other.y);
                if dist < nearestDist {
                    nearestPlayer = id;
                    nearestDist = dist;
                }
            }
            
            if nearestPlayer != noone {
                var spd = 14
                var target_angle = point_direction(x, y, nearestPlayer.x, nearestPlayer.y - nearestPlayer.char_height/2) mod 360
                var cur_angle = darctan2(-vsp, hsp) mod 360
                var angle_diff = angle_difference(cur_angle, target_angle)
                
                if angle_diff > 0 cur_angle -= 1.5
                if angle_diff < 0 cur_angle += 1.5
                
                hsp = spd*dcos(cur_angle)
                vsp = -spd*dsin(cur_angle)
            }
        }
        
        if collision_timer > 0 {
            if hbox_id != undefined && instance_exists(hbox_id) {
                hbox_id.hit_priority = 0
            }
        }
        
        if collision_timer > 60 || (collision_timer == 0 && !instance_exists(hbox_id)) {
            destroy = true
        }
        
        break;
        
        case 2: //hoverstone
        draw_sprite_index = sprite_get("arrow_hoverstone")
        hsp *= 0.97
        if (timer == 60 || hbox_has_hit || place_meeting(x, y, asset_get("par_block"))) && !destroy {
            sound_play(asset_get("mfx_star"))
            destroy = true
            spawn_item(item, hsp*spr_dir, vsp, x, y - 10)
        }
        break;
        
        case 3: //bomb
        draw_sprite_index = sprite_get("arrow_bomb")
        switch state {
            case 0: //idle
            if free {
                vsp += 0.2
            }
            update_collision()
            
            if wiggle_timer != 0 || !instance_exists(hbox_id) {
                state++
                state_timer = 0
                
                if !instance_exists(hbox_id) {
                    hsp = 2*spr_dir
                    vsp = -3
                } else {
                    hsp = 3*spr_dir
                    vsp = -3
                }
                sound_play(sound_get("SpObj_TimerBomb_SwitchOn"), false, noone, 0.5)
                sound_play(sound_get("SpObj_TimerBomb_SignExplode_First"), false, noone, 0.7)
                if instance_exists(hbox_id) instance_destroy(hbox_id)
            }
            break;
            
            case 1: //priming
            if state_timer < 20 draw_image_index = 1 + (floor(state_timer/6) mod 2)
            else draw_image_index = 3
            hsp *= 0.9
            vsp *= 0.9
            
            if state_timer == 30 { //explode
                var hbox = create_hitbox(AT_DSPECIAL, 1, x, y)
                    hbox.can_hit_self = true
                    hbox.damage = 7
                spawn_hit_fx(x, y, player_id.vfx_bomb_explosion)
                sound_play(sound_get("SpObj_TimerBomb_Explode"), false, noone, 0.7)
                sound_stop(sound_get("SpObj_TimerBomb_SignExplode_First"))
                sound_stop(sound_get("SpObj_TimerBomb_SwitchOn"))
                destroy = true
            }
            break;
        }
        break;
        
        case 4: //rocket
        draw_sprite_index = sprite_get("arrow_rocket")
        draw_image_index = 1 + ((timer/4) mod 4)
        update_collision()
        if collision_timer > 0 && instance_exists(hbox_id) {
            hbox_id.hit_priority = 0
        }
        if collision_timer > 60 || (collision_timer == 0 && !instance_exists(hbox_id)) {
            destroy = true
        }
        break;
    }
}
/*
if hbox_hit_id != undefined && instance_exists(hbox_hit_id) {
    x = hbox_hit_id.x
    y = hbox_hit_id.y - hbox_hit_id.char_height/2
    hsp = hbox_hit_id.hsp
    vsp = hbox_hit_id.vsp
}
*/

//trail
 
if state == 0 && !destroy {
    var el = [x + hsp, y + vsp, draw_image_angle]
} else {
    var el = [undefined, undefined, 0]
}

trail_arr[trail_index] = el
trail_index = (trail_index + 1) mod trail_segments

//print(trail_arr)

//blastzone destroy
if (x > player_id.room_width + 100) || (x < -100) || (y > player_id.room_height + 100) {
    destroy = true
}

if destroy {
    if hbox_id != undefined && instance_exists(hbox_id) {
        hbox_id.destroyed = true
    }
    
    if state != 10000 && (item == 1 || item == 3) { //not homingcart or bomb
        sound_play(sound_get("SpObj_Disappear_short"))
    }
    if item == 4 && hsp != 0 { //moving rocket
        sound_play(sound_get("SpObj_Disappear_short"))
        with player_id spawn_hit_fx(other.x, other.y, 301)
    }
    sound_stop(sound_get("SpObjRocket_RadiateEnergyMoving"))
    sprite_index = asset_get("empty_sprite")
    draw_sprite_index = asset_get("empty_sprite")
    is_hittable = false
    state = 10000
    state_timer = 0
    hsp = 0
    vsp = 0
    var trail_empty = true
    for (var i = 0; i < trail_segments; i++) {
        if trail_arr[i][0] != undefined {
            trail_empty = false
        }
    }
    if trail_empty || recall_active {
        //print('a')
        instance_destroy()
        exit;
    }
}

#define update_collision()
if !recall_active {
    if place_meeting(x, y, asset_get("par_block")) {
        hsp = 0
        vsp = 0
        
        if wiggle_timer == 0 sound_play(sound_get("trident_ground_impact1"))
        
        wiggle_timer++
        var wiggle_adj = 0
        var wiggle_length = 15
        if wiggle_timer < wiggle_length wiggle_adj = 10*((wiggle_length-wiggle_timer)/wiggle_length)*dsin(wiggle_timer*45)
        draw_image_angle = temp_image_angle + wiggle_adj
        
        collision_timer++
    } else {
        if free {
            wiggle_timer = 0
            draw_image_angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
            temp_image_angle = draw_image_angle
        }
        collision_timer = 0
    }
}

#define spawn_item(i, h, v, spawnx, spawny)
if i <= 3 {
    var obj = instance_create(spawnx, spawny, "obj_article_platform")
} else {
    var obj = instance_create(spawnx, spawny, "obj_article1")
}
obj.item = i
obj.hsp = h*spr_dir
obj.real_hsp = h*spr_dir
obj.vsp = v
obj.real_vsp = v
obj.spr_dir = spr_dir

return obj