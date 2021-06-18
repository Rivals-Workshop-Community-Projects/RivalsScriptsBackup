// attack_update

//B - Reversals
if (attack == AT_NSPECIAL ||
	attack == AT_NSPECIAL_AIR ||
	attack == AT_FSPECIAL ||
	attack == AT_DSPECIAL ||
	attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack==AT_DTILT||
	attack==AT_UTILT||
	attack==AT_UAIR||
	attack==AT_USTRONG){
	draw_indicator = false;	
}

if (attack==AT_JAB){
	was_parried = false;
}

if (attack==AT_DAIR){
	if (window<=7){
		can_fast_fall = false;
		can_move = false;
		if (was_parried){
			window = 8;
			window_timer = 0;
		}
	}
	
	if (window==1 && !hitpause){
		if (window_timer==1){
			reset_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH);
			reset_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH);
			reset_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH);
			dair_mark = false;
		}
		if (vsp<0){
			vsp=vsp+0.5;
		}
	}
	if (window==2 && !hitpause){
		var w2l = get_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH)
		var hsptemp = ease_linear( 0, 6, window_timer, w2l )
		var vsptemp = ease_linear( 0, 4, window_timer, w2l )
		hsp = hsptemp*spr_dir;
		vsp = vsptemp;
	}
	if (window==3 && !hitpause){
		var w3l = get_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH)
		var hsptemp = ease_cubeIn( 6, 12, window_timer, w3l )
		var vsptemp = ease_cubeIn( 4, 6, window_timer, w3l )
		hsp = hsptemp*spr_dir;
		vsp = vsptemp;
	}
	if ((window==3||window==4) && !hitpause){
		if (!free){
			window = 5;
			window_timer = 0;
			sound_stop(sound_get("swing2"));
			sound_play(sound_get("EnemySword"));
			sound_play(sound_get("metalhit"));
			spawn_hit_fx( x+(60*spr_dir), y-14, 151 );
			destroy_hitboxes();
		}
	}
	if (window==5 && !hitpause){
		if (window_timer==1){
			if (((spr_dir == -1 && left_down) || (spr_dir == 1 && right_down))&&!free){
				//forward
				hsp = 6*spr_dir;//-3.5
				vsp = dairvsp/1.5;
				sound_stop(sound_get("metalhit"));
				sound_play(sound_get("bounce"));
				dair_mark = true;
			}else if (((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down))&&!free){
				//backward
				hsp = -5*spr_dir;//-3.5
				vsp = dairvsp/1.3;
				sound_stop(sound_get("metalhit"));
				sound_play(sound_get("bounce"));
				//dair_mark = true;
			}else{
				hsp = -2.5*spr_dir;//-3.5
				vsp = dairvsp;
			}
			dairvsp = dairvsp/2;
			move_cooldown[AT_DAIR] = 50;//60
			vsp = clamp(vsp, -13, 2)
		}
		if (has_hit && dair_mark){
			//print_debug("has hit, boom")
			set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 4);//5
			set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 10);//13
			set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 3);//4
		}
	}
	if (window==6){
		var w6l = get_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH)
		var vmaxtemp = ease_linear( 2, round(max_fall-5), window_timer, w6l-15 )
		vsp = clamp(vsp, -13, vmaxtemp)
	}
	if (window>5){
		if (!free && !was_parried){
			set_state( PS_LANDING_LAG );
			landing_lag_time = 20;
		}
	}
}

//shift-out land

if (attack==AT_UAIR){
	//55 -14
	if ((window==1&&window_timer==6)||window==2||window==3||window==4){
		var maxattempts = 80
		var attempts = 0
		while(attempts < maxattempts && place_meeting(x+(55*spr_dir), y-25, asset_get("par_block"))){
			x = x+(-1*(spr_dir))
			hsp = 0;
			attempts++;
		}
	}
}
if (attack==AT_DAIR){
	//67 -18
	if ((window==2&&window_timer==5)||window==3){
		var maxattempts = 80
		var attempts = 0
		while(attempts < maxattempts && place_meeting(x+(40*spr_dir), y-18, asset_get("par_block"))){
			x = x+(-1*(spr_dir))
			hsp = -2*spr_dir;
			attempts++;
		}
	}
}
if (attack==AT_NAIR){
	//68 -16
	if ((window==1&&window_timer==9)||window==2||window==3){
		var maxattempts = 80
		var attempts = 0
		while(attempts < maxattempts && place_meeting(x+(40*spr_dir), y-16, asset_get("par_block"))){
			x = x+(-1*(spr_dir))
			hsp = 0;
			attempts++;
		}
	}
}

