// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DTILT){
	if (window >= 5 && !was_parried){
		//iasa_script(); //decided not to use iasa because cancelling it with crouch kinda wrecked my intention
		can_move = true;
		can_jump = true;
		can_attack = true;
		can_strong = true;
		can_special = true;
		can_shield = true;
		if (right_hard_pressed){set_state(PS_DASH_START);spr_dir=1;}; else if (right_down){set_state(PS_WALK);spr_dir=1;};
		if (left_hard_pressed){set_state(PS_DASH_START);spr_dir=-1;}; else if (left_down){set_state(PS_WALK);spr_dir=-1;};
	}
}

if (attack == AT_UTILT){
	if (window == 1 && window_timer == 5){
		sound_play(sound_get("antici_3"),false,noone,0.5);
	}
}

if (attack == AT_FTILT){
	if (window >= 6 && !was_parried){
		iasa_script();
	}
}
if (attack == AT_DATTACK){
	if (window >= 5 && !was_parried){
		iasa_script();
	}
}
if (attack == AT_UTILT){
	if (window > 1||(window==1&&window_timer==5)){
		hud_offset = 40
	}
}
if (attack == AT_UAIR){
	if (window == 1 && window_timer == 1){
		reset_attack_value(AT_UAIR, AG_LANDING_LAG);//yeah
		dir_store = 0;
	}
	if (window == 3 && window_timer > 5){
	//if (window == 3 && window_timer == 13){
		if (!was_parried){
			if ((attack_down && !attack_pressed)||up_stick_down){
				window = 4;
				window_timer = 0;
			}
		}
	}
	if (window == 3 && window_timer == 13){
		if (was_parried){
			attack_end()
			set_state( PS_PRATFALL )
		}
	}
	if (window == 4){
		vsp = -4;
		if (window_timer == 1){
			if (left_down){
				if (hsp > -3){
				hsp = -3;
				}
				dir_store = -1;
			}
			if (right_down){
				if (hsp < 3){
				hsp = 3;
				}
				dir_store = 1;
			}
		}
	}
	if (window == 5 && window_timer == 1){
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
		var testset = false;
		with (asset_get("obj_article2")){
			if (player_id == other.id){
				testset = true;
			}
		}
		if (testset == false){
			sound_play(sound_get("antici_4_short"));
			var LBomb = instance_create(x+(5*spr_dir), y-90, "obj_article2");
			LBomb.player_id = id;
			LBomb.player = player;
			if (dir_store == -1){
				LBomb.hsp = -3;
				//hsp = -4;
			}
			if (dir_store == 1){
				LBomb.hsp = 3;
				//hsp = 4;
			}
		}else{
			sound_play(sound_get("cant_2"));
		}
	}
	
	
	//iasa
	if (window > 4||(window==4&&window_timer==6)){
		hud_offset = 60
	}
}

if (attack == AT_NSPECIAL){
	var max_nsp = 20 //24
	hsp = clamp(hsp, -3, 3);
	vsp = clamp(vsp, -6, 5);
	//" nspc  " | nsp1s nsp1a  nsp1e   nsp2s   nsp2a   nsp2h   nsp2e
	//" 0-1:2 " | 2-2:1 3-10:9 11-11:1 12-12:1 13-14:2 15-15:1 16-16:1
	if (window == 1 && window_timer == 3){
		reset_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS);
		if(runeL){ //NSPECIAL charge is instant.
			nsp_charge = max_nsp;
		}else{
			nsp_charge = 0;
		}
		sound_play(sound_get("beam_charge"));
		nsp_snd_timer = 0;
	}
	if (window == 2){
		if (nsp_charge <= max_nsp){
			nsp_charge++;
		}else{
			//visual...
			if (nsp_snd_timer == 0 || nsp_snd_timer%13 ==0){
				white_flash_timer = 7;
				sound_stop(sound_get("beam_charge"));
				sound_stop(sound_get("beam_charged"));
				sound_play(sound_get("beam_charged"));
			}
			nsp_snd_timer++;
		}
	}
	if (window == 3 && special_down){
		window = 2;
		window_timer = 0;
	}
	if ((window == 2||window==3) && !special_down){
		white_flash_timer = 0;
		if (nsp_charge > max_nsp){
			if (!free){
				if (left_down && spr_dir == 1){
					spr_dir = -1;
				}
				if (right_down && spr_dir == -1){
					spr_dir = 1;
				}
			}
			sound_stop(sound_get("beam_charge"));
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 11);
			window = 7;
			window_timer = 0;
		}else{
			sound_stop(sound_get("beam_charge"));
			window = 4;
			window_timer = 0;
		}
	}
	if (window == 8 && window_timer == 1){
		spawn_hit_fx( x+(48*spr_dir), y-30, 109 );
		if (free){
		vsp = -5;
		}
	}
}

