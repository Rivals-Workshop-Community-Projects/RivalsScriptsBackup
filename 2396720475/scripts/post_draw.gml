// post_draw.gml
// Draws sprites in front of the player

// TAG Crown
if (SecretColor == 3){

	if (state == PS_IDLE || state == PS_IDLE_AIR  ||
	state == PS_FIRST_JUMP || state == PS_WALL_JUMP ||
	state == PS_WALK || state == PS_WALK_TURN || state == PS_DASH_START ||
	state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_TURN ||
	(state == PS_PARRY && window > 1)
	){
		if (spr_dir == -1){
			draw_sprite_ext(sprite_get("TAG_crown"), 0, x - 6, y + 6, 1, 1, 0, c_white, 1);
		}
		
		if (spr_dir == 1){
			draw_sprite_ext(sprite_get("TAG_crown"), 0, x + 6, y + 6, -1, 1, 0, c_white, 1);	
		}
	}
	
	if (state == PS_JUMPSQUAT || state == PS_LAND || state == PS_WAVELAND || 
	state == PS_CROUCH || state == PS_LANDING_LAG || 
	(attack == AT_NSPECIAL && (window == 2 || (window == 1 && window_timer >= 5)) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
	){
		if (spr_dir == -1){
			draw_sprite_ext(sprite_get("TAG_crown"), 0, x - 8, y + 14, 1, 1, 0, c_white, 1);
		}
		
		if (spr_dir == 1){
			draw_sprite_ext(sprite_get("TAG_crown"), 0, x + 8, y + 14, -1, 1, 0, c_white, 1);	
		}
	}
	
	if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && 
	(attack == AT_USPECIAL || attack == AT_DTILT || attack == AT_FTILT ||
	attack == AT_FSPECIAL || attack == AT_UAIR || attack == AT_DAIR ||
	attack == AT_UTILT || (attack == AT_DSTRONG && (window <= 2 || window == 7 || window == 8)) || 
	(attack == AT_NSPECIAL && ((window == 1 && window_timer < 5) || window >= 3)) ||
	attack == AT_FSTRONG || (attack == AT_USTRONG && window <= 2) || (attack == AT_NAIR && window >= 6) ||
	(attack == AT_DSPECIAL && (window == 1 || window == 3)) || attack == AT_TAUNT || attack == AT_EXTRA_1 ||
	(attack == AT_DATTACK && window == 1)
	)){
		if (spr_dir == -1){
			draw_sprite_ext(sprite_get("TAG_crown"), 0, x - 6, y + 6, 1, 1, 0, c_white, 1);
		}
		
		if (spr_dir == 1){
			draw_sprite_ext(sprite_get("TAG_crown"), 0, x + 6, y + 6, -1, 1, 0, c_white, 1);	
		}
	}
	
	if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_BAIR || 
	attack == AT_FAIR || (attack == AT_DATTACK && window > 1) || (attack == AT_NAIR && window < 6) ||
	(attack == AT_DSTRONG && (window == 3 || window == 4 || window == 6 || window == 5))
	)){
		if (spr_dir == 1){
			draw_sprite_ext(sprite_get("TAG_crown"), 0, x - 6, y + 6, 1, 1, 0, c_white, 1);
		}
		
		if (spr_dir == -1){
			draw_sprite_ext(sprite_get("TAG_crown"), 0, x + 6, y + 6, -1, 1, 0, c_white, 1);	
		}
	
	}
}

/////////////////////////// Stuff that actually matters for gameplay