if (attack==AT_DTILT){
	//88 -29
	if ((window==2&&window_timer==4)||window==3){
		var maxattempts = 80
		var attempts = 0
		while(attempts < maxattempts && place_meeting(x+(50*spr_dir), y-29, asset_get("par_block"))){
			x = x+(-1*(spr_dir))
			hsp = 0;
			attempts++;
		}
	}
}
if (attack==AT_UTILT){
	//72 -50
	if ((window==2&&window_timer==2)||window==3||window==4){
		var maxattempts = 80
		var attempts = 0
		while(attempts < maxattempts && place_meeting(x+(56*spr_dir), y-50, asset_get("par_block"))){
			x = x+(-1*(spr_dir))
			hsp = 0;
			attempts++;
		}
	}
}

if (attack==AT_DATTACK){
	if (window==1){
		if (window_timer==1&&!hitpause){
			sound_play(asset_get("sfx_swipe_medium1"));
		}
	}
}

if (attack==AT_FSTRONG){
	if (window==1){
		if (window_timer==1&&!hitpause){
			sound_play(sound_get("down2"));
			v_fstrong = false
			reset_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH);
			reset_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH);
			reset_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH);
		}
	}
	if (window==6){
		if (window_timer==1){
			sound_stop(sound_get("down2"));
		}
		if (!hitpause){
			var hbx_temp = get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X);
			var hby_temp = get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y);
			create_hitbox( AT_FSTRONG, 1, hbx_temp, hby_temp );
		}
	}
	if (window==7){
		if (window_timer<2){
			if (!hitpause&&v_fstrong){
				var hbx_temp = get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X);
				var hby_temp = get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y);
				create_hitbox( AT_FSTRONG, 1, hbx_temp, hby_temp );
			}
		}
	}
}

if (attack==AT_USTRONG){
	if (window==1){
		if (window_timer==1){
			hsp = clamp(hsp, -9,9)
		}
		
	}
	if (window==4||window==3){
		if (!hitpause){
			var ustw3v = get_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH);
			var ustw4v = round(get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH)/4);
			if (window==3&&window_timer==ustw3v||
			window==4&&window_timer == ustw4v||
			window==4&&window_timer == ustw4v*2||
			window==4&&window_timer == ustw4v*3){
				sound_stop(sound_get("swing1"));
				sound_play(sound_get("swing1"));
				var hbx_temp = get_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X);
				var hby_temp = get_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y);
				create_hitbox( AT_USTRONG, 2, hbx_temp, hby_temp );
			}
		}
	}
}


/*                   SPECIALS AAAAAAAAAA                    */

