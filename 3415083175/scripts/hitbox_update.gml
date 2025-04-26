//hitbox_update

if attack == AT_FTHROW && hbox_num == 1 {
    var duration = 12
    image_index = floor(hitbox_timer*4/duration)
    if hitbox_timer == duration - 1 {
        destroyed = true
    }
    
    hsp *= 0.9
    if y - player_id.y + 45 > 0 {
        vsp -= 0.6
    } else {
        vsp += 0.6
    }
    
    //trail
    var el = [x, y, darctan2(-vsp, hsp)]
    trail_arr[trail_index] = el
    trail_index = (trail_index + 1) mod trail_segments
    
    proj_angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
    
    

    //autohoming
    if !was_parried {
        var nearestPlayer = noone;
        var nearestDist = 1000000;
        with oPlayer if id != other.player_id {
            var dist = distance_to_point(other.x, other.y);
            if dist < nearestDist {
                nearestPlayer = id;
                nearestDist = dist;
            }
        }
        
        if nearestPlayer != noone && nearestDist < 120 {
            var facing = sign((nearestPlayer.x - player_id.x)*player_id.spr_dir)
            if facing {
                var spd = 20
                var target_angle = point_direction(x, y, nearestPlayer.x, nearestPlayer.y - nearestPlayer.char_height/2) mod 360
                var cur_angle = darctan2(-vsp, hsp) mod 360
                var angle_diff = angle_difference(cur_angle, target_angle)
                
                if angle_diff > 0 cur_angle -= 10
                if angle_diff < 0 cur_angle += 10
                
                hsp = spd*dcos(cur_angle)
                vsp = -spd*dsin(cur_angle)
            }
        }
    }
}

if attack == AT_DSTRONG && hbox_num == 4 {
    if hitbox_timer == 3 {
        var new_x = x + 40*spr_dir
        if instance_position(new_x, y + 22, asset_get("par_block")) || instance_position(new_x, y + 22, asset_get("par_jumpthrough")) {
            create_hitbox(AT_DSTRONG, 4, new_x, y)
            destroyed = true
            var hfx = spawn_hit_fx(new_x, y, player_id.vfx_electric_ground)
                hfx.spr_dir = -spr_dir
        }
    }
}
    

//laser
/*
if attack == AT_FSPECIAL {
    x = player_id.laser_end_pos[0]
    y = player_id.laser_end_pos[1]
}
*/