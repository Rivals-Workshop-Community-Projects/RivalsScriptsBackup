//hit_player.gml

has_hit_someone_for_first_time_with_dspec = true;

if (my_hitboxID.attack == AT_DTILT){
	if (my_hitboxID.hbox_num == 1){
		sound_play(sfx_bounce);
		old_hsp = 0;
		old_vsp = -8.5;
		window = 6;
		window_timer = 0;
		destroy_hitboxes();
		if (hit_player_obj.x > x){
			hit_player_obj.x -= 15
			x += 6;
		}
		if (hit_player_obj.x < x){//>
			hit_player_obj.x += 15
			x -= 6;
		}
	}
}

/*
if (my_hitboxID.attack == AT_DATTACK){
	if (my_hitboxID.hbox_num != 5){
		hit_player_obj.x = x + (12*spr_dir);
	}
	if (hit_player_obj.y < y){
		hit_player_obj.y += 6
	}
}
*/

/*
if (my_hitboxID.attack == AT_NAIR){
	if (hit_player_obj.y > y){
		hit_player_obj.y += 4
	}
}
*/
if (my_hitboxID.attack == AT_DAIR){
	if (my_hitboxID.hbox_num == 1){
		old_vsp = -4.5;
	} else if (my_hitboxID.hbox_num == 2){
		old_vsp = -7-(3*dairRune);
		sound_play(sfx_bounce, false, noone, 0.7, 1);
	}
}

if (my_hitboxID.attack == AT_FSTRONG){
	sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.5, 1.1);
	if (my_hitboxID.hbox_num == 3){
		hit_player_obj.y -= 6;
	}
}

if (my_hitboxID.attack == AT_DSTRONG){
	sound_play(sfx_krdl_water_hit, false, noone, 0.7, 1);
}

if (my_hitboxID.attack == AT_NSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		if (my_hitboxID.water_proj_was_charged == false){
			//sound_play(sfx_star_allies_clean_pitch_water);
		} else if (my_hitboxID.water_proj_was_charged == true){
			sound_play(sfx_star_allies_clean_pitch_water_charged);
		}
	}
}

//funny "remove burn effect" thing on water attacks
if (my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_NSPECIAL){
	if (hit_player_obj.burned == true){
		take_damage(hit_player_obj.player, player, -4);
		hit_player_obj.burned = false;
		sound_play(asset_get("sfx_burnend"));
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, 13)
	}
}

if (my_hitboxID.attack == AT_FSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		sound_play(sfx_krdl_water_hit, false, noone, 0.7, 1.5);
		//spawn_hit_fx( x + 0 * spr_dir, y, water_proj_land_vfx );
		window = 5;
		window_timer = 0;
		hsp = 0;
		vsp = 0;
		destroy_hitboxes();
	}
}

if (my_hitboxID.attack == AT_DSPECIAL_2){
	if (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND
    	  && was_parried == false && hit_player_obj.clone == false
		  && my_hitboxID.hbox_num != 3 && my_hitboxID.hbox_num != 4){
	        
	        if (my_hitboxID.hbox_num == 2){
		        vacuum_grab = true;
		        vacuum.state = 4;
				var grabbed_opponent = hit_player_obj
				vacuum.grabbed_player_id = grabbed_opponent;
				//grabbed_opponent.visible = false;
				grabbed_opponent.invincible = true;
				
				if (vacuum.throw_direction == vacuum.spr_dir){
					hit_player_obj.x = lerp(hit_player_obj.x, vacuum.x+50*vacuum.spr_dir, 0.4);
					hit_player_obj.y = lerp(hit_player_obj.y, vacuum.y-30, 0.4);
				}
				if (vacuum.throw_direction != vacuum.spr_dir){
					hit_player_obj.x = lerp(hit_player_obj.x, vacuum.x-60*vacuum.spr_dir, 0.4);
					hit_player_obj.y = lerp(hit_player_obj.y, vacuum.y-30, 0.4);
				}
	        }
	        else {
	            vacuum_grab = false;
				var grabbed_opponent = noone;
	        }
	        if (hit_player_obj == my_hitboxID.player_id){
				//
	        	if (my_hitboxID.hbox_num == 2){
					sprite_index = sprite_get("hurt");
						vacuum_myself = true;
						vacuum.vacuum_myself = true;
						hit_player_obj.invince_time = 0;
	        	} else {
					if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
						clamp(old_hsp*1.35,-10,10);
						spr_dir *= -1;
						djumps = 0;
						has_airdodge = true;
						move_cooldown[AT_FSPECIAL] = 0;
						move_cooldown[AT_USPECIAL] = 0;
					}
					vacuum_myself = false;
					vacuum.vacuum_myself = false;
					//visible = true;
				}
			} else {
				if (my_hitboxID.hbox_num == 2){
					//hit_player_obj.was_hit_by_vac = true;
				}
				if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
					//hit_player_obj.visible = true;
				}
			}
			if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
				//hit_player_obj.visible = true;
			}
	  } else if(hit_player_obj.state != PS_HITSTUN || hit_player_obj.state != PS_HITSTUN_LAND){
		if (my_hitboxID.hbox_num == 2){
			//print("How did we get here?");
		}
	  }
	  
}
else {
	vacuum_myself = false;
    vacuum_grab = false;
}

if (my_hitboxID.attack == AT_DSPECIAL_2){
	if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
		//print("hi");
		//print(hit_player_obj.visible);
		if (hit_player_obj.visible == false){
			//print("was_not_visible???");
			//hit_player_obj.visible = true;
		}
	}
}