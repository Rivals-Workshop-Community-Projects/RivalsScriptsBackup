if (attack == AT_USTRONG){ //Rocks flying up and away, also making sure they don't touch the air
    depth = 10;
		if (player_id.hitpause == true){ in_hitpause = true; } else { in_hitpause = false; }
    if (hitbox_timer < 5){ var new_rock_pos = random_func( 20, 100, true );
    	if (free == true && freemd == false){
    	x = player_id.x;
    	}
    }
    if (hitbox_timer >= 5 && hitbox_timer < 20){ sprite_index = sprite_get("ustrong_proj"); }
    if (hitbox_timer <= 10){
        	if (free == true && freemd == false){
            if (player_id.spr_dir == 1){ x = player_id.x - new_rock_pos; }
            if (player_id.spr_dir == -1) { x = player_id.x + new_rock_pos; }
        }
    }
    if (hitbox_timer >= 20){
        sprite_index = sprite_get("ustrong_proj2"); img_spd = 0.3;
        hsp = 0; vsp = -10; hit_priority = 5; image_xscale = 0.1; image_yscale = 0.4;
    }
    
    if (hitbox_timer == 3){
    	if !( (place_meeting( x, y+2, asset_get("par_block"))) || (place_meeting( x, y+2, asset_get("par_jumpthrough")))){
    		if (reposition == true){
    		}
		}
    }
}


if (attack == AT_DSTRONG){
	if (player_id.hitpause == true){ in_hitpause = true; } else { in_hitpause = false; }
	if (hbox_num < 3){
		if !((place_meeting( x, y+1, asset_get("par_block"))) || (place_meeting( x, y+1, asset_get("par_jumpthrough")))){ instance_destroy(); }
	}
}

if (attack == AT_UAIR){
	ignores_walls = true;
	through_platforms = 2;
	var crad_dir = point_direction(player_id.x-25 * spr_dir, player_id.y + player_id.char_height * 1, x, y);
	var crad_dist = point_distance(player_id.x-25 * spr_dir, player_id.y + player_id.char_height * 1, x, y);
    if (crad_dist < 130 && hitbox_timer < 10){
    vsp = -11;
	var fly_speed = 1;
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir + 180);
    }
	if (crad_dist > 160 && hitbox_timer >= 15){
	hitbox_timer = 15;
	var fly_speed = 2;
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 100, fly_speed);
	hsp += lengthdir_x(drag_speed, crad_dir + 180);
	vsp += lengthdir_y(drag_speed, crad_dir + 180);
    }

    if (crad_dist <= 160 && hitbox_timer > 14){
	var fly_speed = 1;
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir + 180);
	vsp = lengthdir_y(drag_speed, crad_dir + 180);
	if (place_meeting(x, y, player_id)){ instance_destroy(); }
    }
}

if (attack == AT_FAIR){
	ignores_walls = true;
	through_platforms = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 1, x, y);
    if (crad_dist < 90 && hitbox_timer < 10){
    hsp = 10 * spr_dir;
	var fly_speed = 1;
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	vsp = lengthdir_y(drag_speed, crad_dir + 180 * player_id.spr_dir);
    }
	if (crad_dist > 90){
	var fly_speed = 3;
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 100, fly_speed);
	hsp += lengthdir_x(drag_speed, crad_dir + 180);
	vsp += lengthdir_y(drag_speed, crad_dir + 180);
    }

    if (crad_dist <= 160 && hitbox_timer > 20){
	var fly_speed = 2;
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir + 180);
	vsp = lengthdir_y(drag_speed, crad_dir + 180);
	if (place_meeting(x, y, player_id)){ instance_destroy(); }
    }
}

