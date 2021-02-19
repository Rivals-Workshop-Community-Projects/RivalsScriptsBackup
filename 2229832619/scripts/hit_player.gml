if (my_hitboxID.attack == AT_FSTRONG){
		set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 8);//8
		set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 8);
		if(!v_fstrong){
			v_fstrong = true;
			window = 6;
			window_timer=0;
		}
	if (my_hitboxID.hbox_num==1){
		/*if (v_fstrong<v_fstrong_m){
			if (!hitpause){
				print_debug("fstrongrun")
				var hbx_temp = get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X);
				var hby_temp = get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y);
				create_hitbox( AT_FSTRONG, 1, hbx_temp, hby_temp );
				v_fstrong++;
				window_timer--;
			}
		}*/
		
		sound_stop(sound_get("hit5"));
		sound_stop(sound_get("swing4"));
		sound_play(sound_get("swing4"));
		if (window==7&&window_timer==1){
			sound_play(sound_get("claw"), false, noone, 2.1, 1);
			sound_play(sound_get("hit1"), false, noone, 2.5, 1);
			spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, 304 )
			var hfx = spawn_hit_fx( my_hitboxID.x+(6*spr_dir), my_hitboxID.y, na_ls_fx )
			hfx.draw_angle = 60*spr_dir//(spr_dir==1)?45:315
		}else{
			sound_play(sound_get("hit5"));
			hitstop = 4;
			hitstop_full = 4;
			hit_player_obj.orig_knock = 5;
			hit_player_obj.hitstop = 4;
			hit_player_obj.hitstop_full = 4;
			hit_player_obj.hitstun = 50;
			hit_player_obj.hitstun_full = 50;
			hit_player_obj.should_make_shockwave  = false;
			
			var hfx = spawn_hit_fx( my_hitboxID.x+(random_func( 8, 8, true )*spr_dir), my_hitboxID.y, na_ms_fx )
			hfx.draw_angle = ((spr_dir==1)?45:315)+(random_func( 5, 63, true )-32)
			
			hit_player_obj.x = hit_player_obj.x + (sign(my_hitboxID.x - hit_player_obj.x)*16)
			hit_player_obj.y = hit_player_obj.y + (sign(my_hitboxID.y - hit_player_obj.y)*16)
		}
	}
}

if (my_hitboxID.attack == AT_USTRONG){
	if (my_hitboxID.hbox_num<=3){
		hit_player_obj.na_ust_marked = 11;
		var hfx = spawn_hit_fx( my_hitboxID.x+(random_func( 8, 8, true )*spr_dir), my_hitboxID.y, na_ms_fx )
		hfx.draw_angle = ((spr_dir==1)?45:315)+(random_func( 5, 63, true )-32)
		hit_player_obj.x = hit_player_obj.x + (sign(my_hitboxID.x - hit_player_obj.x)*16)
		hit_player_obj.y = hit_player_obj.y+(sign(my_hitboxID.y-hit_player_obj.y)*5)
	}
	/*if (my_hitboxID.hbox_num==1){
		//var tmp_pause = clamp(round((window_timer-3)*1),4,15)
		window = 5;
		window_timer = 0;
		destroy_hitboxes();
	}*/
	if (my_hitboxID.hbox_num==2){
		//var tmp_pause = clamp(round((window_timer-3)*1),4,15)
		var tmp_wl = get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);
		var tmp_pause = ease_quadInOut( 1, 6, window_timer, tmp_wl )//ease_quadOut
		hit_player_obj.hitstop_full = tmp_pause;
		hit_player_obj.hitstop = tmp_pause;
		hitstop_full = tmp_pause;
		hitstop = tmp_pause;
	}
	if (my_hitboxID.hbox_num==4){
		var hfx = spawn_hit_fx( my_hitboxID.x+(6*spr_dir), my_hitboxID.y, na_ls_fx )
		hfx.draw_angle = (spr_dir==1)?80:280//(spr_dir==1)?45:315
	}
}
if (my_hitboxID.attack == AT_UTILT){
	if (my_hitboxID.hbox_num==1){
		var hfx = spawn_hit_fx( my_hitboxID.x+(6*spr_dir), my_hitboxID.y, na_ms_fx )
		hfx.draw_angle = 180
		sound_play(sound_get("hit2"));
	}
}