//DSpecial - Falcon Kick style move; switches to aerial variant and changes angle when it goes off of a ledge.
//this part was coded by trail mix  -hyu
if (attack == AT_DSPECIAL){
	hurtboxID.sprite_index = sprite_get("dspecial_hurt");
	can_fast_fall = false;
	
	if (window == 1 && window_timer == 1){
		reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
		reset_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED);
		reset_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED);
		reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED);
		reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED);
		slammode = false;
	}
	
	if (window!=3){
		if (state_timer%3 ==0){
			var dsp_particle_rand = random_func( 0, 2, true )
			if (dsp_particle_rand == 0){
			spawn_hit_fx( x-16+random_func( 1, 32, true ), y-(char_height/2)-24+random_func( 4, 48, true ), particle1 );
			}
			if (dsp_particle_rand == 1){
			spawn_hit_fx( x-16+random_func( 2, 32, true ), y-(char_height/2)-24+random_func( 5, 48, true ), particle2 );
			}
			if (dsp_particle_rand == 2){
			spawn_hit_fx( x-16+random_func( 3, 32, true ), y-(char_height/2)-24+random_func( 6, 48, true ), particle3 );
			}
		}
	}
	
	if (free){
		if (down_down && special_down && window < 3){
			destroy_hitboxes();
			attack_end();
			attack = AT_DSPECIAL_AIR;
			if (window==2){
				sound_stop(sound_get("kick1"));
				sound_play(sound_get("kick2"));
			}
		} else if (window == 3){
			set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
			window = 4;
		}
	} 
	
	if (window == 1 && window_timer >= get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)){
		create_hitbox(AT_DSPECIAL, 1, x, y); //Prevents the hitbox from coming out 1 frame too late.
	}
	
	if (window == 2){
		if (!hitpause){
			dspecial_timer++;
			
			if (dspecial_timer <= 2){ //first 3 frames including previous window
				create_hitbox(AT_DSPECIAL, 1, x, y);
			} else { //Every other active frame
				create_hitbox(AT_DSPECIAL, 2, x, y);
			}
		}
	} else {
		dspecial_timer = 0;
	}
	
	if (window == 4 && slammode){
		var tmp_length = get_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH);
		hsp = ease_linear( -5, -2, window_timer, tmp_length )*spr_dir
		vsp = ease_linear( -15, -3, window_timer, tmp_length )
	}
}

if (attack == AT_DSPECIAL_AIR){
	hurtboxID.sprite_index = sprite_get("dspecial_air_hurt");
	can_fast_fall = false;
	
	//select thing
	if (window == 1){
		if (window_timer == 1){
			dsp_sentry_check = false;
			
			reset_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH);
			reset_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED);
			reset_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED);
			reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
			reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED);
			reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED);
			slammode = false;
			
			
			if (latest_light_sentry != -4){
				if (point_distance(x, y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80){
					if (latest_light_sentry.state == 1){
						set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 15);
						set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 15);
						set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 5);
						set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 12);
						set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 11);
						set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
						dsp_sentry_check = true;
						latest_light_sentry.hsp = 0;
						latest_light_sentry.vsp = 0;
						latest_light_sentry.idle_cycle = 0;
						latest_light_sentry.no_speed = true;
						sound_play(sound_get("antici_2"), false, noone, 1, 1.3);
						sound_play(sound_get("antici_2"), false, noone, 1, 1.3);
						//sound_play(sound_get("antici_4"), false, noone, 1, 1.5);
						//sound_play(sound_get("antici_4"), false, noone, 1, 1.5);
					}
				}
			}else{//if it's not within sentry
			}
		}//windowtimer1
		var tmp_length = get_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH);
		if (window_timer == tmp_length && dsp_sentry_check){
			if (down_down){}else{
			attack_end();
			attack = AT_DSPECIAL;
			}
			latest_light_sentry.state = 3;
			sound_play(sound_get("shatterlight"), false, noone, 1, 1.5);
			sound_play(sound_get("lightsummon"), false, noone, 1, 2);
			sound_play(sound_get("dash"), false, noone, 1, 1.1);
			sound_play(sound_get("antici_1"), false, noone, 1, 1.3);
			spawn_hit_fx( latest_light_sentry.x, latest_light_sentry.y, lumihitfx1 );
			white_flash_timer = 9;
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 2); //3//4
			set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 3); //6//8
			set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 2); //3//4
			set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 0);
			move_cooldown[AT_FSPECIAL] = clamp(move_cooldown[AT_FSPECIAL] - 50, 0, 200);
		}
	}
	
	if (window!=3&&window!=4){
		if (state_timer%3 ==0){
			var dsp_particle_rand = random_func( 0, 2, true )
			if (dsp_particle_rand = 0){
			spawn_hit_fx( x-16+random_func( 1, 32, true ), y-(char_height/2)-24+random_func( 4, 48, true ), particle1 );
			}
			if (dsp_particle_rand = 1){
			spawn_hit_fx( x-16+random_func( 2, 32, true ), y-(char_height/2)-24+random_func( 5, 48, true ), particle2 );
			}
			if (dsp_particle_rand = 2){
			spawn_hit_fx( x-16+random_func( 3, 32, true ), y-(char_height/2)-24+random_func( 6, 48, true ), particle3 );
			}
		}
	}
	
	if (window == 1 && window_timer >= get_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH)){
		create_hitbox(AT_DSPECIAL_AIR, 1, x, y); //Prevents the hitbox from coming out 1 frame too late.
	}
	
	if (window == 2){
		if (!hitpause){
			dspecial_timer++;
			
			if (dspecial_timer <= 2){ //first 3 frames including previous window
				create_hitbox(AT_DSPECIAL_AIR, 1, x, y);
			} else { //Every other active frame
				create_hitbox(AT_DSPECIAL_AIR, 2, x, y);
			}
		}
		//slam to sentry
		if (latest_light_sentry != -4){
			if (point_distance(x, y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 90){//80
				if (latest_light_sentry.state == 1){
					latest_light_sentry.state = 3;
					sound_play(sound_get("shatterlight"), false, noone, 1, 1.5);
					sound_play(sound_get("shatterlight"), false, noone, 1, 1);
					sound_play(sound_get("stomp"), false, noone, 1, 1.5);
					sound_play(sound_get("dash"));
					spawn_hit_fx( latest_light_sentry.x, latest_light_sentry.y, lumihitfx1 );
					white_flash_timer = 9;
					move_cooldown[AT_FSPECIAL] = clamp(move_cooldown[AT_FSPECIAL] - 50, 0, 200);
					
					attack_end();
					attack = AT_DSPECIAL;
					window = 4;
					window_timer = 0;
					slammode = true;
				}
			}
		}
	} else {
		dspecial_timer = 0;
	}
	
	if (!free && (window == 2 || window == 3) && !hitpause){
		destroy_hitboxes();
		create_hitbox(AT_DSPECIAL_AIR, 3, x, y);
		window = 4;
		window_timer = 0;
		sound_play(sound_get("stomp"));
		sound_stop(sound_get("antici_1"));
	}
	
	if (window != 3){
		can_fast_fall = false;
	} else {
		can_fast_fall = true;
	}
}

