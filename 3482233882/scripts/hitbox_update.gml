//

// Up Special
if (attack == AT_USPECIAL) {
	if hbox_num == 1 {
		proj_angle = 10*hitbox_timer
	}
	if player_id.state_cat == SC_HITSTUN {
		hitbox_timer = 999
		print('gone')
	}
    if (hbox_num == 1 && hitbox_timer == length && !was_parried) {
        spawn_hit_fx(x, y - 30, player_id.vfx_explodey_big);
        //spawn_hit_fx(x, y, player_id.vfx_explode_big);
        sound_play(sound_get("grenade1"));
        
        var _x = player_id.x;
        var _y = player_id.y - 30;
        var recover_dir = point_direction(x, y, _x, _y);
        
        with player_id {
        	var sp = 11 + 1*item_grid[29][4];
            hsp = lengthdir_x(sp, recover_dir);
            vsp = lengthdir_y(sp, recover_dir);
            old_hsp = hsp;
            old_vsp = vsp;
            
            var atk = AT_USPECIAL;
            var num = 2;
            var hbox = create_hitbox(atk, num, other.x, other.y - 30);
            // For script order reasons, tags on this one need to happen manually.
            hbox.cmd_is_critical = get_hitbox_value(atk, num, 80);
			hbox.cmd_strong_finisher = get_hitbox_value(atk, num, 82);
			hbox.cmd_is_explosive = get_hitbox_value(atk, num, 83);
			hbox.cmd_is_gunshot = get_hitbox_value(atk, num, 84);
			hbox.cmd_behemoth_applied = (item_grid[43][4] > 0) && hbox.cmd_is_gunshot;
        }
    }
}

// Homing missiles
if (attack == AT_EXTRA_1) {
    
    // Ceremonial daggers (delayed homing, manual hitpause)
    if (hbox_num == 7) {
        if (bashed || target_obj.state == PS_DEAD || target_obj.state == PS_RESPAWN) homing = false;
        if (hitbox_timer < delay) {
            hit_priority = 0;
            homing = true;
            depth = player_id.depth+1;
            draw_xscale = 1;
            var sp = max(9-hitbox_timer, 2);
            hsp = lengthdir_x(sp, proj_angle);
            vsp = lengthdir_y(sp, proj_angle);
            if (hitbox_timer+2 == delay) {
                sound_play(sound_get("cm_dagger_swing"));
                spawn_hit_fx(x, y, HFX_CLA_PLASMA_PLUS);
            }
        } else if (homing) {
            hit_priority = 1;
            var target_y = target_obj.y - floor(target_obj.char_height/2);
            var dist = point_distance(x, y, target_obj.x, target_y);
            var sp = min(20, dist);
            proj_angle = point_direction(x, y, target_obj.x, target_y);
            hsp = lengthdir_x(sp, proj_angle);
            vsp = lengthdir_y(sp, proj_angle);
            if (dist <= 30) homing = false;
        } else {
            if (place_meeting(x, y, asset_get("par_block"))) {
                destroyed_next = true;
                spawn_hit_fx(x, y, hit_effect);
                sound_play(sound_effect);
            }
        }
    }
    
    // ATG (extremely basic, but must have its stats set externally when spawned)
    // Also Plasma Shrimp!
    if (hbox_num == 8 || hbox_num == 12) {
        draw_xscale = 1;
        if (bashed || target_obj.state == PS_DEAD || target_obj.state == PS_RESPAWN) homing = false;
        if (homing) {
            var target_y = target_obj.y - floor(target_obj.char_height/2);
            var dist = point_distance(x, y, target_obj.x, target_y);
            var sp = min(20, dist);
            proj_angle = point_direction(x, y, target_obj.x, target_y);
            hsp = lengthdir_x(sp, proj_angle);
            vsp = lengthdir_y(sp, proj_angle);
            if (dist <= 30) homing = false;
        } else {
            if (place_meeting(x, y, asset_get("par_block"))) {
                destroyed_next = true;
                spawn_hit_fx(x, y, hit_effect);
                sound_play(sound_effect);
            }
        }
    }
    
    // Fireworks (delayed homing, capped rotational speed)
    if (hbox_num == 9) {
        draw_xscale = 1;
        hit_priority = (hitbox_timer >= 5);
        if (hitbox_timer == 1) {
            vsp = -16;
            delay = 6 + random_func(3, 10, true);
        }
        if (bashed || target_obj == noone || target_obj.state == PS_DEAD || target_obj.state == PS_RESPAWN) homing = false;
        if (homing && hitbox_timer >= delay) {
            var target_y = target_obj.y - floor(target_obj.char_height/2);
            var sp = 16;
            var dir = point_direction(x, y, target_obj.x, target_y);
            var diff = angle_difference(proj_angle, dir);
            if (diff >= 0) proj_angle -= min(diff, 6+(hitbox_timer/10));
            else proj_angle -= max(diff, -6-(hitbox_timer/10));
            
            hsp = lengthdir_x(sp, proj_angle);
            vsp = lengthdir_y(sp, proj_angle);
            
            if (hitbox_timer >= delay + 10 && point_distance(x, y, target_obj.x, target_y) < 40) {
                var incidence_angle = abs(angle_difference(dir, proj_angle))
                if (85 <= incidence_angle && incidence_angle <= 95) homing = false;
            }
        } else if (!homing) {
            if (place_meeting(x, y, asset_get("par_block"))) {
                destroyed_next = true;
                spawn_hit_fx(x, y, hit_effect);
                sound_play(sound_effect);
            }
        }
    }
    
}