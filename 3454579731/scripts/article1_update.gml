//article1_update
if (hsp == 0){
	knocked = false;
}

if (free && vsp < 10){
	vsp ++;
}

if (hsp != 0 && knocked && !free){
	if (hsp > 0){
		hsp -= 0.5;
	}
	if (hsp < 0){
		hsp += 0.5;
	}
}
var big_cannonball = player_id.cannonball;
if (state == 0){
    busy = true;
    image_index += 0.2;
    cannon_index = image_index;
    if (image_index >= 2){
        cannon_y = 8;
    }
    if (image_index >= 5){
        image_index = 0;
        cannon_index = 0;
        state = 1;
        state_timer = 0;
        spawned = true;
    }
}

if (state == 1){
    image_index = 0;
    busy = false;
    sprite_index = sprite_get("cannonstand");
    cannonsprite = sprite_get("cannon");
    cannon_angle = lerp (cannon_angle, point_direction(x, y, get_closest_enemy().x, get_closest_enemy().y) - 90*spr_dir, 0.3);
    if (state_timer >= 90){
        if (shots < 3){
        state = 2;
        state_timer = 0;
        } else {
            should_die = true;
        }
    }
}

if (state == 2){
    busy = true;
    cannonsprite = sprite_get("cannonfire");
    cannon_angle = lerp (cannon_angle, point_direction(x, y, get_closest_enemy().x, get_closest_enemy().y) - 90*spr_dir, 0.3);
    cannon_index += 0.2;
    if (cannon_index >= 3 && !fired){
        var cannonball = create_hitbox(AT_DSPECIAL, 1, x, y - 12 - cannon_y);
		cannonball.hsp = lengthdir_x(6, point_direction(x,y,get_closest_enemy().x,get_closest_enemy().y));
        cannonball.vsp = lengthdir_y(6, point_direction(x,y,get_closest_enemy().x,get_closest_enemy().y));
        sound_play(asset_get("sfx_ell_dspecial_explosion_2"));
        shots += 1;
        fired = true;
    }
    if (cannon_index >= 6){
        state = 1;
        state_timer = 0;
        cannon_index = 0;
        fired = false;
    }
}



if (state == 3){
    busy = true;
    cannonsprite = sprite_get("cannonfire");
    cannon_angle = lerp (cannon_angle, point_direction(x, y, get_closest_enemy().x, get_closest_enemy().y) - 90*spr_dir, 0.3);
    cannon_index += 0.2;
    if (cannon_index >= 3 && !fired){
    	if (cannonball_stuck){
    	big_cannonball.state = 0;
    	big_cannonball.state_timer = 0;
		big_cannonball.hsp = lengthdir_x((big_cannonball.stored_charge*0.25 + 2), point_direction(x,y,get_closest_enemy().x,get_closest_enemy().y));
        big_cannonball.vsp = lengthdir_y((big_cannonball.stored_charge*0.25 + 2), point_direction(x,y,get_closest_enemy().x,get_closest_enemy().y));
        big_cannonball.active_time = big_cannonball.stored_charge*1.2;
        big_cannonball.double_fired = true;
        big_cannonball.image_alpha = 1;
    	}
    	if (player_stuck){
    	player_id.state = PS_IDLE_AIR;
    	player_id.floating = 0;
		player_id.has_mech = true;
		player_id.djumps = 0;
		player_id.has_airdodge = true;
        player_id.in_cannon = false;
		player_id.hsp = lengthdir_x((12), point_direction(x,y,get_closest_enemy().x,get_closest_enemy().y - 32));
        player_id.vsp = lengthdir_y((12), point_direction(x,y,get_closest_enemy().x,get_closest_enemy().y - 32));
        player_stuck = false;
    	}
        sound_play(asset_get("sfx_ell_dspecial_explosion_2"));
        shots += 1;
        fired = true;
    }
    if (cannon_index >= 6){
        fucking_dies = true;
    }
}

if (fucking_dies){
    spawn_hit_fx(x, y - 20, 260);
    sound_play(asset_get("sfx_ell_explosion_medium"));
    player_id.cannon_cooldown = 60;
    should_die = true;
}

if (x > room_width or x < 0 or y > room_height + 200){
	should_die = true;
}


state_timer ++;
exist_timer ++;

if (should_die){
    if (!fucking_dies){
    spawn_hit_fx(x, y - 20, 144);
    }
    instance_destroy();
    exit;
}


#define get_closest_enemy()
{
    if (instance_number(oPlayer)) > 1 {
        var cur_dist = 9999;
        var cur_plr = noone;
        with (oPlayer) if id != other.player_id {
    
            if (cur_dist > point_distance(x,y,other.x,other.y)) 
            {
                cur_dist = point_distance(x,y,other.x,other.y);
                cur_plr = id;
            }
    
        }
        return cur_plr;
    } else return player_id;
}