//this is a custom homebrew "velocity-based" teleport.
//does not get you thru walls.
//it is such a messy code, but you can reference it if you want
if (attack == AT_USPECIAL){
	//usps1 usps2 usph  uspac uspe  uspr
	//0-0:1 1-2:2 3-3:1 4-5:2 6-7:2 8-8:1
	
	//Math.floor(angleDegree / 45) * 45
	can_fast_fall = false;
	if (window == 1){
		if (window_timer == 1){
			usp_hsp_storage = hsp;
			usp_vsp_storage = vsp;
			sound_play(sound_get("telestart"));
			reset_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH);
			reset_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH);
			reset_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH);
			reset_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE);
			usp_land = false;
		}
		hsp = clamp(usp_hsp_storage, -2.5, 2.5);
		vsp = clamp(usp_vsp_storage, -2.5, 1);
	}
	if (window <= 3){
		var test1 = get_stage_data( SD_Y_POS );
		var test2 = get_stage_data( SD_BOTTOM_BLASTZONE );
		if (y + vsp > test1+test2){
			vsp = -4;
		}
	}
	if (window == 3 && window_timer == 8){
		spawn_hit_fx( x-16+random_func( 1, 32, true ), y-(char_height/2)-24+random_func( 8, 48, true ), particle1 );
		spawn_hit_fx( x-16+random_func( 2, 32, true ), y-(char_height/2)-24+random_func( 9, 48, true ), particle3 );
		spawn_hit_fx( x-16+random_func( 3, 32, true ), y-(char_height/2)-24+random_func( 10, 48, true ), particle2 );
		spawn_hit_fx( x-16+random_func( 4, 32, true ), y-(char_height/2)-24+random_func( 11, 48, true ), particle1 );
		var distance = 100;
		var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){
			hsp = 0;
			vsp = -distance;
		}else{
			hsp = (distance * cos(angle));
			vsp = (distance * sin(angle));
		}
		draw_indicator = false;
		invincible = true;
		invince_time = 1;
		sound_play(sound_get("teleend"));
	}
	if ((window == 4||window == 5) && !free){
			hsp = clamp(hsp, -9.5, 9.5); //9//8
			vsp = clamp(vsp, -9, 9);
		usp_land = true;
		set_state( PS_LANDING_LAG );
		//this is the cancel thing, grounded
		if (latest_light_sentry != -4){
			if (point_distance(x, y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80){
				if (latest_light_sentry.state == 1){
					latest_light_sentry.state = 3;
					sound_play(sound_get("shatterlight"), false, noone, 1, 1.5);
					sound_play(sound_get("lightsummon"), false, noone, 1, 2);
					spawn_hit_fx( latest_light_sentry.x, latest_light_sentry.y, lumihitfx1 );
					white_flash_timer = 9;
					landing_lag_time = 10; //12//14
					move_cooldown[AT_FSPECIAL] = clamp(move_cooldown[AT_FSPECIAL] - 50, 0, 200);
				}
			} else {
				landing_lag_time = 24;//28
			}
		} else {
			landing_lag_time = 24;//28
		}
	}
	if (window == 5){
		draw_indicator = true;
		if (window_timer == 1){
			hsp = clamp(hsp, -5, 5);//5
			vsp = clamp(vsp, -5, 5);
			//this is the cancel thing, aerial
			if (latest_light_sentry != -4){
				if (point_distance(x, y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80){
					if (latest_light_sentry.state == 1){
						latest_light_sentry.state = 3;
						sound_play(sound_get("shatterlight"), false, noone, 1, 1.5);
						sound_play(sound_get("lightsummon"), false, noone, 1, 2);
						spawn_hit_fx( latest_light_sentry.x, latest_light_sentry.y, lumihitfx1 );
						white_flash_timer = 9;
						set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 2); //3//4
						set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 3); //6//8
						set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 2); //3//4
						set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 0);
						move_cooldown[AT_FSPECIAL] = clamp(move_cooldown[AT_FSPECIAL] - 50, 0, 200);
					}
				}
			}//latestlightsentry
		}
	}
	if ((window == 5 && window_timer >= 6) || window == 6 || window == 7){
		can_wall_jump = true;
	}
	if ((window == 6 || window == 7) && !free){
		set_state( PS_LANDING_LAG );
		landing_lag_time = 14;
	}
}