if (attack == AT_DAIR){
	ignores_walls = true;
	through_platforms = 2;
	if (spr_dir == 1){ //Facing right
    	spr_dir = 1;
    if (hitbox_timer <= 15){
	var fly_speed = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir - 99);
	vsp = lengthdir_y(drag_speed, crad_dir - 99);
    }
    if (hitbox_timer > 15){
    //air_friction = 0;
	var fly_speed = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir - 101);
	vsp = lengthdir_y(drag_speed, crad_dir - 101);
	if (place_meeting(x, y, player_id)){ instance_destroy(); }
    }
    
    if (hitbox_timer <= 15){ //Facing left
	var fly_speed = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir - 99);
	vsp = lengthdir_y(drag_speed, crad_dir - 99);
    }
    if (hitbox_timer > 15){
    //air_friction = 0;
	var fly_speed = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir - 101);
	vsp = lengthdir_y(drag_speed, crad_dir - 101);
	if (place_meeting(x, y, player_id)){ instance_destroy(); }
    	}
	}
    
    if (spr_dir == -1){
    	spr_dir = -1;
    if (hitbox_timer <= 15){
	var fly_speed = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir + 99);
	vsp = lengthdir_y(drag_speed, crad_dir + 99);
    }
    if (hitbox_timer > 15){
    //air_friction = 0;
	var fly_speed = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir + 101);
	vsp = lengthdir_y(drag_speed, crad_dir + 101);
	if (place_meeting(x, y, player_id)){ instance_destroy(); }
    }
    
    if (hitbox_timer <= 15){
	var fly_speed = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir + 99);
	vsp = lengthdir_y(drag_speed, crad_dir + 99);
    }
    if (hitbox_timer > 15){
    //air_friction = 0;
	var fly_speed = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir + 101);
	vsp = lengthdir_y(drag_speed, crad_dir + 101);
	if (place_meeting(x, y, player_id)){ instance_destroy(); }
    	}
	}
	
}

if (attack == AT_BAIR){
	ignores_walls = true;
	through_platforms = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 1, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 1, x, y);
    if (crad_dist < 90 && hitbox_timer < 10){
    hsp = -10 * spr_dir;
	var fly_speed = 1;
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	//hsp = lengthdir_x(drag_speed, crad_dir + 310 * player_id.spr_dir);
	vsp = lengthdir_y(drag_speed, crad_dir + 180 * player_id.spr_dir);
    }
	if (crad_dist > 90){
	var fly_speed = 3;
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 100, fly_speed);
	hsp += lengthdir_x(drag_speed, crad_dir + 180);
	vsp += lengthdir_y(drag_speed, crad_dir + 180);
    }

    if (crad_dist <= 160 && hitbox_timer > 20){
	var fly_speed = 2;
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir + 180);
	vsp = lengthdir_y(drag_speed, crad_dir + 180);
	if (place_meeting(x, y, player_id)){ instance_destroy(); }
    }
}

/*
if (attack == AT_USPECIAL){
    if (hbox_num < 3){
    depth = 5;
    ignores_walls = true;
    }
    if (hbox_num == 3){ //The falling floor
    //depth = 35;
    ignores_walls = true;
    //spr_dir = player_id.spr_dir;
    	//if (player_id.spr_dir == -1){ image_xscale = -1; }
        if (player_id.window > 3 && player_id.state == PS_ATTACK_AIR && hitbox_timer > 28){ grav = .3; depth = 35; }
        //if (player_id.special_down){ hitbox_timer = 0; }
        if (player_id.state == PS_ATTACK_GROUND && hitbox_timer > 3){ instance_destroy(); }
        if (player_id.window == 3 && player_id.state == PS_ATTACK_AIR){ sprite_index = sprite_get("uspecial_floor"); hitbox_timer = 1; }
    }
}
*/

if (attack == AT_DSPECIAL){
	through_platforms = -90;
	//x = poison_id.x;
	//y = poison_id.y;
}

if (attack == AT_NSPECIAL){
	ignores_walls = true;
	through_platforms = 2;
	//player_id.buffup = true;
	player_id.move_cooldown[AT_NSPECIAL] = 5;
if (hitbox_timer < 10){ tornadod_downtime = 10; }
if (hitbox_timer >= 10){ sprite_index = sprite_get("nspecial_sandstorm_twister"); }
if (hitbox_timer >= 150){ tornadod_downtime++;}
if (hitbox_timer >= 250 || destroyed == true){ player_id.buffup = false; instance_destroy(); }
}

