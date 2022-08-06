//Mario Karting yourself

if (attack == AT_FSTRONG)  {

	if (hitbox_timer == 1){
		sound_play (sound_get("Shell"));
		orig_hsp = hsp;
	}

	if (x < 0 || x > room_width || y > room_height || y < 0){
		sound_stop (sound_get("Shell"));
		destroyed = true;
	}



	//if (hitbox_timer == 11){
	//	can_hit_self = 1;
	//}

	if (player == orig_player){
		if ((orig_hsp > 0 && hsp < 0) || (orig_hsp < 0 && hsp > 0)){
			player = 0;
		}
	}

	
	if (was_parried){
		was_parried = false;

		if (spr_dir = 1){
			hsp = 15;
		} else hsp = -15;
	}

	if (free) {
		damage = 5;
		kb_value = 3;
	} else {
		damage = 9;
		kb_value = 6;
	}
}

//Ustrong bounce
//Ustrong spr_dir;


if (attack == AT_USTRONG)  {

	if (hitbox_timer == 1){
	red_bomb = sprite_get("bob_omb_red");
	}

	if (hbox_num == 1){
		if (!free){
			sprite_index = red_bomb;
			if (bounces = 1){
				grav += 0.6;
				player_id.bomb_bounced = 1;
				if (grav < 2.5) {
					vsp = (-12 + grav);
					sound_play (sound_get("BobOmbBounce"));
				} else {
					if (spr_dir == 1){
						player_id.bomb_spr_dir = 1;
					} else player_id.bomb_spr_dir = -1;
					bounces = 0;
					player_id.start_explosion = true;
					player_id.bob_omb_x = x;
					player_id.bob_omb_y = y;
					destroyed = true;
				}
			} 
		}

		if (has_hit || (place_meeting(x,y,asset_get("pHitBox")))){
			if (spr_dir == 1){
				player_id.bomb_spr_dir = 1;
			} else player_id.bomb_spr_dir = -1;
			player_id.bob_omb_x = x;
			player_id.bob_omb_y = y;
			player_id.start_explosion = true;
			sound_stop (sound_get("BananaThrow"));
			destroyed = true;
		}
	}
	if (hbox_num == 2){
		can_hit_self = 1;
		if (player_id.bomb_bounced == 1){
			hit_flipper = 3;
		}
	}
}

//Uair cooldown


//fireball speed

if (attack == AT_NSPECIAL_AIR || attack == AT_USPECIAL_2){
	if (hitbox_timer == 1){
		if (hsp >= 0 && hsp < 8){
			hsp = 8;
		} else if (hsp < 0 && hsp > -8){
			hsp = -8;
		} else hsp = spr_dir*8 + player_id.hsp;
	}

}

//bananananana

if (attack == AT_DSPECIAL){

	var banana_thrower = player_id
	//I used a local variable because those can be accessed even inside a with inside another with. Nice

	with(pHitBox){
		if (place_meeting(x,y,other) && hit_priority != 0 && damage > 0 && self != other){
			sound_play(asset_get("sfx_leaves"));
		
			with(asset_get("obj_article1")){
				if (player_id == banana_thrower){
					state = 2;
				}
			}

			destroyed = true;
		}
	}
}

//Spiny Shell

if (attack == AT_FSTRONG_2){

	if (hbox_num == 1){


		if (hitbox_timer == 1){
			y_increment = 0;
			can_hit_self = false;
		}
	
		through_platforms = 3;

		if (hitbox_timer > 10){
			//can_hit_self = 1;
		}

		if (hitbox_timer mod 30 == 0){
			for (var i = 0; i <= 20; i++){
				can_hit[i] = 1;
			}
		}

		//behavior far

		if (hitbox_timer < 90){

			if (((x - player_id.winner_x) > 0)){
				if (hsp >= -13){
				hsp = hsp-0.8;
				} else hsp = -13;
			} else {
				if (hsp <= 13){
				hsp = hsp+0.8;
				} else hsp = 13;
			}

			if (((y - player_id.winner_y) > 0)){
				if (vsp >= -3){
				vsp = vsp-1;
				} else vsp = -6;
			} else {
				if (vsp <= 3){
				vsp = vsp+1;
				} else vsp = 6;
			}
	
		} else if (hitbox_timer < 210) {

			if (((x - player_id.winner_x) > 0)){
				if (hsp >= -5){
				hsp = hsp-0.4;
				} else hsp = -5;
			} else {
				if (hsp <= 5){
				hsp = hsp+0.4;
				} else hsp = 5;
			}

			if (((y - player_id.winner_y) > 0)){
				if (vsp >= -2){
				vsp = vsp-0.2;
				} else vsp = -2;
			} else {
				if (vsp <= 2){
				vsp = vsp+0.2;
				} else vsp = 2;
			}
	
		} else if (hitbox_timer < 240) {
	
			if (((x - player_id.winner_x) > 0)){
				if (hsp >= -2){
				hsp = hsp-0.3;
				} else hsp = -2;
			} else {
				if (hsp <= 2){
				hsp = hsp+0.3;
				} else hsp = 2;
			}

			y_increment = y_increment+0.2;
			y = y - y_increment;
			grounds = 0;
			has_hit = 0;
		} else {
			hsp = 0;
			vsp = 18;
			player_id.blue_x = x;
			player_id.blue_y = y;

			if (has_hit || !free){
				player_id.start_blue_explosion = true;
				player_id.stop_checking = true;
				destroyed = true;
			}
		}

	}

	if (hbox_num == 2){
		can_hit_self = 1;
	}
}

//starman

if (attack == 49){
	x = player_id.x + 4;
	y = player_id.y - 28;
}