if (attack == AT_NSPECIAL){
	can_move = false;
	can_fast_fall = false;
	if (window==1){
		if (window_timer==1){
			hsp = hsp/1.75;
			nsp_hsp_storage = hsp;
			nsp_vsp_storage = (free)?vsp:-7;
		}
	}
	/*
	if (window==1){
		if (window_timer==1){
			nsp_hsp_storage = hsp;
			nsp_vsp_storage = (free)?vsp:-9;
		}
		if (window_timer==3&&!hitpause){
			sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.6, 0.9);
		}
	}
	if (window<=2){
		if (window_timer==4&&!hitpause){
			sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.4, 0.6);
		}
		nsp_hsp_storage=nsp_hsp_storage/1.08;
		nsp_vsp_storage=nsp_vsp_storage/1.08;
		hsp=nsp_hsp_storage;
		vsp=nsp_vsp_storage;
	}*/
	if (window==2){
		//old values - 6 4 4 6 = 20
		//base value - 8 4 3 8 = 23
		//new values - 6 = 13
		set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);//8
		set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);//5
		set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 3);
		set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 4);//5
		set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 6);//2
		set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME, 5);
		attack_end()
		set_attack( AT_NSPECIAL_AIR );
	}
}
if (attack == AT_NSPECIAL_AIR){
	if (window<6){
		can_move = false;
		can_fast_fall = false;
	}
	if (window<7){
		hud_offset = 50;
	}
	if (window==1&&window_timer==1){
		nsp_hsp_storage = hsp;
		nsp_vsp_storage = (free)?vsp:-9;
	}
	if (window<=5){
		nsp_hsp_storage=nsp_hsp_storage/1.08;
		nsp_vsp_storage=nsp_vsp_storage/1.08;
		hsp=nsp_hsp_storage;
		vsp=nsp_vsp_storage;
		if (!free){
			nsp_vsp_storage = -8;
		}
	}else{
		can_wall_jump = true;
		if (!free){
			set_state( PS_LANDING_LAG );
			landing_lag_time = 12;//18
		}
	}
	if (window>=3&&window<6){
		nsp_vsp_storage = 0;
	}
	if (window==3&&window_timer==1){
		var wave_id = spawn_hit_fx( x+(41*spr_dir), y-46, wavefx );
		wave_id.depth = 5;
	}
	if (window==5&&window_timer==1){
		nsp_hsp_storage = -6 * spr_dir;
		
		//here i spawn void
		var voidID = instance_create(x+(72*spr_dir), y-46, "obj_article2");
		voidID.player_id = id;
		voidID.player = player;
		voidID.spr_dir = 1;
		voidID.image_angle = (spr_dir==1)?0:180;
		voidID.tmpdir = spr_dir;
		move_cooldown[AT_NSPECIAL] = 90;//74
		move_cooldown[AT_NSPECIAL_AIR] = 90;//74
	}
}

if (attack == AT_FSPECIAL){
	if (window<7){
		can_fast_fall = false;
		hsp = clamp(hsp, -1.5, 1.5)
		vsp = clamp(vsp, -16, 4)
	}
	if (window==5&&window_timer==1){
		
		var bubbleID = instance_create(x+(87*spr_dir), y-36, "obj_article1");
		bubbleID.player_id = id;
		bubbleID.player = player;
		bubbleID.spr_dir = 1;
		bubbleID.image_angle = (spr_dir==1)?0:180;
		bubbleID.tmpdir = spr_dir;
		bubbleID.hsp = (3*spr_dir);
		bubbleID.vsp = (!free)?-2:-1;
		/*
		//trailer thing. these must be commented out
		//front-up
		var bubbleID = instance_create(x+((-50+30)*spr_dir), y-72+64, "obj_article1");
		bubbleID.player_id = id;
		bubbleID.player = player;
		bubbleID.spr_dir = 1;
		bubbleID.image_angle = (spr_dir==1)?0:180;
		bubbleID.tmpdir = spr_dir;
		bubbleID.hsp = (5*spr_dir);
		bubbleID.vsp = (!free)?-2:-1;
		//front-down
		var bubbleID2 = instance_create(x+((-40+30)*spr_dir), y-36+64-16, "obj_article1");
		bubbleID2.player_id = id;
		bubbleID2.player = player;
		bubbleID2.spr_dir = 1;
		bubbleID2.image_angle = (spr_dir==1)?0:180;
		bubbleID2.tmpdir = spr_dir;
		bubbleID2.hsp = (6*spr_dir);
		bubbleID2.vsp = -0.5;
		bubbleID2.tier = 2;
		//back
		var bubbleID3 = instance_create(x+((520+30)*spr_dir), y-36+64+8, "obj_article1");
		bubbleID3.player_id = id;
		bubbleID3.player = player;
		bubbleID3.spr_dir = 1;
		bubbleID3.image_angle = (spr_dir==1)?0:180;
		bubbleID3.tmpdir = spr_dir;
		bubbleID3.hsp = (-5.5*spr_dir);
		bubbleID3.vsp = (!free)?-2:-1;
		bubbleID3.tier = 3;
		*/
	}
	if (window==7){
		iasa_script()
	}
}
	
