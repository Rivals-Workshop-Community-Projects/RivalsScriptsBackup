//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(attack = AT_FTILT){
    can_fast_fall = false;
    if (window == 1){
		if (window_timer == 1){
			reset_attack_value(AT_FTILT, AG_NUM_WINDOWS);
			//uses mawral's grab template here. thanks! it also extends into hit_player.gml.
			grabbed_player_obj = noone;
			grabbed_player_relative_x = 0;
			grabbed_player_relative_y = 0;
		}
    }
    if (window == 3){
		if (window_timer == 1){
			spawn_hit_fx( x+(72*spr_dir), y-45, 27 )
		}
	}
	if (window >= 6 && instance_exists(grabbed_player_obj)){
		if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) {
			grabbed_player_obj.visible = true;
			grabbed_player_obj = noone;
		}
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
			grabbed_player_obj.visible = true;
			grabbed_player_obj = noone;
		}else {
			//keep player in hitpause.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			//also make them invisible. this is just her ftilt thing.
			grabbed_player_obj.visible = false;
			
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			
			if (window == 6) {
				var pull_to_x = -43 * spr_dir;
				var pull_to_y = 10-32;
				
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			if (window == 7) {
				var pull_to_x = ((window_timer>=6)?54:40) * spr_dir;
				var pull_to_y = ((window_timer>=6)?10-26:10-19);
				
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			if (window == 8) {
				if (window_timer == 1){
					take_damage( grabbed_player_obj.player, player, 4 );
					grabbed_player_obj.x = x + (-43*spr_dir)
					grabbed_player_obj.y = y - 44
					grabbed_player_obj.visible = true;
					grabbed_player_obj = noone;
					spawn_hit_fx( x+(-43*spr_dir), y-52, 302 )
				}
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
	}
    if (window == 11){
		spr_dir = spr_dir * -1;
	}
}

if(attack = AT_UTILT){
    can_fast_fall = false;
    if(window == 2||window == 3){
        hud_offset = 80;
    }
	if (window == 1){
		if (window_timer == 3){
			sound_play(asset_get("sfx_swipe_medium2"),false,noone,0.6,0.9);
		}
	}
	if (window == 3 && !free){
		set_state( PS_LANDING_LAG );
		landing_lag_time = 8;
	}
}

if(attack == AT_NAIR){
	if(window == 2 && has_hit){
		if(!hitpause){
			vsp =- 9;
		}
		if(window == 2 && window_timer >= 3){
			window = 4;
			window_timer = 0;
		}
	}
}

if(attack == AT_UAIR){
	if(window == 3 && window_timer >= 5){
		move_cooldown[AT_UAIR] = 30;
	}
}

if(attack = AT_DAIR){
    can_fast_fall = false;
	if (window == 1){
		if (window_timer == 1){
			usp_hsp_storage = hsp;
			usp_vsp_storage = (free)?vsp:-9;
		}
	}
	if (window<=2){
		usp_hsp_storage=usp_hsp_storage/1.2;
		usp_vsp_storage=usp_vsp_storage/1.2;
		hsp=usp_hsp_storage;
		vsp=usp_vsp_storage;
	}
	if (window == 3 || window == 4){
		can_move = false;
	}
	if (window == 5){
		if (window_timer == 1){
			destroy_hitboxes()
			//5 -6
			if (free){
				vsp = -6
			}
		}
		if (window_timer == 3){
			sound_play(asset_get("sfx_spin"),false,noone,0.6,1.1);
		}
		if (free){
			hsp = 5*spr_dir
		}
		if (!free){
			hsp = 9*spr_dir
			vsp = 0
		}
	}
	if (window == 6){
		if (free){
			hsp = 6*spr_dir
		}
		if (!free){
			hsp = 6*spr_dir
			if (attack_pressed||attack_down){
				attack_end()
				set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
				attack = AT_DATTACK;
				state_timer = 0;
				window = 3;
				window_timer = 15;
				canceld = 2;
				hurtboxID.sprite_index = sprite_get("dattack_hurt");
			}
		}
	}
}

if(attack == AT_DATTACK){
    can_fast_fall = false;
     if(was_parried){
        hsp = 0;
        old_hsp = 0;
    }
    if(window = 1){
		if (window_timer==1){
			canceld = 0;
			reset_attack_value(AT_DATTACK, AG_NUM_WINDOWS);
		}
    }
    if(window == 3){
        if((attack_down || attack_pressed) && !free){
			if (canceld = 0){
				canceld = 1;
			}
		}
    }
    if(window == 3){
        if(window_timer >= 5 && canceld == 1){
            if(!hitpause){
				set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
                window_timer = 15;
				canceld = 2;
            }
        }
    }

}

if (attack = AT_FSTRONG){
	can_fast_fall = false;
    if (window = 1){
		if (window_timer==1){
			fst_switch = false;
			reset_attack_value(AT_FSTRONG, AG_NUM_WINDOWS);
		}
	}
	if (window == 6 || window == 11){
		hsp = clamp(hsp, -3, 3);
		vsp = clamp(vsp, -8, 4);
	}else{
		can_move = false;
		vsp = 0;
	}
	if (fst_switch = true){
		fst_switch = false;
		destroy_hitboxes();
		spawn_hit_fx( x+(42*spr_dir), y-30, 66 )
		set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 11);
		window = 7;
		window_timer = 0;
		sound_stop(asset_get("sfx_abyss_explosion_start"));
		sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.5);
		sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.6);
	}
}

