//hitbox_update.gml

if (attack == AT_NSPECIAL){
	image_alpha = 0.8
	hsp = 2.8 * spr_dir
	player_id.mario = burst_bubble_direction_hit_by_side_b
	if (burst_bubble_has_ability_star == true || hbox_num > 5){
		burst_bubble_has_ability_star = true
		if (hbox_num == 6 || sprite_index == sprite_get("nspecial_bubble_star_left")){
			hsp = 2.8 * burst_bubble_direction_hit_by_side_b
		} else if (hbox_num == 7){
			hsp = -2.8 * burst_bubble_direction_hit_by_side_b
		}
	} else if (burst_bubble_has_ability_star == false){
		sprite_index = sprite_get("nspecial_bubble");
	}
	if (hbox_num == 6){
		burst_bubble_has_ability_star = true;
		//hsp = 3.2
	} if (hbox_num == 7){
		burst_bubble_has_ability_star = true;
		//hsp = -3.2
	}
	if (hbox_num != 6 && hbox_num != 7){
		burst_bubble_has_ability_star = false;
	}
	if (burst_bubble_hit_lock != 0){
		burst_bubble_hit_lock--;
	}
	if (hitbox_timer == 1){
		burst_bubble_spawned_with_rune_n_type = 0
	}
	if (burst_bubble_was_hit_by_sideb == false){
		walls = 0
		grounds = 0
		if (burst_bubble_vspeed_trigger == 1){
			vsp = vsp - 0.25
		} else if (burst_bubble_vspeed_trigger == 2){
			vsp = vsp + 0.25
		}
		if (hbox_num == 1 || hbox_num == 6 || hbox_num == 7){
			if (vsp > 2){
				burst_bubble_vspeed_trigger = 1
			} else if (vsp < -2){
				burst_bubble_vspeed_trigger = 2
			}
		} else if (hbox_num == 2){
			vsp = -3
		} else if (hbox_num == 3){
			vsp = 3
			through_platforms = 2;
			fall_through = true;
		} else if (hbox_num == 6){
			vsp = 0;
			if (hsp < 0){
				sprite_get("nspecial_bubble_star_left");
			} else {
				sprite_get("nspecial_bubble_star");
			}
		}
		if (hbox_num != 6){
			if (hsp < 0){
				sprite_get("nspecial_bubble_left");
			} else {
				sprite_get("nspecial_bubble_left");
			}
			if (burst_bubble_was_hit_by_sideb == true){
				spr_dir = player_id.spr_dir
				burst_bubble_was_hit_by_sideb = false
			}
		}
	} else {
		walls = 2
		grounds = 2
	}
	if (hitbox_timer == 419){
		spawn_hit_fx( x, y - 32, 304 );
		sound_play(player_id.sfx_canvas_curse_balloon_pop);
	}
	if (hitbox_timer == 420){
		instance_destroy();
		exit;
	}
	//Grabbing Ability Star
	with (asset_get("obj_article1")){
		if (place_meeting(x, y, other)){
			if ((state == 2 || state == 4) && player_id.player == other.player){
				if (copy_essence_belongs_to_sleep_kirby == true){
					sound_play ( asset_get ( "sfx_blow_medium2" ));
					oh_crap_did_i_get_absorbed_by_bubble = true
					hey_what_way_did_bubble_hit_me = other.spr_dir
					//x = other.x
					//y = other.y
					//if (spr_dir == -1){
						sound_play ( asset_get ( "mfx_star" ));
					//}
				} else if (copy_essence_belongs_to_sleep_kirby == false){
					spawn_hit_fx( x, y - 32, 304 );
					sound_play(player_id.sfx_canvas_curse_balloon_pop);
					instance_destroy();
				}
			}
		}
	}
	
	if (place_meeting( x, y, player_id) ){ //place_meeting( x, y, player_id
		if ((player_id.attack == AT_USPECIAL && player_id.window != 1) || player_id.state == PS_PRATFALL){
			player_id.SleepKirby_up_b_into_nspec_happened = true
			spawn_hit_fx( x, y - 32, 304 );
			sound_play(player_id.sfx_canvas_curse_balloon_pop);
			instance_destroy();
			exit;
		}
	}
	
	//Blastzone stuffs lol
	if ((x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t) || was_parried == true){//>
		spawn_hit_fx( x, y - 32, 304 );
		sound_play(player_id.sfx_canvas_curse_balloon_pop);
		player_id.copy_essence_hit = 0
		instance_destroy();
		exit;
	}
	if (player_id.burst_bubble_hit == true){
		spr_dir = player_id.spr_dir
		player_id.burst_bubble_hit = false
		player_id.copy_essence_hit = 0
		//spawn_hit_fx( x, y - 32, 304 );
		//sound_play(player_id.sfx_canvas_curse_balloon_pop);
		instance_destroy();
		exit;
	}
	if (burst_bubble_hit_lock == 0 && place_meeting(x, y, asset_get("pHitBox")) && player_id.hitpause == false) {
		with (asset_get("pHitBox")){
				if (place_meeting(x, y, other) && ((type == 1) || (type == 2 && player_id == other.player_id))){
					if (player_id == other.player_id){
						if (attack == AT_FSPECIAL){
							other.burst_bubble_direction_hit_by_side_b = player_id.spr_dir
							spawn_hit_fx( other.x, other.y - 32, 301 );
							other.burst_bubble_was_hit_by_sideb = true;
							other.hitbox_timer = 0;
							other.vsp = 2.5
							other.burst_bubble_hit_lock = 3
							other.spr_dir = player_id.spr_dir
							sound_stop(player_id.sfx_canvas_curse_balloon_wiggle);
							sound_play(player_id.sfx_canvas_curse_balloon_wiggle);
							sound_play(player_id.sfx_death);
							player_id.hsp = -3
							player_id.vsp = -3
							player_id.window = 5
							player_id.window_timer = 0
							if (other.spr_dir != player_id.spr_dir){
								//other.sprite_index = sprite_get("nspecial_bubble_star_left");
								//other.spr_dir = 1
							}
						} else if (attack == AT_NSPECIAL) {
							other.hitbox_hit = false;
							//other.hitbox_hit = self;
							//other.hitbox_hit_by_attack = attack;
							//player_id.burst_bubble_hit = true
						} else {
							//other.hitbox_hit = self;
						}
					} else {
						//other.hitbox_hit = self;
					}
				}
		}
	}
}

if (attack == AT_USPECIAL){
	if (hitbox_timer == 0 || hitbox_timer == 1 || hitbox_timer == 2 || hitbox_timer == 3){
		image_index = 0
	} else if (hitbox_timer > 3 || hitbox_timer < 8){//>
		image_index = 1
	} else if (hitbox_timer >= 8){
		image_index = 3
	}
	if (hitbox_timer == 12){
		spawn_hit_fx( x - 12 * spr_dir, y - 20, player_id.pillow_hit_fx_sml );
	}
	if (hitbox_timer == 13){
		instance_destroy();
		exit;
	}
}

if (attack == AT_DSPECIAL){
	if (player_id.copy_essence_hit == true){
		player_id.copy_essence_hit = false
		instance_destroy();
		exit;
	}
	if (hitbox_timer == 2){
		instance_destroy();
		exit;
	}
}