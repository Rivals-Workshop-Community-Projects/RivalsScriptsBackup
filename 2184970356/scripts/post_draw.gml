//post_draw

if (player_buff){
	draw_debug_text(x - 25, y - char_height - 25, "SPD");
	draw_sprite(sprite_get("buff"), get_gameplay_time() / 4, x + 10, y - char_height);
}


shader_start();

if (attack == AT_NSPECIAL_2 && window == 2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	draw_sprite(sprite_get("snore"), (window_timer / 3), x, y);
//	draw_sprite(sprite_get("snore"), (window_timer / 2), x + 30, y);
//	draw_sprite(sprite_get("snore"), (window_timer / 2), x - 16, y);
}

if (attack == AT_FTILT && state == PS_ATTACK_GROUND){
	if (state_timer == 0){
		attack_anim_timer = 0;	
	}

	if (window == 1 || window == 2){
		attack_anim_timer = attack_anim_timer + 1;
	}

	if (window == 1 || window == 2){
		if (spr_dir == 1 && attack == AT_FTILT){
			draw_sprite(sprite_get("ftiltfront_fx"), attack_anim_timer / 3.5, x, y);
		}
		if (spr_dir == -1 && attack == AT_FTILT){
			draw_sprite(sprite_get("ftiltback_fx"), attack_anim_timer / 3.5, x, y);
		}
	}
	
}

if ((attack == AT_USPECIAL || attack == AT_USPECIAL_2) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	if (window == 1){
		particle_x = x;
		particle_y = y;
	}
	
	if (state_timer < 18){
		if ((window == 1 && window_timer > 1) || window == 2){
			attack_anim_timer = attack_anim_timer + 1;
		}
	}
	
	if (window == 1 || window == 2){
		if (spr_dir == 1 && (attack == AT_USPECIAL || attack == AT_USPECIAL_2)){
			draw_sprite(sprite_get("uspecialfront_fx"), attack_anim_timer / 5, particle_x, particle_y);
		}
		if (spr_dir == -1 && (attack == AT_USPECIAL || attack == AT_USPECIAL_2)){
			draw_sprite(sprite_get("uspecialfrontbackward_fx"), attack_anim_timer / 5, particle_x, particle_y);
		}
	}
}

if (attack == AT_DTILT && state == PS_ATTACK_GROUND){
	if (window == 1){
		attack_anim_timer = 0;	
	}

	if (window == 3 || window == 2){
		attack_anim_timer = attack_anim_timer + 1;
	}	

	if ((window == 3 || window == 2) && attack_anim_timer < 27){
		if (spr_dir == 1 && attack == AT_DTILT){
			draw_sprite(sprite_get("dtiltfront_fx"), attack_anim_timer / 2.5, x, y);
		}
		if (spr_dir == -1 && attack == AT_DTILT){
			draw_sprite(sprite_get("dtiltback_fx"), attack_anim_timer / 2.5, x, y);
		}
	}
}

if (attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
	if (window == 2){
		attack_anim_timer = attack_anim_timer + 1;
	}

	if (window == 2){
		if (spr_dir == 1 && attack == AT_FSTRONG){
			draw_sprite(sprite_get("fstrongfrontforward_fx"), attack_anim_timer / 5, x, y);
		}
		if (spr_dir == -1 && attack == AT_FSTRONG){
			draw_sprite(sprite_get("fstrongfrontbackward_fx"), attack_anim_timer / 5, x, y);
		}
	}
	
}

if (attack == AT_JAB && state == PS_ATTACK_GROUND){
	if (window == 1 || window == 3 || window == 5){
		attack_anim_timer = 0;
	}	
	
	if (window == 2 || window == 4 || window == 6){
		attack_anim_timer = attack_anim_timer + 1;
	}

	if (window == 2 && attack_anim_timer < 12){
		if (spr_dir == 1 && attack == AT_JAB){
			draw_sprite(sprite_get("jab_fx"), attack_anim_timer / 2, x, y);
		}
		if (spr_dir == -1 && attack == AT_JAB){
			draw_sprite(sprite_get("jab2_fx"), attack_anim_timer / 2, x, y);
		}
	}
	
	if (window == 4 && attack_anim_timer < 12){
		if (spr_dir == 1 && attack == AT_JAB){
			draw_sprite(sprite_get("mediumjab_fx"), attack_anim_timer / 2, x, y);
		}
		if (spr_dir == -1 && attack == AT_JAB){
			draw_sprite(sprite_get("mediumjab2_fx"), attack_anim_timer / 2, x, y);
		}
	}
	
	if (window == 6 && attack_anim_timer < 12){
		if (spr_dir == 1 && attack == AT_JAB){
			draw_sprite(sprite_get("largejab_fx"), attack_anim_timer / 2.5, x, y);
		}
		if (spr_dir == -1 && attack == AT_JAB){
			draw_sprite(sprite_get("largejab2_fx"), attack_anim_timer / 2.5, x, y);
		}
	}
	
}