if (instance_exists(Box)){
	if (Box.flag && get_player_color(player) == 12){
		draw_sprite_ext(sprite_get("flags"), 0, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
	if (Box.flag && get_player_color(player) == 10){
		draw_sprite_ext(sprite_get("flags"), 1, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
	if (Box.flag && get_player_color(player) == 1 && current_weekday == 6){
		draw_sprite_ext(sprite_get("flags"), 2, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
	if (Box.flag && SecretColor == 2){
		draw_sprite_ext(sprite_get("flags"), 3, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
	if (Box.flag && SecretColor == 3){
		draw_sprite_ext(sprite_get("flags"), 4, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
	if (Box.flag && get_player_color(player) == 14){
		draw_sprite_ext(sprite_get("flags"), 5, Box.x, Box.y, 1, 1, 0, c_white, 1);
	}	
}

if (instance_exists(movingbox)){
	if (movingbox.flag && get_player_color(player) == 12){
		draw_sprite_ext(sprite_get("flags"), 0, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}	
	if (movingbox.flag && get_player_color(player) == 10){
		draw_sprite_ext(sprite_get("flags"), 1, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}	
	if (movingbox.flag && get_player_color(player) == 1 && current_weekday == 6){
		draw_sprite_ext(sprite_get("flags"), 2, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}	
	if (movingbox.flag && SecretColor == 2){
		draw_sprite_ext(sprite_get("flags"), 3, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}	
	if (movingbox.flag && SecretColor == 3){
		draw_sprite_ext(sprite_get("flags"), 4, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}		
	if (movingbox.flag && get_player_color(player) == 14){
		draw_sprite_ext(sprite_get("flags"), 5, movingbox.x, movingbox.y, 1, 1, 0, c_white, 1);
	}	
}

if (flag_destroy){
	if (get_player_color(player) == 12 || get_player_color(player) == 14 || get_player_color(player) == 10 || (get_player_color(player) == 1 && current_weekday == 6) || SecretColor == 2 || SecretColor == 3){

		draw_sprite_ext(sprite_get("flag_fall"), flag_num, Box_temp_x, Box_temp_y, 1, 1, 0, c_white, 1);
		flag_num += .20;
		
		if (flag_num == 6){
			flag_num = 1;
			flag_destroy = false;
		}
	}
}

if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window <= 2){
shader_start();
	
	if (get_player_color(player) != 14){
		needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x, y - 15, 1, 1, needle_angle, c_white, 1);	
	}
	else {
		needle_sprite = draw_sprite_ext(sprite_get("slime_needle"), -1, x, y - 15, 1, 1, needle_angle, c_white, 1);		
	}
shader_end();
}

///////////////////////////////////////////// Some code junk

/*
with (movingbox){
	draw_debug_text(x, y - 40, "vsp: " + string(vsp));
	draw_debug_text(x, y - 60, "hsp: " + string(hsp));
}


if (instance_exists(movingbox)){
	draw_debug_text(movingbox.x, movingbox.y, ".");
}
	
if (instance_exists(Box)){
	draw_debug_text(Box.x, Box.y, ".");
}
*/

/*	
with (needleplatform_solid){

	draw_debug_text(x, y - 40, "state_timer: " + string(state_timer));
	draw_debug_text(x, y - 60, "state: " + string(state));
}
*/

//draw_debug_text(x, y - 80, "VSP: " + string(vsp));
//draw_debug_text(temp_x + 300, temp_y - 80, "y pos: " + string(y));

//draw_debug_text(temp_x + 200, temp_y - 80, "usedUspecial1: " + string(usedUspecial ));
//draw_debug_text(temp_x + 200, temp_y - 100, "can_pull: " + string(can_pull));
//draw_debug_text(temp_x + 200, temp_y - 120, "needle_land: " + string(needleland));

/*
if (instance_exists(movingbox)){
	with (movingbox){
		draw_debug_text(other.temp_x + 300, other.temp_y - 80, "Box State: " + string(state));
		draw_debug_text(other.temp_x + 300, other.temp_y - 100, "Hit Delay: " + string(hit_delay));
		draw_debug_text(other.temp_x + 300, other.temp_y - 60, "Health: " + string(other.box_health));
		draw_debug_text(other.temp_x + 300, other.temp_y - 140, "KB_angle " + string(kb_angle));
		draw_debug_text(other.temp_x + 300, other.temp_y - 160, "Hit");
		draw_debug_text(other.temp_x + 300, other.temp_y - 200, "Direction " + string(spr_dir));
	}

		if (!free){
			draw_debug_text(other.temp_x + 300, other.temp_y - 120, "Grounded");
		}	
}

if (instance_exists(Box)){
	with (Box){
		draw_debug_text(other.temp_x + 300, other.temp_y - 80, "Box State: " + string(state));
		draw_debug_text(other.temp_x + 300, other.temp_y - 100, "Hit Delay: " + string(hit_delay));
		draw_debug_text(other.temp_x + 300, other.temp_y - 120, "VSP: " + string(vsp));
		draw_debug_text(other.temp_x + 300, other.temp_y - 60, "Health: " + string(other.box_health));
		draw_debug_text(other.temp_x + 300, other.temp_y - 160, "Box");
		if (!free){
			draw_debug_text(other.temp_x + 300, other.temp_y - 140, "Grounded");
		}
	}
}

if (instance_exists(needleplatform_solid)){
	with (needleplatform_solid){
		draw_debug_text(other.temp_x + 500, other.temp_y - 80, "Needle State: " + string(state));
		draw_debug_text(other.temp_x + 500, other.temp_y - 100, "Needle Timer: " + string(state_timer));
		draw_debug_text(other.temp_x + 500, other.temp_y - 120, "Needle Angle: " + string(image_angle));
	}
}
*/