if (my_hitboxID.attack == AT_FSPECIAL){
	if (my_hitboxID.hbox_num<=3){
		if (na_dsp_charge < dspmax){
			na_dsp_charge += 4-my_hitboxID.hbox_num;
			white_flash_timer = 6;
			sound_play(sound_get("tic"));
			clock_timer = clock_dur;
		}
		
		if (na_dsp_charge >= dspmax){
			if (attack!=AT_DSPECIAL){
				sound_play(sound_get("filled"), false, noone, 2, 1);
				white_flash_timer = 18;
			}
		}
	}
	if (my_hitboxID.hbox_num>=4){
		//a
		
		if (na_dsp_charge < dspmax){
			na_dsp_charge++;
			white_flash_timer = 6;
			sound_play(sound_get("tic"));
			clock_timer = clock_dur;
		}
		
		if (na_dsp_charge >= dspmax){
			if (attack!=AT_DSPECIAL){
				sound_play(sound_get("filled"), false, noone, 2, 1);
				white_flash_timer = 18;
			}
		}
		
	}
}
/*
if (my_hitboxID.attack == AT_FSPECIAL){
	if (my_hitboxID.hbox_num==4||my_hitboxID.hbox_num==5||my_hitboxID.hbox_num==6){
		var distance = 3;
		var tmp_base_angle = point_direction(hit_player_obj.x, hit_player_obj.y-(hit_player_obj.char_height/2), my_hitboxID.x, my_hitboxID.y)
		var tmp_angle = (tmp_base_angle / 180 * -3.14);
		var b_x_tmp = round(distance * cos(tmp_angle));
		var b_y_tmp = round(distance * sin(tmp_angle));
		my_hitboxID.owner_article.x = my_hitboxID.owner_article.x+b_x_tmp
		my_hitboxID.owner_article.y = my_hitboxID.owner_article.y+b_y_tmp
	}
}*/
if (my_hitboxID.attack == AT_NSPECIAL_AIR){
	if (my_hitboxID.hbox_num==2){
		//hit_player_obj.x = x + (60*spr_dir)
		//hit_player_obj.y = y - 25
		//hit_player_obj.old_hsp = 0
	}else{
		my_hitboxID.owner_article.loop_count++;
	}
}/*
if (my_hitboxID.attack == AT_NSPECIAL){
	hit_player_obj.old_hsp = 0
}*/
	
	
//lol
if (my_hitboxID.attack == AT_JAB){
	if (my_hitboxID.hbox_num==1){
	var hfx = spawn_hit_fx( my_hitboxID.x+(22*spr_dir), my_hitboxID.y-20, na_cs_fx )
	hfx.draw_angle = 160*spr_dir
	}
}
if (my_hitboxID.attack == AT_FTILT){
	var hfx = spawn_hit_fx( my_hitboxID.x+(6*spr_dir), my_hitboxID.y, na_ms_fx )
	hfx.draw_angle = 20*spr_dir
}
if (my_hitboxID.attack == AT_NAIR){
	if (my_hitboxID.hbox_num==1){
	var hfx = spawn_hit_fx( my_hitboxID.x+(6*spr_dir), my_hitboxID.y+10, na_ms_fx )
	hfx.draw_angle = (spr_dir==1)?-120:120
	}
	if (my_hitboxID.hbox_num==2){
	var hfx = spawn_hit_fx( my_hitboxID.x+(-6*spr_dir), my_hitboxID.y-10, na_ms_fx )
	hfx.draw_angle = (spr_dir==1)?140:-140
	}
}
if (my_hitboxID.attack == AT_FAIR){
	var hfx = spawn_hit_fx( my_hitboxID.x+(14*spr_dir), my_hitboxID.y+20, na_cs_fx )
	hfx.draw_angle = -30*spr_dir
}
if (my_hitboxID.attack == AT_BAIR){
	if (my_hitboxID.hbox_num == 1){
	spawn_hit_fx( my_hitboxID.x+(6*spr_dir), my_hitboxID.y, na_ms_fx )
	}
	if (my_hitboxID.hbox_num == 2){
	spawn_hit_fx( my_hitboxID.x+(6*spr_dir), my_hitboxID.y, na_ls_fx )
	sound_play(sound_get("hit1"),false,noone,0.8);
	}
}
if (my_hitboxID.attack == AT_UAIR){
	if (my_hitboxID.hbox_num!=3){
		var hfx = spawn_hit_fx( my_hitboxID.x+(6*spr_dir), my_hitboxID.y, na_ms_fx )
		hfx.draw_angle = 180
	}
}
if (my_hitboxID.attack == AT_DAIR){
	if (my_hitboxID.hbox_num<=3){
	var hfx = spawn_hit_fx( my_hitboxID.x+(12*spr_dir), my_hitboxID.y-24, na_ms_fx )
	hfx.draw_angle = 45*spr_dir
	}
	if (my_hitboxID.hbox_num==4){
	var hfx = spawn_hit_fx( my_hitboxID.x+(32*spr_dir), my_hitboxID.y+12, na_ms_fx )
	hfx.draw_angle = -15*spr_dir
	}
}
if (my_hitboxID.attack == AT_USPECIAL){
	if (my_hitboxID.hbox_num<5){
		var hfx = spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, na_ls_fx )
		hfx.draw_angle = (spr_dir==1)?usp_angle:usp_angle-180
	}
	if (my_hitboxID.hbox_num==5){
		var hfx = spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, na_ls_fx )
		hfx.draw_angle = 90*spr_dir
	}
}