if (attack == AT_USPECIAL){
	if (window<8){
		can_move = false;
		can_fast_fall = false;
	}
	/*if (was_usp){
		draw_y=-24;
	}
	was_usp = true;
	sprite_change_offset("uspecial", 74, 110); //134-110=24*/
	if (window==1&&window_timer==1){
		hurtboxID.sprite_index = sprite_get("na_uspecial_hurtbox");
		usp_slashmode = false;
		usp_release_once = false;
		usp_distance = 10;
		usp_angle = 0;
		usp_angle_f = 0;
		usp_hsp_storage = hsp;
		usp_vsp_storage = (free)?vsp:-9;
		sound_play(sound_get("dimensional"), false, noone, 0.6, 0.6);
		reset_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH);
	}
	if (window<=2||window==3&&window_timer<=16){
		can_shield = true;
	}
	if (window<=3){
		usp_hsp_storage=usp_hsp_storage/1.12;
		usp_vsp_storage=usp_vsp_storage/1.12;
		hsp=usp_hsp_storage;
		vsp=usp_vsp_storage;
		
		//blastzone check
		var test1 = get_stage_data( SD_Y_POS );
		var test2 = get_stage_data( SD_BOTTOM_BLASTZONE );
		if (y + vsp > test1+test2){
			usp_vsp_storage = -4
			vsp = usp_vsp_storage;
		}
	}
	if (window==2||window==3&&window_timer<4){
		if (usp_release_once && special_down){
			window = 4;
			window_timer = 0;
			usp_slashmode = true;
			set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 12);
			set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 20);
			set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 8);
		}
		if (!special_down){
			usp_release_once = true;
		}
	}
	if (window==3){
		usp_distance = ease_linear(10, 55, window_timer, get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH));
		if (!special_down){
			if (window_timer>5){
				window = 4;
				window_timer = 0;
				sound_play(sound_get("shine"), false, noone, 1, 0.7);
			}
		}
		if (window_timer == 32){
			sound_play(sound_get("shine"), false, noone, 1, 0.8);
		}
	}
	//"buffer"
	if (window==4&&!hitpause){
		if (window_timer==1){
			if (!joy_pad_idle){//is not idle
				usp_angle = (round(joy_dir / 22.5) * 22.5);
				usp_angle_f = usp_angle / 180 * -3.14; //45)*45)/180
				//hsp_decide = (usp_distance * cos(usp_angle_f));
				//vsp_decide = (usp_distance * sin(usp_angle_f));
			}else{//is idle
				usp_angle = (round(((spr_dir==1)?67.5:112.5) / 22.5) * 22.5);
				usp_angle_f = usp_angle / 180 * -3.14; //45)*45)/180
				//hsp_decide = (usp_distance * cos(usp_angle_f));
				//vsp_decide = (usp_distance * sin(usp_angle_f));
				//hsp_decide = 0;
				//vsp_decide = -distance;
			}
			
			//hitbox angle set...
			//if (spr_dir == 1){
				if (joy_pad_idle){
						set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80)
				}else if (joy_dir > 90 && joy_dir <= 180){ //top left
					set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, ((spr_dir)?clamp(joy_dir-50, 100, 180):180-(clamp(joy_dir-50, 90, 270) )) );
				}else if (joy_dir >= 0 && joy_dir < 90){ //top right
					set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, ((spr_dir)?clamp(joy_dir+50, 0, 80):180-(clamp(joy_dir+50, 0, 90) )) );
				}else if (joy_dir == 90){ //directly up
					set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90)
				}else if (joy_dir == 270){ //directly down
					set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 270)
				}else{ //if lower half
					if (joy_dir > 270){
						set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, ((spr_dir)?45:180-45))
					}else{
						set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (((spr_dir)?135:180-135)))
					}
				}
			//}
			/*
			if (spr_dir == -1){
				if (joy_dir > 90 && joy_dir < 270){ //(right) half
					set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (clamp(joy_dir+50, 90, 270) - 180) );
				}else{
					if (joy_dir >= 0 && joy_dir <= 90){ //top (left)
						set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (clamp(joy_dir-50, 0, 90) - 180) );
					}
					if (joy_dir >= 270 && joy_dir < 360){ //bottom (left)
						set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (joy_dir-50) - 180);
					}
				}
			}*/
			
			/*
			if (spr_dir == 1){
				if (joy_dir > 90 && joy_dir < 270){ //left half
					set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (clamp(joy_dir-50, 90, 270) ) );
				}else{
					if (joy_dir >= 0 && joy_dir <= 90){ //top right
						set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (clamp(joy_dir+50, 0, 90) ) );
					}
					if (joy_dir >= 270 && joy_dir < 360){ //bottom right
						set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (joy_dir+50) );
					}
				}
			}
			if (spr_dir == -1){
				if (joy_dir > 90 && joy_dir < 270){ //(right) half
					set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (clamp(joy_dir+50, 90, 270) - 180) );
				}else{
					if (joy_dir >= 0 && joy_dir <= 90){ //top (left)
						set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (clamp(joy_dir-50, 0, 90) - 180) );
					}
					if (joy_dir >= 270 && joy_dir < 360){ //bottom (left)
						set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, (joy_dir-50) - 180);
					}
				}
			}
			*/
		}
		if (window_timer==9){
			sound_stop(sound_get("dimensional"));
			sound_play(sound_get("fastslash"), false, noone, 0.9, 1.3);
			hsp_decide = 0;
			vsp_decide = 0;
			//usp_angle is "pure" rounded angle (45, etc)
			//usp_angle_f is "final" angle (0.6, etc)
			//usp_angle_e is one that mimics what's seen in post_draw.gml, "true" final angle
			if (usp_slashmode){
				usp_distance = -20
				
				if (usp_ls_cooldown==0){
					sound_play(sound_get("shine"));
					//at here i create slash
					var disp_y = 38;
					var sldisp = -29;
					var sltx = round(sldisp * cos(usp_angle_e));
					var slty = round(sldisp * sin(usp_angle_e))-disp_y;
					var slashID = instance_create(x+sltx+30, y+slty, "obj_article3");
					slashID.player_id = id;
					slashID.player = player;
					//slashID.spr_dir = spr_dir;
					slashID.image_angle = usp_angle;
					slashID.tmpdir = spr_dir;
					//print_debug( "slashmode "+string(usp_angle_e) )
				}
			}
				hsp_decide = (usp_distance * cos(usp_angle_f));
				vsp_decide = (usp_distance * sin(usp_angle_f));
			draw_indicator = false;
			attack_invince = true;
			invince_time = 4;
			fall_through = true;
			
			var aiID = instance_create(x, y-24, "obj_article3");
			aiID.afterimage_mode = true;
			aiID.player_id = id;
			aiID.player = player;
			aiID.image_angle = usp_angle + ((spr_dir)?0:180);
			aiID.ai_angle_pass = usp_angle_f;
			aiID.tmpdir = spr_dir;
			aiID.spr_dir = spr_dir;
			aiID.backward = usp_slashmode;
		}
	}
	if (window==5&&!hitpause){
		if (window_timer==1){
			var usp_angle_e = ((usp_angle + ((spr_dir)?0:180))*spr_dir) / 180 * -3.14;
			var disp_y = 38;
			var hbdisp = 0;
			var hbtx = 0;
			var hbty = 0;
			
			hbdisp = -29;
			hbtx = round(hbdisp * cos(usp_angle_e));
			hbty = round(hbdisp * sin(usp_angle_e))-disp_y;
			set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, hbtx);
			set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, hbty);
			create_hitbox( AT_USPECIAL, 1, hbtx, hbty );
			hbdisp = 26;
			hbtx = round(hbdisp * cos(usp_angle_e));
			hbty = round(hbdisp * sin(usp_angle_e))-disp_y;
			set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, hbtx);
			set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, hbty);
			create_hitbox( AT_USPECIAL, 2, hbtx, hbty );
			hbdisp = 82;
			hbtx = round(hbdisp * cos(usp_angle_e));
			hbty = round(hbdisp * sin(usp_angle_e))-disp_y;
			set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, hbtx);
			set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, hbty);
			create_hitbox( AT_USPECIAL, 3, hbtx, hbty );
			hbdisp = 139;
			hbtx = round(hbdisp * cos(usp_angle_e));
			hbty = round(hbdisp * sin(usp_angle_e))-disp_y;
			set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, hbtx);
			set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, hbty);
			create_hitbox( AT_USPECIAL, 4, hbtx, hbty );
		}
		hsp=hsp_decide;
		vsp=vsp_decide;
		fall_through = true;
		if (window_timer==3){
			
			var aiID = instance_create(x, y-24, "obj_article3");
			aiID.afterimage_mode = true;
			aiID.player_id = id;
			aiID.player = player;
			aiID.image_angle = usp_angle + ((spr_dir)?0:180);
			aiID.ai_angle_pass = usp_angle_f;
			aiID.tmpdir = spr_dir;
			aiID.spr_dir = spr_dir;
			aiID.backward = usp_slashmode;
			
		}
	}
	if (window==6){
		fall_through = false;
		hurtboxID.sprite_index = sprite_get("na_uspecial_hurtbox");
		//hurtboxID.sprite_index = get_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE);
		draw_indicator = true;
		if (window_timer == 1){
			hsp = clamp(hsp, -5, 5);//5
			vsp = clamp(vsp, -5, 5);
			usp_hsp_storage = hsp;
			usp_vsp_storage = vsp;
		}
	}
	if (window==6||window==7){
		usp_hsp_storage=usp_hsp_storage/1.12;
		usp_vsp_storage=usp_vsp_storage/1.12;
		hsp=usp_hsp_storage;
		vsp=usp_vsp_storage;
	}
	if (window>=8){
		can_wall_jump = true;
		if (!free && !was_parried){
			set_state( PS_LANDING_LAG );
			landing_lag_time = 13;
		}
	}
}