if(attack = AT_USTRONG){
	//i had to increase some windows to make strong store thing work ;-; sorry
    if(!hitpause){
        can_fast_fall = false;
    }
    if(window < 5){//4
        can_move = false;
    }
    if(window = 1){
        if(window_timer < 12){
            off_edge = false;
        }
        else if(window_timer >= 14){
            off_edge = true;
        }
    }
    if(window > 2 && window != 6){//1, 5
        if(!free){
            window = 6;
            window_timer = 0;
        }
    }
}

if(attack = AT_DSTRONG){
    if(free){
        if(window == 4){
            if(window_timer == 4){
            	create_hitbox(AT_DSTRONG, 2, x + 31, y + 32);
            	create_hitbox(AT_DSTRONG, 3, x - 31, y + 32);
            	create_hitbox(AT_DSTRONG, 4, x, y + 8);
            	if(!hitpause){
            		vsp =- 6;
            	}
            }
        }
    }
}




if (attack == AT_NSPECIAL){
    if(window == 1){
        if(blades == true){
            window = 5;
            window_timer = 0;
        }
    }
    if(window == 2){
        if(window_timer == 1){
			blades = true;
			//summon article here yes
			var wheelID = instance_create(x, y-30, "obj_article1");
			wheelID.player_id = id;
			wheelID.player = player;
			wheelID.spr_dir = spr_dir;
			sound_play(asset_get("sfx_spin"),false,noone,0.6,0.7);
		}
    }
    if(window == 5 && window_timer >= 10){
        window = 6;
        window_timer = 0;
    }
    if(window = 6){
        if(window_timer == 1){
            if(blades = true){
                blades = false;
            }
			with (asset_get("obj_article1")){//detect the wheel, do somethin with the wheel
				if (player_id == other.id){
					if (state == 0){
						sent = true;
						hsp = other.wheel_velocity*spr_dir;
						state_timer = 0;
						sound_play(asset_get("sfx_spin"),false,noone,0.7,1.4);
						sound_play(asset_get("sfx_spin"),false,noone,0.7,1.5);
						other.move_cooldown[AT_NSPECIAL] = other.nsp_cooldown;
					}
				}
			}
        }
        if(window_timer >= 6){
            window = 7;
            window_timer = 0;
        }
    }
	
	//cooldown land	
	//if (window==7){
	//	if (window_timer==16){
	//	}
	//}
}






