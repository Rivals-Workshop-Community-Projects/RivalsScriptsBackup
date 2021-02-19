//post-draw

//draw_debug_text( x, y - 60, string(window));

//draw_debug_text( x, y - 40, string(launch_now));

//draw_debug_text( x, y - 20, string(move_cooldown[AT_USPECIAL]));

//draw_debug_text( x, y - 1, string(barrel.barrel_hitbox.hit_effect));


shader_start();

if (runeL || has_rune("L")){
	if (state == PS_IDLE){
		draw_sprite_ext(sprite_get("idle"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_WALK){
		draw_sprite_ext(sprite_get("walk"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_WALK_TURN || state == PS_DASH_TURN){
		draw_sprite_ext(sprite_get("walkturn"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_DASH_START){
		draw_sprite_ext(sprite_get("dashstart"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_DASH_STOP){
		draw_sprite_ext(sprite_get("dashstop"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_DASH){
		draw_sprite_ext(sprite_get("dash"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_IDLE_AIR){
		draw_sprite_ext(sprite_get("jump"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_CROUCH){
		draw_sprite_ext(sprite_get("crouch"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_JUMPSQUAT){
		draw_sprite_ext(sprite_get("jumpstart"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_FIRST_JUMP){
		draw_sprite_ext(sprite_get("jump"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP){
		draw_sprite_ext(sprite_get("doublejump"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_LAND){
		draw_sprite_ext(sprite_get("land"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_WAVELAND){
		draw_sprite_ext(sprite_get("waveland"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD 
	|| state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD){
		draw_sprite_ext(sprite_get("airdodge"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, .75);
	}
	if (state == PS_PARRY || state == PS_PARRY_START){
		draw_sprite_ext(sprite_get("parry"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_TECH_GROUND || state == PS_WALL_TECH){
		draw_sprite_ext(sprite_get("tech"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_LANDING_LAG  || state == PS_PRATLAND){
		draw_sprite_ext(sprite_get("landinglag"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_HITSTUN || state == PS_WRAPPED || state == PS_FROZEN){
		draw_sprite_ext(sprite_get("hurt"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_PRATFALL || state == PS_TUMBLE || state == PS_HITSTUN_LAND){
		draw_sprite_ext(sprite_get("pratfall"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_SPAWN){
		draw_sprite_ext(sprite_get("intro"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_RESPAWN){
		draw_sprite_ext(sprite_get("respawn"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
	}
	if (state == PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		if (attack == AT_JAB){
			draw_sprite_ext(sprite_get("jab"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_FTILT){
			draw_sprite_ext(sprite_get("ftilt"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_UTILT){
			draw_sprite_ext(sprite_get("utilt"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_DTILT){
			draw_sprite_ext(sprite_get("dtilt"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_FSTRONG){
			draw_sprite_ext(sprite_get("fstrong"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_USTRONG){
			draw_sprite_ext(sprite_get("ustrong"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_DSTRONG){
			draw_sprite_ext(sprite_get("dstrong"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_DSPECIAL){
			draw_sprite_ext(sprite_get("dspecial"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_TAUNT){
			draw_sprite_ext(sprite_get("taunt"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
	}
	if (state != PS_ATTACK_GROUND && state == PS_ATTACK_AIR){
		if (attack == AT_NAIR){
			draw_sprite_ext(sprite_get("nair"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}	
		if (attack == AT_FAIR){
			draw_sprite_ext(sprite_get("fair"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_BAIR){
			draw_sprite_ext(sprite_get("bair"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_UAIR){
			draw_sprite_ext(sprite_get("uair"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_DAIR){
			draw_sprite_ext(sprite_get("dair"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
	}
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		if (attack == AT_DATTACK){
			draw_sprite_ext(sprite_get("dattack"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_NSPECIAL){
			draw_sprite_ext(sprite_get("nspecial"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_FSPECIAL){
			draw_sprite_ext(sprite_get("fspecial"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_DSPECIAL_AIR){
			draw_sprite_ext(sprite_get("dspecial_air"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
		if (attack == AT_USPECIAL){
			draw_sprite_ext(sprite_get("uspecial"), image_index, x, y-2, 2*spr_dir, 2, 0, c_white, 1);
		}
	}
	
}

shader_end();

if (attack == AT_USPECIAL && window == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    if ((up_down || joy_pad_idle) && !right_down && !left_down){
		draw_sprite_ext(sprite_get("barrel_arrow"), 0, x-10, y-120, 1, 1, 0, c_white, 1);
	}
	if (up_down && right_down){
		draw_sprite_ext(sprite_get("barrel_arrow"), 0, x+50*spr_dir, y-100, 1, 1, -45, c_white, 1);
	}
	if (right_down && !up_down && !down_down){
		draw_sprite_ext(sprite_get("barrel_arrow"), 0, x+80*spr_dir, y-60, 1, 1, -90, c_white, 1);
	}
	if (down_down && right_down && !left_down){
		draw_sprite_ext(sprite_get("barrel_arrow"), 0, x+70*spr_dir, y+10, 1, 1, -135, c_white, 1);
	}
	if (down_down && !right_down && !left_down){
		draw_sprite_ext(sprite_get("barrel_arrow"), 0, x+10, y+50, 1, 1, 180, c_white, 1);
	}
	if (down_down && !right_down && left_down){
		draw_sprite_ext(sprite_get("barrel_arrow"), 0, x+50*spr_dir, y+10, 1, 1, 135, c_white, 1);
	}
	if (left_down && !up_down && !down_down){
		draw_sprite_ext(sprite_get("barrel_arrow"), 0, x+60*spr_dir, y-30, 1, 1, 90, c_white, 1);
	}
	if (up_down && left_down){
		draw_sprite_ext(sprite_get("barrel_arrow"), 0, x+50*spr_dir, y-100, 1, 1, 45, c_white, 1);
	}
	
}

if (attack == AT_USPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	if (barrel.state = 0){
		draw_sprite_ext(sprite_get("barrel"), 0, barrel.x, barrel.y, 1, 1, 0, c_white, 1);
	}
	if (barrel.state = 1){
		draw_sprite_ext(sprite_get("barrel"), 1, barrel.x, barrel.y, 1, 1, 0, c_white, 1);
	}
	if (barrel.state = 2){
		draw_sprite_ext(sprite_get("barrel"), 2, barrel.x, barrel.y, 1, 1, 0, c_white, 1);
	}
	if (barrel.state = 3){
		draw_sprite_ext(sprite_get("barrel"), 3, barrel.x, barrel.y, 1, 1, 0, c_white, 1);
	}
	if (barrel.state = 4){
		draw_sprite_ext(sprite_get("barrel"), 4, barrel.x, barrel.y, 1, 1, 0, c_white, 1);
	}
	if (barrel.state = 5){
		draw_sprite_ext(sprite_get("barrel"), 5, barrel.x, barrel.y, 1, 1, 0, c_white, 1);
	}
	if (barrel.state = 6){
		draw_sprite_ext(sprite_get("barrel"), 6, barrel.x, barrel.y, 1, 1, 0, c_white, 1);
	}
	if (barrel.state = 7){
		draw_sprite_ext(sprite_get("barrel"), 7, barrel.x, barrel.y, 1, 1, 0, c_white, 1);
	}
}