if (attack == AT_DSPECIAL){//22%
	if (window==1&&window_timer==1){
		reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
		init_shader();
		dsp_sep_count = 0;
		dsp_glow_time = 0;
		dsp_glow_max = 27;
		dsp_hsp_storage = hsp;
		dsp_vsp_storage = vsp;
		dsp_air_track = free;
		if (na_dsp_charge >= dspmax){
			set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 14);
			window = 7
			window_timer = 0;
		}else{
			sound_play(sound_get("charge"), false, noone, 0.6, 1);
			sound_play(sound_get("charge2"), false, noone, 0.8, 1);
		}
	}
	if (window<=4){
		can_move = false;
		can_fast_fall = false;
		hsp = clamp(hsp, -3, 3)//3
		vsp = clamp(vsp, -16, 6)//4
	}
	if (window>=2&&window<6){
		if (special_down && !free){
			dsp_air_track = false;
		}
		if (dsp_air_track && !free){
			set_state( PS_LANDING_LAG );
			landing_lag_time = 12;
			if (dsp_sep_count==0){
				na_dsp_charge++;
				clock_timer = clock_dur;
				if (na_dsp_charge >= dspmax){
					sound_play(sound_get("filled"), false, noone, 2, 1);
					white_flash_timer = 40;//18
				}else{
					sound_play(sound_get("tic"), false, noone, 1.2, 0.8);
					white_flash_timer = 6;
				}
			}
		}
	}
	if (window==3){
		dsp_glow_time++;
		if (dsp_glow_time>=dsp_glow_max){
			dsp_glow_time = 0;
		}
		if (window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH)-1){
			dsp_sep_count++;
			if (dsp_sep_count>=7){
				sound_play(sound_get("charge2"), false, noone, 0.6, 1);
				dsp_sep_count = 0;
			}
			na_dsp_charge++;
			clock_timer = clock_dur;
			if (!special_down||na_dsp_charge >= dspmax){
				if (na_dsp_charge >= dspmax){
					sound_play(sound_get("filled"), false, noone, 2, 1);
					white_flash_timer = 40;//18
				}else{
					sound_play(sound_get("tic"), false, noone, 1.2, 0.8);
				}
			window = 4;
			window_timer = 0;
			sound_stop(sound_get("charge"));
			sound_stop(sound_get("charge2"));
			}else if (special_down){
				white_flash_timer = 6;
				sound_play(sound_get("tic"));
				window = 3;
				window_timer = 0;
			}
		}
	}

	
	//beam
	if (window>=7&&window<=10){
		if (window==7&&window_timer==1){
			dsp_hsp_storage = hsp;
			dsp_vsp_storage = vsp;
			sound_play(sound_get("scream3"), false, noone, 1.2, 1);
		}
		can_move = false;
		can_fast_fall = false;
		if (!hitpause){
			dsp_hsp_storage=dsp_hsp_storage/1.08;
			dsp_vsp_storage=dsp_vsp_storage/1.08;
			hsp=dsp_hsp_storage;
			vsp=dsp_vsp_storage;
		}
	}
	if (window==10&&window_timer==2){
		na_dsp_charge = 0;
		sound_play(sound_get("laser"), false, noone, 0.9, 1);
		
		if (get_player_color( player ) == 7){//towerofheaven
			sound_play(sound_get("laser_ea"), false, noone, 0.9, 1);
		}
		
		//quake_timer = quake_dur;
		//shake_camera(intensity, time)
		
		//hitbox time
		//for (var i = 2; i <= 32; i ++;){
		
	}
	if (!hitpause){
	if (window==10||window==11){
		shake_camera(8, 12)
	}	
	if (window==12){
		shake_camera(1, 12)
	}	
	}
	if (window==11||window==12){
		if (window==11&&window_timer==1){
			dsp_hsp_storage=-7*spr_dir
		}
		can_move = false;
		can_fast_fall = false;
		dsp_hsp_storage=dsp_hsp_storage/1.08;
		hsp=dsp_hsp_storage;
		vsp = 0;
	}
	if (window==13){
		can_move = false;
		can_fast_fall = false;
		dsp_hsp_storage=dsp_hsp_storage/1.08;
		hsp=dsp_hsp_storage;
		vsp = clamp(vsp, -16, 1)
	}
	if (window==14){
		hsp = clamp(hsp, -2, 2)
	}
	
	
	
	
	
	
	
}