if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	hsp = clamp(hsp, -3, 3);
	vsp = clamp(vsp, -8, 5);
	if (window == 1){
		if (window_timer == 1){
			sound_play(asset_get("sfx_clairen_swing_weak"),false,noone,0.8,1.1);
			reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
			fsp_cancel_qualified = false;
			fsp_special_qualified = false;
			fsp_strong_buffer = 0;
			fsp_special_buffer = 0;
			fsp_cancel_dir = 0;
			fsp_hit_loc_x = 0;
			fsp_hit_loc_y = 0;
		}
	}
	if (window == 2){
		if (window_timer == 1){
			spawn_hit_fx( x+(10*spr_dir), y, fsp_vfx )
			
			sound_play(asset_get("sfx_boss_shine"),false,noone,1,1.2);
			var mirageID = instance_create(x+round(hsp), y, "obj_article2");
			mirageID.player_id = id;
			mirageID.player = player;
			mirageID.spr_dir = spr_dir;
			if (blades){
				spawn_hit_fx( x, y-30, 302 )
				mirageID.blades = true;
				blades = false;
				sound_play(asset_get("sfx_spin"),false,noone,0.5,1.6);
				sound_play(asset_get("sfx_spin"),false,noone,0.5,1.7);
				with (asset_get("obj_article1")){//detect the wheel, do somethin with the wheel
					if (player_id == other.id){
						state = 1;
						follow_hb.destroyed = true;
					}
				}
			}//blades
		}
	}
	if ((window == 2 && window_timer > 1) || window == 3){
		if (attack_pressed){
			var tmp_check = false;
			with (asset_get("obj_article2")){//detect the mirage, change state of the mirage
				if (player_id == other.id){
					if (state == 0||state == 1){
						state = 2;
						state_timer = 0;
						tmp_check = true;
						if (follow_hb != -4){
							follow_hb.destroyed = true;
						}
					}
				}
			}//with
			if (tmp_check == true){
				window = 6;
				window_timer = 0;
				set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 11);
				
			}
		}else if (shield_pressed){
			var tmp_check = false;
			with (asset_get("obj_article2")){//detect the mirage, change state of the mirage
				if (player_id == other.id){
					if (state == 0||state == 1){
						state = 5;
						state_timer = 0;
						tmp_check = true;
						if (follow_hb != -4){
							follow_hb.destroyed = true;
						}
					}
				}
			}//with
			if (tmp_check == true){
				window = 12;
				window_timer = 0;
				set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 16);
				
			}
			
		}else if (is_special_pressed( DIR_UP )){
			
			if (charge_store>0){
			var tmp_check = false;
			with (asset_get("obj_article2")){//detect the mirage, change state of the mirage
				if (player_id == other.id){
					if (state == 0){
						other.fsp_memory = id
						state = 8;
						state_timer = 0;
						vsp = 0;
						usp_mode = true;
						tmp_check = true;
						if (follow_hb != -4){
							follow_hb.destroyed = true;
						}
					}
				}
			}//with
			if (tmp_check == true){
				attack_end()
				set_attack(AT_USPECIAL)
				move_cooldown[AT_FSPECIAL] = fsp_cooldown_dodge;
				from_fsp = true;
					
					charge_store -= 1;
					white_flash_timer = 15;
					spawn_hit_fx( x, y-46, 113 )
					sound_play(asset_get("sfx_boss_laser_hit"),false,noone,0.7,1.5);
					sound_play(asset_get("sfx_boss_laser_hit"),false,noone,0.7,1.3);
					sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.3);
					sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.4);
			}
			}
			
		}else if (special_pressed){
			
			if (charge_store>0){
			if (!fsp_used){
			if (down_down){
				move_cooldown[AT_FSPECIAL] = fsp_cooldown_normal;
				attack_end()
				set_attack(AT_DSPECIAL)
			}else if (left_down||right_down){
				with (asset_get("obj_article2")){//detect the mirage, change state of the mirage
					if (player_id == other.id){
						if (state == 0||state == 1){
							state = 10;
							state_timer = 0;
							vsp = 0;
							tmp_check = true;
							if (follow_hb != -4){
								follow_hb.destroyed = true;
							}
						}
					}
				}//with
				attack_end()
				window = 0
				window_timer = 0;
				fsp_used = true;
				spr_dir = (left_down)?-1:(right_down)?1:spr_dir
			}else{
				move_cooldown[AT_FSPECIAL] = fsp_cooldown_normal;
				attack_end()
				set_attack(AT_NSPECIAL)
			}
					
					charge_store -= 1;
					white_flash_timer = 15;
					spawn_hit_fx( x, y-46, 113 )
					sound_play(asset_get("sfx_boss_laser_hit"),false,noone,0.7,1.5);
					sound_play(asset_get("sfx_boss_laser_hit"),false,noone,0.7,1.3);
					sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.3);
					sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.4);
			}
			}
			
		}//pressed
	}//window
	
	//position swap teleport will be handled in article2_update.gml. 12
	
	if (window == 8 || window == 9 || window == 10 || window == 14 || window == 15){
		vsp = 0;
	}
	
	if (window == 9){
		if (fsp_cancel_qualified){
			if (hitpause){
				if (up_strong_pressed){
					fsp_strong_buffer = 2;
				}else if (down_strong_pressed){
					fsp_strong_buffer = 3;
				}else if (left_strong_pressed||right_strong_pressed){
					fsp_strong_buffer = 1;
					fsp_cancel_dir = (left_strong_pressed)?-1:(right_strong_pressed)?1:spr_dir
				}else if (special_pressed){
					if (up_down){//uspecial
						fsp_special_buffer = 2;
					}else if(down_down){//dspecial
						fsp_special_buffer = 3;
					}else if(left_down||right_down){//fspecial
						if (!fsp_used){
							fsp_special_buffer = 1;
							fsp_cancel_dir = (left_down)?-1:(right_down)?1:spr_dir
						}
					}else{//nspecial
						fsp_special_buffer = 4;
					}
					//2 up | 3 down | 1 forward | 4 neutral
				}
			}else{
				if (fsp_strong_buffer>0||(up_strong_pressed||down_strong_pressed||left_strong_pressed||right_strong_pressed)){
					//this here is a mess i know
					//print("yea this runnin");
					attack_end();
					set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -9);
					if (fsp_strong_buffer == 2){
						attack = AT_USTRONG;
						hurtboxID.sprite_index = sprite_get("ustrong_hurt");
						state_timer = 0;
						window = 2;
						window_timer = 0;
						spr_dir = spr_dir * -1
					}else if (fsp_strong_buffer == 3){
						attack = AT_DSTRONG;
						hurtboxID.sprite_index = sprite_get("dstrong_hurt");
						state_timer = 0;
						window = 3;
						window_timer = 0;
					}else if (up_strong_pressed){
						attack = AT_USTRONG;
						hurtboxID.sprite_index = sprite_get("ustrong_hurt");
						state_timer = 0;
						window = 2;
						window_timer = 0;
						spr_dir = spr_dir * -1
					}else if (down_strong_pressed){
						attack = AT_DSTRONG;
						hurtboxID.sprite_index = sprite_get("dstrong_hurt");
						state_timer = 0;
						window = 3;
						window_timer = 0;
					}else if (left_strong_pressed||right_strong_pressed){
						attack = AT_FSTRONG;
						hurtboxID.sprite_index = sprite_get("fstrong_hurt");
						state_timer = 0;
						window = 3;
						window_timer = 0;
						spr_dir = (left_strong_pressed)?-1:(right_strong_pressed)?1:spr_dir;
					}else if (fsp_strong_buffer == 1){
						attack = AT_FSTRONG;
						hurtboxID.sprite_index = sprite_get("fstrong_hurt");
						state_timer = 0;
						window = 3;
						window_timer = 0;
						spr_dir = fsp_cancel_dir;
					}else{
						attack = AT_FSTRONG;
						hurtboxID.sprite_index = sprite_get("fstrong_hurt");
						state_timer = 0;
						window = 3;
						window_timer = 0;
					}
					
					move_cooldown[AT_FSPECIAL] = fsp_cooldown_normal;
					charge_store -= 1;
					white_flash_timer = 15;
					spawn_hit_fx( x, y-46, 113 )
					sound_play(asset_get("sfx_boss_laser_hit"),false,noone,0.7,1.5);
					sound_play(asset_get("sfx_boss_laser_hit"),false,noone,0.7,1.3);
					sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.3);
					sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.4);
					fsp_strong_buffer = 0;
					
				}
				if (fsp_special_buffer>0){
					//2 up | 3 down | 1 forward | 4 neutral
					attack_end();
					if (fsp_special_buffer == 2){
						set_attack(AT_USPECIAL)
						state_timer = 0;
						window = 2;
						window_timer = 0;
					}else if (fsp_special_buffer == 3){
						set_attack(AT_DSPECIAL)
						//state_timer = 0;
						//window = 3;
						//window_timer = 0;
					}else if (fsp_special_buffer == 1){
						if (!fsp_used){
							attack = AT_FSPECIAL;
							state_timer = 0;
							window = 0;
							window_timer = 0;
							fsp_used = true;
						}
					}else if (fsp_special_buffer == 4){
						attack = AT_NSPECIAL;
						hurtboxID.sprite_index = sprite_get("nspecial_hurt");
						state_timer = 0;
						window = 2;
						window_timer = 2;
						var wheelID = instance_create(round(fsp_hit_loc_x), round(fsp_hit_loc_y)-30, "obj_article1");
						spawn_hit_fx( x, y-46, 113 )
						wheelID.player_id = id;
						wheelID.player = player;
						wheelID.spr_dir = spr_dir;
						wheelID.sent = true;
						sound_play(asset_get("sfx_spin"),false,noone,0.6,0.7);
					}
					
					move_cooldown[AT_FSPECIAL] = fsp_cooldown_normal;
					charge_store -= 1;
					white_flash_timer = 15;
					spawn_hit_fx( x, y-46, 113 )
					sound_play(asset_get("sfx_boss_laser_hit"),false,noone,0.7,1.5);
					sound_play(asset_get("sfx_boss_laser_hit"),false,noone,0.7,1.3);
					sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.3);
					sound_play(asset_get("sfx_abyss_explosion_start"),false,noone,1,1.4);
					fsp_special_buffer = 0;
				}
			}
		}//qualified
	}
	
	if (window == 4){
		if (window_timer == 1){
			with (asset_get("obj_article2")){//detect the mirage, change state of the mirage
				if (player_id == other.id){
					if (state == 0 || state == 1){
						state = 10
						state_timer = 0;
						if (follow_hb != -4){
							follow_hb.destroyed = true;
						}
					}
				}
			}//with
		}
	}
	if (window == 7){
		if (window_timer == 4){
			sound_play(asset_get("sfx_clairen_fspecial_dash"),false,noone,1.1,1.1);
			sound_play(asset_get("sfx_clairen_fspecial_dash"),false,noone,1.1,0.8);
		}
	}
	if (window == 13){
		if (window_timer == 1){
			sound_play(asset_get("sfx_clairen_fspecial_dash"),false,noone,1.1,1.1);
			sound_play(asset_get("sfx_clairen_fspecial_dash"),false,noone,1.1,0.8);
		}
	}
	if (window == 11 || window == 16){
		if (window_timer >= 8){
			if (!free){
				if (window == 16){
					set_state( PS_IDLE );
					move_cooldown[AT_FSPECIAL] = fsp_cooldown_dodge;
				}else{
					set_state( PS_LANDING_LAG );
					move_cooldown[AT_FSPECIAL] = fsp_cooldown_normal;
					landing_lag_time = 12;
				}
			}
		}
	}
	if ((window == 13 && window_timer > 4) || window == 14 || window == 15 || window == 16 ){
		invincible = true;
		invincible_time = 20;
		//white_flash_timer = 2;
	}
	
	
	
	//cooldown land.
	if (window == 5){
		if (window_timer == 5){
			move_cooldown[AT_FSPECIAL] = fsp_cooldown_normal
		}
	}
	if (window == 11){
		if (window_timer == 10){
			move_cooldown[AT_FSPECIAL] = fsp_cooldown_normal
		}
	}
	if (window == 16){
		if (window_timer == 20){
			move_cooldown[AT_FSPECIAL] = fsp_cooldown_dodge
		}
	}
	//other cooldowns, e.g. cancel cooldowns, are in their own places above. sorry!
	//you can change the cooldown amount over in init.gml.
	
}