if (attack == AT_FSPECIAL){
	/*if (window == 1){
		if (window_timer == 1){
		}
	}*/
    if (window == 4 && window_timer == 1){
		if (!position_meeting(x+(49*spr_dir), y-43, asset_get("par_block"))){
			move_cooldown[AT_FSPECIAL] = 200;
			var LSentry = instance_create(x+(49*spr_dir), y-43, "obj_article1");
			LSentry.player_id = id;
			LSentry.player = player;
			LSentry.spr_dir = spr_dir;
			LSentry.pre_rfl = id;
			latest_light_sentry = LSentry;
			if (special_down){
				LSentry.store_special = true;
			}
			if (up_down){
				LSentry.store_up = true;
			}
			if (down_down){
				LSentry.store_down = true;
			}
		}
	}
}


if (attack == AT_JAB){
	if (window == 1 && window_timer == 1){
		spark_volume = 1;
		spark_timer = 0;
		jab_timer = 0;
	}

	if (window == 5){
		spark_timer++;
		
		if (!hitpause){
			jab_timer++;
		}
		
		if (jab_timer>=jab_min_dur && (!attack_down || was_parried)){
			window = 6;
			window_timer = 0;
			sound_stop(sound_get("spark"));
			sound_play(sound_get("spark"));
		}
		
		if (spark_timer%5 == 0){
			sound_stop(sound_get("spark"));
			sound_play(sound_get("spark"), false, noone, (spark_volume));
			spark_volume = clamp(spark_volume-0.03, 0.3, 1);
		}
		
		if (jab_timer%(get_hitbox_value(AT_JAB, 2, HG_LIFETIME)+1) == 0 && !hitpause){
			create_hitbox(AT_JAB, 2, x, y);
		}
	}
}

if (attack == AT_USTRONG){
	if (ustrong_target != -4){
		if (window >= 3 && window <= 6 && has_hit_player == true && ustrong_target.hitstun > 0 && !hitpause){ //Pulls you in, for consistency's sake.
			ustrong_target.x = lerp(ustrong_target.x, x, 0.1); //These lines gradually pull the player directly above Lumina during ustrong; ustrong's hitboxes handle the rest.
			ustrong_target.y = lerp(ustrong_target.y, y - 50, 0.15); //check hit_player.gml for how ustrong_target is retrieved.
		}
	}
}

if (attack == AT_DAIR){
	if (window == 2 && window_timer == 1 && vsp > -4){
        vsp = -4;
    }
	if (window == 3 && window_timer == 8){
		vsp = vsp-2;
		if (((right_down && spr_dir == -1) || (left_down && spr_dir == 1))&&(attack_down||down_stick_down)){
			spr_dir = spr_dir*-1
		}
	}
	if (window == 4){
		dair_timer++;
		
		if (dair_timer >= dair_min_dur){
			window = 5;
			window_timer = 0;
		}
	} else {
		dair_timer = 0;
	}
}








//you will lead me to the ark