if (window==1&&window_timer==1){
	var tmp_txt = "death.attack.void";
	switch(attack){
		case AT_FSTRONG: tmp_txt = "Nothing is so much to be feared as fear" break;
		case AT_USTRONG: tmp_txt = "It is what you haven't done that will torment you" break;
		case AT_DSTRONG: tmp_txt = "Never turn around when you don't know what is chasing you" break;
		case AT_JAB: tmp_txt = "You aren't very confident, are you?" break;
		case AT_UTILT: tmp_txt = "Perhaps you've been focusing too much on that one thing" break;
		case AT_DTILT: tmp_txt = "AM I INTERRUPTING? TOO BAD" break;
		case AT_FTILT: tmp_txt = "If you should listen to anyone, listen to yourself" break;
		case AT_NSPECIAL: 
		case AT_NSPECIAL_AIR: 
		case AT_DSPECIAL: tmp_txt = "death.attack.void" break;
		case AT_NAIR: tmp_txt = "Someone can read your mind" break;
		case AT_FAIR: tmp_txt = "Because the night is longest when day does not exist" break;
		case AT_BAIR: tmp_txt = "Do you know what's worse than knowing when the clock stops?
		Not knowing" break;
		case AT_UAIR: tmp_txt = "May his gift serve you as it served me" break;
		case AT_DAIR: tmp_txt = "We are all caught in its web and the web consumes us all" break;
		case AT_USPECIAL: tmp_txt = "Fear is interest paid on a debt you might not owe" break;
		default: tmp_txt = "death.attack.void" break;
	};
	steve_death_message = tmp_txt;
}

if (attack==AT_TAUNT&&window==2&&window_timer==1){
	shake_camera(8, 2)
}
if (attack==AT_TAUNT&&window==5){
	if(window_timer==1){
		shake_camera(18, 3)
		if (get_player_color(player)==6){//axolotl
			sound_play(sound_get( "flower_garden" ));
		}else if (get_player_color(player)==7){//towerofheaven
			sound_play(sound_get( "scream_ea2"), false, noone, 1.1, 1 );
		}else if (get_player_color(player)==9){//crown
			sound_play(sound_get( "scream4" ));
		}else if (get_player_color(player)==10){//astral
			sound_play(sound_get( "scream5" ));
		}else if (get_player_color(player)==11){//doomsday
			sound_play(sound_get( "scream2" ));
			sound_play(sound_get( "scream2" ));
		}else{
			sound_play(sound_get( "scream" ));
			sound_play(sound_get( "scream" ));
	//joke:	create_deathbox(x+(80*spr_dir),y-(char_height/2),40,35,0,true,2,2,2)
			
		}
	}
	if (window_timer==3){
		shake_camera(1, 48)
	}
	
}