if (attack == AT_DSTRONG && state == PS_ATTACK_GROUND){
	if (window == 2 || window == 1){
		attack_anim_timer = attack_anim_timer + 1;
	}
	
	if (window == 3){
		attack_anim_timer_2 = attack_anim_timer_2 + 1;
	}

	if (window == 2 || window == 1){
		if (attack == AT_DSTRONG){
			draw_sprite_ext(sprite_get("dstrongshield_fx"), attack_anim_timer / 3, x, y, 1, 1, 0, -1, 0.7);
			draw_sprite_ext(sprite_get("dstrongsparkle_fx"), attack_anim_timer / 4, x, y, 1, 1, 0, -1, 1);
		}
	}

	if (window == 3){
		if (attack == AT_DSTRONG){
			draw_sprite_ext(sprite_get("dstrongactive_fx"), attack_anim_timer_2 / 6, x, y, 1, 1, 0, -1, 1);
		}
	}
}

if (move_cooldown[AT_DSTRONG] > 0){
//	if (window == 2){
//		if (spr_dir == 1 && attack == AT_FSTRONG){
			draw_sprite(sprite_get("shield_fx"), get_gameplay_time() * .2, x, y);
//		}
//		if (spr_dir == -1 && attack == AT_FSTRONG){
//			draw_sprite(sprite_get("fstrongfrontbackward_fx"), get_gameplay_time() * .5, x, y);
//		}
//	}
}

if (attack == AT_USTRONG && state == PS_ATTACK_GROUND){
	if (window == 2){
		attack_anim_timer = attack_anim_timer + 1;
	}

	if (window == 2){
		if (spr_dir == 1 && attack == AT_USTRONG){
			draw_sprite(sprite_get("ustrongfrontforward_fx"), attack_anim_timer / 5, x, y);
		}
		if (spr_dir == -1 && attack == AT_USTRONG){
			draw_sprite(sprite_get("ustrongfrontbackward_fx"), attack_anim_timer / 5, x, y);
		}
	}
	
	if (window == 3){
		attack_anim_timer_2 = attack_anim_timer_2 + 1;
	}

	if (window == 3){
		if (spr_dir == 1 && attack == AT_USTRONG){
			draw_sprite(sprite_get("ustronghitfront_fx"), attack_anim_timer_2 / 2.95, x, y);
		}
		if (spr_dir == -1 && attack == AT_USTRONG){
			draw_sprite(sprite_get("ustronghitfront_fx"), attack_anim_timer_2 / 2.95, x, y);
		}
	}
	
}

if ((attack == AT_FAIR || attack == AT_BAIR) && state == PS_ATTACK_AIR){
	if (window == 2 && window_timer == 0){
		particle_x = x;
		particle_y = y;
	}
	
	if (window == 2 && window_timer < 10){
		if ((spr_dir == 1 && attack == AT_FAIR) || (spr_dir == -1 && attack == AT_BAIR)){
			draw_sprite(sprite_get("fairfront_fx"), window_timer / 2, particle_x, particle_y);
		}
		if ((spr_dir == -1 && attack == AT_FAIR) || (spr_dir == 1 && attack == AT_BAIR)){
			draw_sprite(sprite_get("bairfront_fx"), window_timer / 2, particle_x, particle_y);
		}
	}
}

if (Substitute != noone){
	if (Substitute.sub_delay == 39){
		Subx = Substitute.x;
		Suby = Substitute.y;
	}

	if (Substitute.sub_delay > 0 && Substitute.sub_delay != 39){
		if (Substitute.hsp >= 0.5 && right_down && !left_down){
			draw_sprite(sprite_get("exc"), get_gameplay_time() / 3, Subx + 80, Suby + 8);
		}		
		if (Substitute.hsp >= 0.5 && !right_down && !left_down){
			draw_sprite(sprite_get("exc"), get_gameplay_time() / 3, Subx - 70, Suby + 8);
		}
		if (Substitute.hsp <= -0.5 && left_down && !right_down){
			draw_sprite(sprite_get("exc"), get_gameplay_time() / 3, Subx - 80, Suby + 8);
		}		
		if (Substitute.hsp <= -0.5 && !left_down && !right_down){
			draw_sprite(sprite_get("exc"), get_gameplay_time() / 3, Subx + 70, Suby + 8);
		}

		draw_sprite(sprite_get("exc"), get_gameplay_time() / 3, x, y);
	}
}

shader_end();
