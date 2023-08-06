//article2_update
timer++
state_timer++

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
        instance_destroy(hbox_id)
    }
    
    if collision_timer > 60 || (collision_timer == 0 && !instance_exists(hbox_id)) {
        destroy = true
    }
    
    break;
    
    case 2: //hoverstone
    draw_sprite_index = sprite_get("arrow_hoverstone")
    hsp *= 0.97
    if (timer == 60 || hbox_has_hit) && !destroy {
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
        if state_timer < 20 draw_image_index = floor(state_timer/6) mod 2
        else draw_image_index = 2
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
    draw_image_index = (timer/4) mod 4
    update_collision()
    if collision_timer > 0 {
        instance_destroy(hbox_id)
    }
    if collision_timer > 60 || (collision_timer == 0 && !instance_exists(hbox_id)) {
        destroy = true
    }
    break;
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
    if trail_empty {
        //print('a')
        instance_destroy()
        exit;
    }
}

#define update_collision()

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