if (attack == AT_USPECIAL){
    
	//mostly copied from lumina teleport, but gotta re-use what we can re-use, right?
	//-hyu
	
	//Math.floor(angleDegree / 45) * 45
	can_fast_fall = false;
	can_move = false;
	fall_through = true;
	if (window == 1){
		if (window_timer == 1){
			//
			hsp_decide = 0;
			vsp_decide = 0;
			angle_decide = 0;
			reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
			reset_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE);
		}
	}
	if (window == 1 ||
		window == 2 ||
		window == 3 ||
		window == 5 ||
		window == 6 ||
		window == 7 ||
		window == 8 ||
		window == 10 ||
		window == 11 ||
		window == 12 ||
		window == 13 ||
		window == 14){
		hsp = 0;
		vsp = 0;
	}
	if ((window == 3||window == 8)&& window_timer == 4){
		var distance = 30;
		var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		angle_decide = angle;
		//print(string(angle))
		if (joy_pad_idle){
			hsp_decide = 0;
			vsp_decide = -distance;
		}else{
			hsp_decide = (distance * cos(angle));
			vsp_decide = (distance * sin(angle));
		}
		hsp = hsp_decide;
		vsp = vsp_decide;
		draw_indicator = false;
		invincible = true;
		invince_time = 1;
		//sound_play(sound_get("teleend"));
	}
	if (window == 4||window == 9){
		draw_indicator = false;
		hsp = hsp_decide;
		vsp = vsp_decide;
	}
	//sound effects...
	//pre-tele
	if (window == 2||window == 7){
		if (window_timer == 1){
			sound_play(asset_get("sfx_abyss_hazard_start"),false,noone,1,1.2);
		}
	}
	//post-tele
	if (window == 5||window == 10){
		if (window_timer == 1){
			sound_stop(asset_get("sfx_abyss_hazard_start"));
			sound_play(asset_get("sfx_bird_upspecial"),false,noone,0.5,1.2);
			sound_play(asset_get("sfx_bird_upspecial"),false,noone,0.5,1.3);
		}
	}
	//ledge cancel thing commented out
	/*
	if ((window == 4||window == 5) && !free){
			hsp = clamp(hsp, -9.5, 9.5); //9//8
			vsp = clamp(vsp, -9, 9);
		set_state( PS_LANDING_LAG );
		//this is the cancel thing, grounded
		landing_lag_time = 28;
	}
	*/
	if (window == 5||window == 10){
		draw_indicator = true;
		//if (window_timer == 1){
		//	hsp = clamp(hsp, -5, 5);//5
		//	vsp = clamp(vsp, -5, 5);
		//}
	}
	if (window == 6 || window == 7 || window == 10 || window == 11){
		can_wall_jump = true;
	}
	if (window == 5 || window == 6 || window == 7 || window == 11 || window == 10){
		if (from_fsp){
			if (attack_pressed){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 14);
				window = 12
				window_timer = 0;
			}
		}
	}
	
	if (window == 6 && window_timer == 8){
		var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (!joy_pad_idle){
			if (angle != angle_decide){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 11);
				set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 0);
			}
		}
	}
	if (window==12){
		if (window_timer == 1){
			spawn_hit_fx( x, y-46, 66 )
			spawn_hit_fx( fsp_memory.x, fsp_memory.y-46, 66 )
			sound_play(asset_get("sfx_abyss_hazard_start"),false,noone,0.5,1.5);
			sound_play(asset_get("sfx_abyss_hazard_start"),false,noone,0.5,1.7);
		}
		if (window_timer == 9){
			var x_store = x;
			var y_store = y;
			var hsp_store = hsp;
			var vsp_store = vsp;
			x = fsp_memory.x;
			y = fsp_memory.y;
			hsp = fsp_memory.hsp;
			vsp = fsp_memory.vsp;
			fsp_memory.x = x_store;
			fsp_memory.y = y_store;
			fsp_memory.hsp = hsp_store;
			fsp_memory.vsp = vsp_store;
			from_fsp = false;
		}
	}
	//landinglag commented out
	/*
	if ((window == 6 || window == 7) && !free){
		set_state( PS_LANDING_LAG );
		landing_lag_time = 14;
	}
	*/
}