if (attack == AT_FSPECIAL){
		if (player_id.hitpause == true){ in_hitpause = true; } else { in_hitpause = false; }
	if (hitbox_timer > 4 && hitbox_timer < 10){
	image_xscale = 0.3;
	image_yscale = 0.3;
	}
	if (hitbox_timer == 14){ instance_destroy(); }
	if (hitbox_timer >= 15 && hitbox_timer < 20){
		image_index = 5;
		var hit_id = player_id.hit_player_obj;
		hit_id.x = x;
		hit_id.y = y + hit_id.char_height * 0.4;
		var fly_speed = 0.01;
		var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.5, x, y);
		var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.5, x, y);
		var drag_speed = max(sqrt(crad_dist) * fly_speed / 5, fly_speed);
		hsp += lengthdir_x(drag_speed, crad_dir + 180);
		vsp += lengthdir_y(drag_speed, crad_dir + 180);
	}
	if (hitbox_timer >= 20){
	var hit_id = player_id.hit_player_obj;
	hit_id.x = x;
	hit_id.y = y + hit_id.char_height * 0.4;
	image_index = 5;
	image_xscale = 0.05;
	image_yscale = 0.05;
	var fly_speed = 2;
	var crad_dir = point_direction(player_id.x, player_id.y - player_id.char_height * 0.5, x, y);
	var crad_dist = point_distance(player_id.x, player_id.y - player_id.char_height * 0.5, x, y);
	var drag_speed = max(sqrt(crad_dist) * fly_speed / 1, fly_speed);
	hsp = lengthdir_x(drag_speed, crad_dir + 180);
	vsp = lengthdir_y(drag_speed, crad_dir + 180);
	if (place_meeting(x, y, player_id)){
		var healplayer = take_damage( player, -1, -8 );
		player_id.white_flash_timer = 11;
		instance_destroy();
		}
	}
}

if (attack == AT_TAUNT){
	ignores_walls = true;
	through_platforms = 2;
	if !( (place_meeting( x, y+1, asset_get("par_block"))) || (place_meeting( x, y+1, asset_get("par_jumpthrough")))){
	player_id.spr_dir = -1 * spr_dir;
	}
}

switch(attack){
	case AT_DATTACK:
	//not a thing here, go back to attack update
	break;
	
	case AT_UAIR:
	if (player_id.buffup == true){
	damage = 12;
	kb_value = 6;
	hitpause = 4;
	}
	if (player_id.buffup == false){
	var prev_damage = damage;
	var prev_kb = kb_value;
	var prev_hitpause = hitpause;
	damage = prev_damage;
	kb_value = prev_kb;
	hitpause = prev_hitpause;
	}
	break;
	
	case AT_FAIR:
	if (player_id.buffup == true){
	damage = 12;
	kb_value = 6;
	hitpause = 4;
	}
	if (player_id.buffup == false){
	var prev_damage = damage;
	var prev_kb = kb_value;
	var prev_hitpause = hitpause;
	damage = prev_damage;
	kb_value = prev_kb;
	hitpause = prev_hitpause;
	}
	
	if (player_id.hitpause == true){ in_hitpause = true; } else { in_hitpause = false; }
	break;
	
	case AT_DAIR:
	if (player_id.buffup == true){
	damage = 12;
	kb_value = 6;
	hitpause = 4;
	}
	if (player_id.buffup == false){
	var prev_damage = damage;
	var prev_kb = kb_value;
	var prev_hitpause = hitpause;
	damage = prev_damage;
	kb_value = prev_kb;
	hitpause = prev_hitpause;
	}
	
	if (player_id.hitpause == true){ in_hitpause = true; } else { in_hitpause = false; }
	break;
	
	case AT_BAIR:
	if (player_id.buffup == true){
	damage = 12;
	kb_value = 6;
	hitpause = 4;
	}
	if (player_id.buffup == false){
	var prev_damage = damage;
	var prev_kb = kb_value;
	var prev_hitpause = hitpause;
	damage = prev_damage;
	kb_value = prev_kb;
	hitpause = prev_hitpause;
	}
	break;

	case AT_NAIR:
	//Doesn't work here
	break;

	case AT_DSTRONG:
	//Doesn't work here for some reason
	break;
	
	case AT_USTRONG:
	if (player_id.buffup == true){
	damage = 10;
	kb_value = 10;
	hitpause = 3;
	}
	if (player_id.buffup == false){
	var prev_damage = damage;
	var prev_kb = kb_value;
	var prev_hitpause = hitpause;
	damage = prev_damage;
	kb_value = prev_kb;
	hitpause = prev_hitpause;
	}
	break;
	
	case AT_FSTRONG:
	//Not a thing, go to attack update
	break;
}
//if (player_id.)