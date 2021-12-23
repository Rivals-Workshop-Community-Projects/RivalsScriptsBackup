// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_DSTRONG){
    trigger_b_reverse();
}

if (attack==AT_JAB){
	/*if (window==10){
		if (window_timer==3){
			free = true;
			vsp = -7;
		}
	}*/
	if (!hitpause){
		if (window==11){
			free = true;
			vsp = ease_linear( -1, -6, window_timer, 4 );//-7
			can_move = false;
		}	
		if (window==12){ can_move = false; }
	}
}
if (attack==AT_DATTACK){
	if (window==1){
		if (window_timer==1){
			reset_attack_value(AT_DATTACK, AG_CATEGORY);
		}
		if (window_timer==3){
			set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
		}
	}
	if (!hitpause){
		if (window==2){
			var inputdir = (right_down-left_down)*spr_dir
			free = true;
			hsp = ease_sineIn( 7, 3+inputdir, window_timer, 17 )*spr_dir
			vsp = ease_quadIn( 0, -6, window_timer, 17 );
		}	
		if (window<5){ can_move = false; }
	}
}
if (attack==AT_DTILT){
	if (window==1){
		if (window_timer==7){
			spin1 = sound_play(asset_get("sfx_spin"), false, noone, 0.8)
			spin2 = sound_play(asset_get("sfx_spin"), false, noone, 0.6, 1.1)
			//sound_play(asset_get("sfx_spin"), false, noone, 0.8, 0.8)
		}
	}
	/*if (window==1&&window_timer==7){ sound_play(sound_get("multiswing")) }
	if (window==2&&window_timer==4){ sound_play(sound_get("multiswing"),false,noone,0.7,1.1) }
	if (window==2&&window_timer==7){ sound_play(sound_get("multiswing")) }
	if (window==3&&window_timer==4){ sound_play(sound_get("multiswing"),false,noone,0.7,1.1) }*/
	//if (window==3&&window_timer==7){ sound_play(sound_get("multiswing")) }
	
}
if (attack==AT_NAIR){
	if (!hitpause){
	if (window==3){
		if (window_timer==5){ sound_play(sound_get("spin_1"),false,noone,0.5) }
		if (window_timer==11){ sound_play(sound_get("spin_2")) }
	}
	}
}
if (attack==AT_BAIR){
	can_fast_fall = false;
	var bairspd = -17;
	if (!hitpause){
		if (window==1){
			vsp = 0;
			if (window_timer==4){
				if (spr_dir == 1){ bair_hsp_storage = round(clamp(hsp,-16,0)); };
				if (spr_dir == -1){ bair_hsp_storage = round(clamp(hsp,0,16)); };
				hsp = bairspd*spr_dir
			}
		}
		if (window==2){
			vsp = 0;
			hsp = ease_sineOut( bairspd*spr_dir, bair_hsp_storage, window_timer, 12 )
			//hsp = -7*spr_dir
		}
		if (window==3){
			if (window_timer==1){
				hsp = bair_hsp_storage
				bair_used = true;
			}
		}
	}
}
if (attack==AT_FAIR){
	if (window==6&&window_timer==2){ sound_play(sound_get("psy_1")); };
}
if (attack==AT_DAIR){
	if (!hitpause){
		if (window==2){
			if (window_timer==3){ sound_play(sound_get("psy_1")); };
			if (window_timer==6){ sound_play(sound_get("psy_1"),false,noone,0.8); sound_play(sound_get("psy_2")); };
		}
	}
}
if (attack==AT_FSTRONG||attack==AT_DSTRONG||attack==AT_USTRONG){
	if (smash_charging){
		can_move = false;
		vsp = 0;
		hsp = 0;
	}
}
if (attack==AT_FSTRONG){
	if (window<5){
		can_fast_fall = false;
	}
}
if (attack==AT_DSTRONG){
	if (window==1&&window_timer==1){
		dstr_used = true;
		dstr_timer = 0;
		dstr_max = get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH) + get_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH) + get_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH)
	}
	if (!hitpause){
			
		if (window==2||window==3||window==4){
			dstr_timer++;
			hsp = ease_cubeIn( 1, 7, dstr_timer, dstr_max )*spr_dir
			vsp = ease_cubeIn( 1, 3, dstr_timer, dstr_max )
		}
		if (window==5){
			hsp = 8*spr_dir
			vsp = 5
			if (!free||window_timer==12){//||has_hit){
				spawn_hit_fx( x+(14*spr_dir), y-12, ironhead_hfx_1 );
				sound_play(sound_get("iron_3"));
				if (!free){shake_camera( 6, 2 );};
				destroy_hitboxes()
				create_hitbox( AT_DSTRONG, 2, x+(6*spr_dir), y-29 )
				window_timer = 0;
				window = 6;
			}
		}
		if (window==6){
			if (window_timer==1){
				hsp = 2*spr_dir
				vsp = -7+clamp(dstr_counter*2,0,6.5)
				dstr_counter++;
			}
		}
		if (window<5){
			if (!free){
				attack_end();
				set_state( PS_LANDING_LAG );
				landing_lag_time = 10;
			}
		}
		if (window<6){
			can_move = false;
			fall_through = true;
		}
		if (window<7){
			can_fast_fall = false;
		}
	}
}
if (attack==AT_USTRONG){
	if (window==3){if (window_timer==1){ustr_used=true;};};
	if (!hitpause){
		if (window==5){
			vsp = -2
		}
		if (window==6){
			vsp = ease_linear( -2, 0, window_timer, 12 );
		}
	}
	if (!free){
		attack_end();
		set_state( PS_LANDING_LAG );
		landing_lag_time = 10;
	}
	if (window<7){
		can_move = false;
		can_fast_fall = false;
	}
}
if (attack==AT_FSPECIAL){
	if (window==1&&window_timer==1){
		sound_play(sound_get("aerialace_1"))
	}
	if (window==1&&window_timer==7){
		spawn_hit_fx( x+(20*spr_dir), y-9-20, 194 );
	}
	if (window==2){
		fsp_used = true;
	}
	if (window>2){
		can_wall_jump = true;
	}
	if (!hitpause){
		if (window==3){
			var inputdir = (right_down-left_down)*spr_dir
			hsp = ease_linear( 9, 6+inputdir, window_timer, 8 )*spr_dir
		}
		if (window==5){
			iasa_script();
		}
		if (window>1){
			if (!free){
				attack_end();
				set_state( PS_LANDING_LAG );
				
				landing_lag_time = 10;
			}
		}
	}
	if (window<5){
		can_move = false;
	}
}
if (attack==AT_USPECIAL){
	if (!hitpause){
		if (window<5){
			can_move = false;
		}
		if (window==1){
			hsp = clamp(hsp, -5,5)
			vsp = -3.5;
		}
		if (window==2){
			if (window_timer==1){
				usp_h = 5*(right_down-left_down);
			}
			hsp = ease_quadIn( usp_h, round(usp_h/2), window_timer, 9 );//0
			vsp = ease_quadOut( -26, -3, window_timer, 9 )//this is the speed//-24
		}
		if (window==2||window==3){
			if (get_gameplay_time()%2==0){
				var nsprand = random_func( 2, 6, true )//0-5
				var nsprand2 = random_func( 3, 64, true )//0-5
				if (nsprand==0||nsprand==1){ spawn_hit_fx( (x-30-(2*spr_dir))-(8-nsprand2), y, sparkles3 ); };
				if (nsprand==2||nsprand==3){ spawn_hit_fx( (x-30-(2*spr_dir))-(8-nsprand2), y, sparkles2 ); };
				if (nsprand==4||nsprand==5){ spawn_hit_fx( (x-30-(2*spr_dir))-(8-nsprand2), y, sparkles1 ); };
			}
		}
		if (window==3){
			if (window_timer==1){
				usp_h = round(hsp);
			}
			hsp = ease_linear( usp_h, 0, window_timer, 9 );//0
			if (window_timer==9){
		spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-72+random_func( 8, 96, true ), sparkles1 );
		spawn_hit_fx( x-40+random_func( 2, 80, true ), y-(char_height/2)-72+random_func( 9, 96, true ), sparkles3 );
		spawn_hit_fx( x-40+random_func( 3, 80, true ), y-(char_height/2)-72+random_func( 10, 96, true ), sparkles2 );
		spawn_hit_fx( x-40+random_func( 4, 80, true ), y-(char_height/2)-72+random_func( 11, 96, true ), sparkles1 );
		spawn_hit_fx( x-40+random_func( 5, 80, true ), y-(char_height/2)-72+random_func( 12, 96, true ), sparkles3 );
		spawn_hit_fx( x-40+random_func( 6, 80, true ), y-(char_height/2)-72+random_func( 13, 96, true ), sparkles2 );
		spawn_hit_fx( x-40+random_func( 7, 80, true ), y-(char_height/2)-72+random_func( 14, 96, true ), sparkles2 );
			}
		}
		if (window>=4){
			can_wall_jump = true;
			hsp = clamp(hsp, -3,3)
		}
	}
}
if (attack==AT_DSPECIAL){
	can_fast_fall = false;
	if (window==1&&window_timer==1){
		//idk yet
		dsp_h = round(hsp);
		dsp_v = clamp(round(vsp),-6,6);
	}
	if (window==1){
		//hsp = ease_linear( abs(dsp_h), round(abs(dsp_h)/2), window_timer, 12 )*spr_dir
		//vsp = ease_linear( dsp_v, round(dsp_v/2), window_timer, 12 )
		hsp = ease_linear( dsp_h, round(dsp_h/4), window_timer, 12 )
		vsp = ease_linear( dsp_v, round(dsp_v/4), window_timer, 12 )
	}
	if (window==2){
		if (window_timer==1){
			//
			/*AR lightning code for reference
			var lg_temp_y = 40;
			var max_temp_y = 320; //prenerf:350
			while ((lg_temp_y < max_temp_y) && (!position_meeting(x,y+lg_temp_y, asset_get ("par_block"))) && (!position_meeting(x,y+lg_temp_y, asset_get("par_jumpthrough")))){
				lg_temp_y++;
			}
			var ARLightn = instance_create(x-(3*(spr_dir)), y+((floor(lg_temp_y/2))-40), "obj_article2"); //y-42*/var dd_temp_y = 0; //i forgot what lg means- oh i think it's LightninG?
			var max_temp_y = 200; //max distance
			while ( (dd_temp_y < max_temp_y) && (!position_meeting(x,y+dd_temp_y, asset_get ("par_block"))) ){
				dd_temp_y+=2;
			}
			doomdesire_storage = instance_create( x+(4*spr_dir), y+dd_temp_y, "obj_article1" );
			eye_hfx_storage = spawn_hit_fx( x+(8*spr_dir), y-50, eye_hfx );
			move_cooldown[AT_DSPECIAL] = doomdesire_cooldown_amount
		}
		//hsp = ease_linear( round(abs(dsp_h)/2), 0, window_timer, 22 )*spr_dir
		//vsp = ease_linear( round(dsp_v/2), 0, window_timer, 22 )
		//hsp = sign(dsp_h); vsp = sign(dsp_v);
		hsp = ease_linear( round(dsp_h/4), 0, window_timer, 22 )
		vsp = ease_linear( round(dsp_v/4), 0, window_timer, 22 )
	}
	if (window<4){
		can_move = false;
	}
	if (window==4){
		iasa_script();
	}
}











if (attack==AT_TAUNT){
	if (window==1){
		if (window_timer==5){
			if (get_player_color(player)==6){sound_play(sound_get("m'"));}else{sound_play(sound_get("jirachi_cry"));}
		}
	}
}