if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	if (window == 1){
		if (window_timer == 1){
			sound_play(asset_get("sfx_boss_shine"),false,noone,1,0.9);
			sound_play(asset_get("sfx_abyss_spawn"),false,noone,1,0.7);
			white_flash_timer = 5; //undocumented useful variable. makes u flash white for this amount of frame.
			reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
			tmp_detect = false;
			tmp_enemy = -4;
		}
	}
	if (window == 2){
		if (window_timer == 1){
			spawn_hit_fx( x+(-20*spr_dir), y-46, 27 )
		}
		//attack_invince = 2;
		if (tmp_detect == false){
			with(asset_get("pHitBox")){
				if (player_id != other.id){
					if (place_meeting(x, y, other)){
						//custom hitpause right here
						spawn_hit_fx( other.x, other.y-30, 67 )
						other.hitpause = true;
						other.hitstop = hitpause;
						other.hitstop_full = hitpause;
						other.tmp_detect = true;
						other.old_hsp = other.hsp;
						other.old_vsp = other.vsp;
						other.hsp = 0;
						other.vsp = 0;
						
						other.tmp_enemy = player_id;
						
						player_id.hitpause = true;
						
						//here is the hitstop / hitpause amount
						player_id.hitstop = 30;
						player_id.hitstop_full = 30;
						
						player_id.old_hsp = player_id.hsp;
						player_id.old_vsp = player_id.vsp;
						player_id.hsp = 0;
						player_id.vsp = 0;
						can_hit[other.player] = false;
					}
				}
			}
		}
		if (!hitpause && tmp_detect == true){
			sound_play(asset_get("sfx_boss_shine"),false,noone,1,1.2)
			set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
			window = 4;
			window_timer = 0;
			if (tmp_enemy != -4 && blades){
				with (asset_get("obj_article1")){//detect the wheel, do somethin with the wheel
					if (player_id == other.id){
						sent = true;
						x = other.tmp_enemy.x+30;
						y = other.tmp_enemy.y-30;
					}
				}
			}
			
		}
	}//window
	if (window <= 3){
		hsp = clamp(hsp, -3, 3);
		vsp = clamp(vsp, -8, 5);
	}
	if (window == 5 && window_timer == 8){
		var distance = 30;
		var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		angle_decide = angle;
		//print(string(angle))
		if (joy_pad_idle){
			hsp_decide = 0;
			vsp_decide = -distance;
		}else{
			hsp_decide = (distance * cos(angle));
			vsp_decide = (distance * sin(angle));
		}
		hsp = hsp_decide;
		vsp = vsp_decide;
		draw_indicator = false;
		invincible = true;
		invince_time = 1;
		//sound_play(sound_get("teleend"));
	}
	if (window == 4){
		if (window_timer == 1){
			sound_play(asset_get("sfx_abyss_hex_hit"),false,noone,1,1.2)
		}
	}
	if (window == 6){
		draw_indicator = false;
	}
	if (window == 7){
		if (window_timer==1){
			sound_stop(asset_get("sfx_abyss_hazard_start"));
			sound_play(asset_get("sfx_bird_upspecial"),false,noone,0.5,1.2);
			sound_play(asset_get("sfx_bird_upspecial"),false,noone,0.5,1.3);
			if (charge_store<charge_store_max){
				sound_play(asset_get( "sfx_frog_fspecial_charge_gained_1" ), false, noone, 0.8, 1.2);
				charge_store += 1;
				white_flash_timer = 15; //undocumented useful variable. makes u flash white for this amount of frame.
			}else{
				sound_stop(asset_get( "sfx_abyss_explosion_start" ));
				sound_play(asset_get("sfx_frog_fspecial_cancel"),false,noone,0.5,0.8);
				sound_play(asset_get("sfx_boss_shine"));
				white_flash_timer = 5;
			}
		}
	}
	if (window == 7 ||
		window == 8 ||
		window == 9){
		hsp = 0;
		vsp = 0;
	}
}




if(attack = AT_TAUNT){
	if(taunt_down && window == 2){
		if(window_timer >= 24){
			window = 2;
			window_timer = 0;
		}
	}
}