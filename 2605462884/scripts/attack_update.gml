// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack==AT_JAB){
	can_move = false;
	was_parried = false;
	if (!hitpause){
		hsp = clamp(hsp + ((walk_accel/(1+free))*(right_down-left_down)), -3.5, 3.5)
	}
	//spr_dir = jab_dir
	item_cell = equip_rand
	if (window==6){
		if (!free && !was_parried){
			can_jump = true;
			if (attack_pressed||attack_down||right_stick_down||left_stick_down){
				attack_end()
				window = 1;
				window_timer = 0;
			}
		}
	}
}


if (attack==AT_NAIR){
	if (window==1){
		var wtm = get_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH);
		if (window_timer==wtm-1){
			var snd_dec = nair_count_before_land/10
			sound_play(asset_get("sfx_ori_glide_featherout"),false,noone,1-snd_dec,1.1-snd_dec)
		}
	}
	if (window==2){
		if (window_timer==1){
			if (!hitpause){
				if (!down_down){
					vsp = -6/((nair_count_before_land*2)-1)
				}
			}
		}
	}
}


if (attack==AT_DATTACK){
	if (window == 1){
		if (window_timer == 9){
			if (!hitpause){
				if (!dattack_c_cooldown){
					var temp_x = 70;
					var max_temp_x = 30;
					while (temp_x > max_temp_x
					&& (position_meeting(x+temp_x*spr_dir, y-40, asset_get("par_block"))) ){
						temp_x--;
					}
					var thrower = instance_create(x+(temp_x*spr_dir), y-40, "obj_article2");
					thrower.spr_dir = spr_dir;
					dust_spawn(x+(temp_x*spr_dir), y-10, 19, false, 7, 6, 1);
					sound_play(sound_get("put_down_softer"))
					create_hitbox( AT_DATTACK, 2, x, y )
				}else{
					sound_play(sound_get("cannot"),false,noone,0.9)
				}
			}
		}
	}
}

if (attack==AT_UTILT){
	if (window==3){
		if (window_timer==6){
			sparkle_spawn(x, y-108, 30, false, 6, 0, 0, 0) //(x, y, spread, horizontal, amount, type, horiz, vert)
		}
	}
}

if (attack==AT_DTILT){
	if (window==1){
		if (window_timer==6){
			if (!dtilt_cur_cool){
				var s_item = create_hitbox( AT_DTILT, 1, x+(51*spr_dir), y-40 )
				s_item.image_index = item_rand;
				dtilt_c_cooldown = 120
				sound_play(sound_get("jump"),false,noone,0.9)
			}else{
				sound_play(sound_get("cannot"),false,noone,0.9)
			}
			sound_play(asset_get("sfx_swipe_weak1"),false,noone,0.7,0.7)
		}
	}
}

if (attack==AT_UAIR){
	if (!hitpause){
		if ( (window==1&&window_timer==7)||(window==2&&(window_timer==3||window_timer==6||window_timer==9)) ){
			attack_end();
			create_hitbox( AT_UAIR, 1, x+(51*spr_dir), y-40 )
			sparkle_spawn(x, y-120, 29, false, 2, 2, 0, 0) //(x, y, spread, horizontal, amount, type, horiz, vert)
			sound_play(sound_get("click"))
		}
		if (window==2&&window_timer==12){
			sparkle_spawn(x, y-120, 40, false, 6, 2, 0, 0) //(x, y, spread, horizontal, amount, type, horiz, vert)
		}
	}
}
if (attack==AT_DAIR){
	if (window==1&&window_timer<6){
		item_cell = 9
	}else{
		item_cell = get_player_color( player );
	}
	if (window==1&&window_timer==5){
		dust_spawn(x-(10*spr_dir), y-92, 19, false, 7, 6, 1);
		sound_play(sound_get("put_down_softer"))
	}
}
if (attack==AT_FAIR){
	var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	if (!hitpause){
	if (window==2&&window_timer==window_length){
		var tetst = instance_create(x+(65*spr_dir), y-48, "obj_article3");
		//tetst.display_expire = true;
		tetst.sprite_index = sprite_get("solid_grey");
		tetst.image_index = get_player_color( player );
		tetst.state_end = 30;
		create_hitbox( AT_FAIR, 2, x+(65*spr_dir), y-48 )
		dust_spawn(x+(65*spr_dir), y-48, 19, false, 4, 6, 1);
		sound_play(sound_get("put_down_softer"))
	}
	}
}
if (attack==AT_BAIR){
	var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	item_cell = epicgun_rand;
	if (!hitpause){
		if (window==4&&window_timer==window_length){
			hsp = clamp(hsp + (2.5*spr_dir), -7, 7)//6.5
			var f_item = create_hitbox( AT_BAIR, 2, x+(-50*spr_dir), y-40 )
			f_item.image_index = epicgun_rand;
			f_item.spr_dir = spr_dir*-1;
			f_item.hsp = 11*(spr_dir*-1);
			sound_play(sound_get("epic_horns_2"),false,noone,1)
			spawn_hit_fx( x+(-50*spr_dir), y-40, 305 )
		}
	}
	
}



if (attack==AT_FSTRONG){
	var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	if (!hitpause){
	//2 6 10
	//block size is 21 -> trim one corner of border -> 20 -> 2x -> 40
	//autobuild line starts from the blocks you started building from, so start behind explorer
	// 0   1   2   3   4   5   6
	//[1] [2] _5_ _6_ _7_ [4] [3]
	var b_x = -25//-65
	if (window==1&&window_timer==1){hsp = 0;}
	if (window==1&&window_timer==2){
		var x_off = b_x+(40*0); fst_track[0] = instance_create(x+(x_off*spr_dir), y-36, "obj_article3");
		fst_track[0].sprite_index = sprite_get("solid_grey"); fst_track[0].image_index = get_player_color( player );
		fst_track[0].depth = 2; fst_track[0].state_end = 30; fst_track[0].image_alpha = 0.85;
		dust_spawn(x+(x_off*spr_dir), y-36, 19, false, 3, 2, 1); sound_play(sound_get("put_down_softer"))
	}
	if (window==1&&window_timer==7){
		var x_off = b_x+(40*1); fst_track[1] = instance_create(x+(x_off*spr_dir), y-36, "obj_article3");
		fst_track[1].sprite_index = sprite_get("solid_grey"); fst_track[1].image_index = get_player_color( player );
		fst_track[1].depth = 2; fst_track[1].state_end = 30; fst_track[1].image_alpha = 0.85;
		dust_spawn(x+(x_off*spr_dir), y-36, 19, false, 3, 2, 1); sound_play(sound_get("put_down_softer"))
	}
	if (window==1&&window_timer==12){
		var x_off = b_x+(40*6); fst_track[2] = instance_create(x+(x_off*spr_dir), y-36, "obj_article3");
		fst_track[2].sprite_index = sprite_get("solid_grey"); fst_track[2].image_index = get_player_color( player );
		fst_track[2].depth = 2; fst_track[2].state_end = 30; fst_track[2].image_alpha = 0.85;
		dust_spawn(x+(x_off*spr_dir), y-36, 19, false, 3, 2, 1); sound_play(sound_get("put_down_softer"))
	}
	if (window==2&&window_timer==window_length){
		var x_off = b_x+(40*5); fst_track[3] = instance_create(x+(x_off*spr_dir), y-36, "obj_article3");
		fst_track[3].sprite_index = sprite_get("solid_grey"); fst_track[3].image_index = get_player_color( player );
		fst_track[3].depth = 2; fst_track[3].state_end = 30; fst_track[3].image_alpha = 0.85;
		dust_spawn(x+(x_off*spr_dir), y-36, 19, false, 3, 6, 1); sound_play(sound_get("put_down_softer"))
	}
	//attacks
	if (window==2&&window_timer==window_length){
		var x_off = b_x+(40*2); fst_track[4] = instance_create(x+(x_off*spr_dir), y-36, "obj_article3");
		fst_track[4].sprite_index = sprite_get("solid"); fst_track[4].image_index = get_player_color( player );
		dust_spawn(x+(x_off*spr_dir), y-36, 19, false, 3, 6, 1); sound_play(sound_get("put_down_softer"))
		create_hitbox( AT_FSTRONG, 1, x+(x_off*spr_dir), y-36 )
	}
	if (window==3&&window_timer==3){
		var x_off = b_x+(40*3); fst_track[5] = instance_create(x+(x_off*spr_dir), y-36, "obj_article3");
		fst_track[5].sprite_index = sprite_get("solid"); fst_track[5].image_index = get_player_color( player );
		dust_spawn(x+(x_off*spr_dir), y-36, 19, false, 3, 6, 1); sound_play(sound_get("put_down_softer"))
		create_hitbox( AT_FSTRONG, 1, x+(x_off*spr_dir), y-36 )
	}
	if (window==3&&window_timer==6){
		var x_off = b_x+(40*4); fst_track[6] = instance_create(x+(x_off*spr_dir), y-36, "obj_article3");
		fst_track[6].sprite_index = sprite_get("solid"); fst_track[6].image_index = get_player_color( player );
		dust_spawn(x+(x_off*spr_dir), y-36, 19, false, 3, 6, 1); sound_play(sound_get("put_down_softer"))
		create_hitbox( AT_FSTRONG, 2, x+(x_off*spr_dir), y-36 )
	}
	/*if (window==2&&window_timer==window_length){
		var tetst = instance_create(x+(65*spr_dir), y-48, "obj_article3");
		//tetst.display_expire = true;
		tetst.sprite_index = sprite_get("solid_grey");
		tetst.image_index = get_player_color( player );
		tetst.state_end = 30;
		create_hitbox( AT_FAIR, 2, x+(65*spr_dir), y-48 )
		dust_spawn(x+(65*spr_dir), y-48, 19, false, 7, 6, 1);
		sound_play(sound_get("put_down_softer"))
	}*/
	for (var i = 0; i <= fst_track_amt; i += 1){
		if (fst_track[i]!=-4){
			fst_track[i].state_timer = 0;
		}
	}
	if (window==5){
		for (var i = 0; i <= fst_track_amt; i += 1){
			if (fst_track[i]!=-4){
				fst_track[i].state_timer = fst_track[i].state_end;
				fst_track[i] = -4;
			}
		}
		
	}
	}//hitpause
}
if (attack==AT_USTRONG){
	item_cell = emitter_rand
	if (!hitpause){
	if (window == 4){
		if (window_timer == 1){
			var ustr_a = create_hitbox( AT_USTRONG, 1, x+((14+0)*spr_dir), y-90 )
			var ustr_b = create_hitbox( AT_USTRONG, 1, x+((14+8)*spr_dir), y-90 )
			var ustr_c = create_hitbox( AT_USTRONG, 1, x+((14-8)*spr_dir), y-90 )
			ustr_a.image_index = emitter_rand
			ustr_b.image_index = emitter_rand
			ustr_c.image_index = emitter_rand
			ustr_a.spr_dir = 1
			ustr_b.spr_dir = 1
			ustr_c.spr_dir = 1
			ustr_a.proj_angle = 90
			ustr_b.proj_angle = 90-(20*spr_dir)
			ustr_c.proj_angle = 90+(20*spr_dir)
			ustr_a.hsp = 0
			ustr_a.vsp = -9
			ustr_b.hsp = 3.2*spr_dir
			ustr_b.vsp = -8
			ustr_c.hsp = -3.2*spr_dir
			ustr_c.vsp = -8
			sound_play(sound_get("laser_shot"))
		}
	}
	}
}
if (attack==AT_DSTRONG){
	if (!hitpause){
	if (window == 2){
		if (window_timer == 5){
			var dstr_a = create_hitbox( AT_DSTRONG, 1, x+(32*spr_dir), y-18 )
				dust_spawn(x+(38*spr_dir), y-8, 18, true, 3, 6, 1);
				sparkle_spawn(x+(38*spr_dir), y-19, 26, false, 6, 2, 0, 0)
				//(x, y, spread, horizontal, amount, type, horiz, vert)
			var dstr_b = create_hitbox( AT_DSTRONG, 1, x-(32*spr_dir), y-18 )
				dust_spawn(x-(38*spr_dir), y-8, 18, true, 3, 6, 1);
				sparkle_spawn(x-(38*spr_dir), y-19, 26, false, 6, 2, 0, 0)
			dstr_a.image_index = deadly_rand;
			dstr_b.image_index = deadly_rand;
			//dstr_a.other_hbox = dstr_b
			//dstr_b.other_hbox = dstr_a
		}
	}
	}
}

if (attack==AT_NSPECIAL){
	if (!hitpause){
	if (window==1){
		if (window_timer==1){
			if (nsp_remain>0){
				if (nsp_ground){
					vsp = -13;
				}
			}
		}
		if (window_timer==4){
			//instance_create(x, y+19, "obj_article_solid");
			if (nsp_remain>0){
				vsp = 0;
				hsp = 0;
				var temp_y = 19;
				var max_temp_y = -40;
				while (temp_y > max_temp_y
				&& (position_meeting(x, y+temp_y+17, asset_get("par_block")))){
					temp_y-=1;
				}
				var tetst = instance_create(x, y+temp_y, "obj_article_solid");
				//create_hitbox( AT_NSPECIAL, 1, x, y+temp_y )
				nsp_remain--;
				nsp_inc = 0;
				dust_spawn(x, y+temp_y, 19, false, 7, 6, 1);
				sound_play(sound_get("put_down_softer"))
				sound_play(sound_get("put_down_softer"),false,noone,0.75)
				if (!nsp_ground){
					y=y+temp_y-19;
				}
			}else{
				sound_play(sound_get("cannot"),false,noone,0.9)
			}
		}
	}
	}
}

if (attack==AT_DSPECIAL){
	if (window==1){
		if (boostinit||boost_duration){
			window = 5;
			window_timer = 0;
			sound_play(sound_get("cannot"),false,noone,0.9)
		}
	}
	if (window==2||window==3){
		if (shield_down){
			window = 5;
			window_timer = 0;
		}
		boost_selected_prev = boost_selected
		if (down_down){
			boost_selected = 4
		}else if (right_down){
			boost_selected = 2
		}else if (left_down){
			boost_selected = 3
		}else if (up_down){
			boost_selected = 1
		}//else{boost_selected = 0};
		if (boost_selected!=boost_selected_prev){
			sound_stop(sound_get("click"))
			sound_play(sound_get("click"))
		}
	}
	if (window==3){
		if (special_down){
			window = 2
			window_timer = 5;
		}else{
			if (boost_left==0||boost_selected==0){
				window = 5;
				window_timer = 0;
				if (boost_left==0){sound_play(sound_get("cannot"),false,noone,0.9)}
			}else{
				sound_play(sound_get("boost"))
				window = 4;
				window_timer = 0;
				boost_left--;
				boostinit = true;
			}
		}
	}
}


if (attack==AT_USPECIAL){
	fall_through = true;
		usp_did = true;
	//move_cooldown[AT_USPECIAL] = 2;
	//oh my god this specific code is a mess i hate this
	if (window==1){
		if (window_timer==1){
			bouncy_track = instance_create(x, y+20, "obj_article3");
			bouncy_track.state_end = 80
			bouncy_track.sprite_index = sprite_get("bouncy");
			bouncy_track.image_index = bouncy_rand;
			bouncy_track.ignores_walls = false;
			if (!free){
				free = true;
				hsp = 0;
				y-=8;
				vsp=-9;
				window_timer = 14
			}
		}
	}
	if (window==4){
		if (window_timer>14){
			//can_wall_jump = true;
			iasa_script();
		}
	}
		if (window<=3){
			can_move = false;
		}
	if (bouncy_track != -4){
		var temp_y = bouncy_y_max;
		var max_temp_y = 6;
		while (temp_y > max_temp_y
		&& (position_meeting(x, y+temp_y, asset_get("par_block")))){
			temp_y-=1;
		}
		if (window==1){
			var y_off = ease_cubeOut( 20, temp_y, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH) )
			bouncy_track.y = y+y_off
		}
		if (window<=3){
			bouncy_track.x = x;
			bouncy_track.state_timer = 0;
			hsp = clamp(hsp, -3, 3);
			vsp = clamp(vsp, -6, 5);
			if (left_down){
				bouncy_dirselect = 45
			}else if (right_down){
				bouncy_dirselect = -45
			}else {
				bouncy_dirselect = 0;
			}
			bouncy_track.image_angle = bouncy_dirselect;
		}
		if (window==2||window==3){
			bouncy_track.y = y+temp_y;
		}
		if (state_timer>6&&(place_meeting(x,y,bouncy_track))){//||(window==3&&!special_down)){//&&window_timer>((window==1)?3:0)
			bouncy_track.bouncy = true;
			bouncy_track.display_expire = true;
			bouncy_track = -4;
			window = 4;
			window_timer = 0;
			dust_spawn(x, y+temp_y, 19, false, 7, 6, 1);
			sound_play(sound_get("put_down_softer"))
		}
		if (window==2||window==3){
			if (!special_down){
				bouncy_track.bouncy = true;
				bouncy_track.display_expire = true;
				bouncy_track = -4;
				dust_spawn(x, y+temp_y, 19, false, 7, 6, 1);
				sound_play(sound_get("put_down_softer"))
			}
		}
	}
}



//fspecial - cursor grab.
if (attack==AT_FSPECIAL){
	if (window==1){
		if (window_timer==1){
			grabbed_player_obj = noone; 
			grabbed_player_relative_x = 0;
			grabbed_player_relative_y = 0;
		}
	}
}

//mawral's grab code! altered by me of course
if ((attack == AT_NTHROW||attack == AT_FTHROW||attack == AT_BTHROW
	||attack == AT_DTHROW||attack == AT_UTHROW) && instance_exists(grabbed_player_obj)) {
	vsp = 0; hsp = 0; can_move = false;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { take_damage( grabbed_player_obj.player, player, 3 ); grabbed_player_obj = noone; grab_cooldown = grab_cooldown_amt; sound_play(sound_get("jump")); sound_play(sound_get("jump"));}
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }	else {//if they have not...
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2; grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (attack==AT_NTHROW){
			if (window == 1) {
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = (80*spr_dir);
				var pull_to_y = (grabbed_player_obj.char_height/2)-110;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
		}//nthrow
		if (attack==AT_FTHROW){
			grabbed_player_obj.old_hsp = 3*spr_dir;
			if (window == 1) {
				var pull_to_x = (90*spr_dir);
				var pull_to_y = (grabbed_player_obj.char_height/2)-110;
				
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_backIn( grabbed_player_relative_x, pull_to_x, window_timer, window_length, 50);
				grabbed_player_obj.y = y + ease_backIn( grabbed_player_relative_y, pull_to_y, window_timer, window_length, 50);
			}
		}//fthrow
		if (attack==AT_BTHROW){
			grabbed_player_obj.old_hsp = -3*spr_dir;
			if (window == 1) {
				var pull_to_x = (-60*spr_dir);
				var pull_to_y = (grabbed_player_obj.char_height/2)-110;
				
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_backIn( grabbed_player_relative_x, pull_to_x, window_timer, window_length, 4);
				grabbed_player_obj.y = y + ease_backIn( grabbed_player_relative_y, pull_to_y, window_timer, window_length, 4);
			}
		}//bthrow
		if (attack==AT_UTHROW){
			grabbed_player_obj.old_hsp = -1*spr_dir;
			grabbed_player_obj.old_vsp = -8;
			if (window == 1) {
				var pull_to_x = (30*spr_dir);
				var pull_to_y = (grabbed_player_obj.char_height/2)-130;
				
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_backIn( grabbed_player_relative_x, pull_to_x, window_timer, window_length, 4);
				grabbed_player_obj.y = y + ease_backIn( grabbed_player_relative_y, pull_to_y, window_timer, window_length, 20);
			}
		}//uthrow
		if (attack==AT_DTHROW){
			grabbed_player_obj.old_hsp = -2*spr_dir;
			grabbed_player_obj.old_vsp = -5;
			if (window == 1) {
				var pull_to_x = (((free)?0:75)*spr_dir);
				var pull_to_y = (grabbed_player_obj.char_height/2)+((free)?60:-40);
				
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_backIn( grabbed_player_relative_x, pull_to_x, window_timer, window_length, 4);
				grabbed_player_obj.y = y + ease_backIn( grabbed_player_relative_y, pull_to_y, window_timer, window_length, 3);
			}
		}//dthrow
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

if (attack==AT_NTHROW){
	//nthrow is a buffer before you throw/decide throw direction
	if (window>=2){
		if ((spr_dir==1&&right_down)||(spr_dir==-1&&left_down)||window==3){
			set_attack(AT_FTHROW);
		}
		if ((spr_dir==1&&left_down)||(spr_dir==-1&&right_down)){
			set_attack(AT_BTHROW);
		}
		if (down_down){
			set_attack(AT_DTHROW);
		}
		if (up_down){
			set_attack(AT_UTHROW);
		}
	}
}


















if (attack==AT_TAUNT){
	if (window==1){
		if (window_timer==1){
			chair = instance_create(x-(12*spr_dir), y-18, "obj_article3");
			chair.sprite_index = sprite_get("chair")
			chair.image_index = chair_rand
			chair.spr_dir = spr_dir
			dust_spawn(x-(12*spr_dir), y-18, 19, false, 7, 6, 1);
			sound_play(sound_get("put_down_softer"))
		}
	}
	if (window==3){
		//iasa_script()
		can_jump = true;
		//can_attack = true;
		//can_strong = true;
		//can_special = true;
		can_shield = true;
		if (left_down||right_down){
			state = PS_WALK;
			state_timer = 0;
			spr_dir = (left_down)?-1:(right_down)?1:1;
		}
	}else{
		can_move = false;
	}
	chair.state_timer = 1;
}


//copypasted from update
#define dust_spawn(x, y, spread, horizontal, amount, pattern, type) //dust_spawn(x, y, 15, false, 4, 0, 1)
//here i spawn dust
//dust_spawn(x, y, 15, false, 4, 0, 1)
//(x, y, spread, horizontal, amount, pattern, type)
var dx = argument0
var dy = argument1
var spw = argument2
var sph = (argument5==3)?1:(argument3)?2:argument2
var amt = clamp(argument4, 1, 5)
var ptn = argument5 //0 = spread, 1 = upward, 2 = still, 3 = tiny, 4 = left, 5 = right, 6 = semispread
var typ = argument6 //0/1 = big, 2 = small

for (var i = 0; i < amt; i += 1){//for

//hey future me, if you ever end up needing to tweak this
//
//i'm sorry
//- hyuponia 2021 08 02
var dID = instance_create(dx-spw+random_func( 1+i, spw*2, true ), dy-sph+random_func( 8+i, sph*2, true ), "obj_article1");
dID.dust_type = typ;
dID.hsp = (ptn == 6)? ((-1)+random_func( 1+i, 2, false )) : (ptn == 5)? ((3)+random_func( 1+i, -3, false )) : (ptn == 4)? ((-3)+random_func( 1+i, 3, false )) : (ptn == 3)? ((-1)+random_func( 1+i, 1, false )) : (ptn != 2)? ((-3)+random_func( 1+i, 6, false )) : 0;
dID.vsp = (ptn == 6)? ((-1)+random_func( 1+i, 2, false )) : (ptn == 3||ptn == 4||ptn == 5)? ((-1)+random_func( 8+i, 1, false )) : (ptn == 1)? ((-2)+random_func( 8, 1, false )) : (ptn != 2)?((-1.5)+random_func( 8+i, 3, false )) : 0;
if (ptn == 4||ptn == 5){dID.no_lerp=true;dID.state_end=20;}
if (ptn == 2){dID.image_alpha=0.5;dID.depth=1;}

}//for

/*
	spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-48+random_func( 8, 96, true ), particle1 );
	spawn_hit_fx( x-40+random_func( 2, 80, true ), y-(char_height/2)-48+random_func( 9, 96, true ), particle3 );
	spawn_hit_fx( x-40+random_func( 3, 80, true ), y-(char_height/2)-48+random_func( 10, 96, true ), particle2 );
	spawn_hit_fx( x-40+random_func( 4, 80, true ), y-(char_height/2)-48+random_func( 11, 96, true ), particle1 );
	spawn_hit_fx( x-40+random_func( 5, 80, true ), y-(char_height/2)-48+random_func( 12, 96, true ), particle3 );
	spawn_hit_fx( x-40+random_func( 6, 80, true ), y-(char_height/2)-48+random_func( 13, 96, true ), particle2 );
	spawn_hit_fx( x-40+random_func( 7, 80, true ), y-(char_height/2)-48+random_func( 14, 96, true ), particle2 );
*/


#define sparkle_spawn(x, y, spread, horizontal, amount, type, horiz, vert) //dust_spawn(x, y, 15, false, 4, 0, 1)
//here i spawn sparkle
//sparkle_spawn(x, y, 15, false, 4, 1, hsp, vsp)
//(x, y, spread, horizontal, amount, type, horiz, vert)
var dx = argument0
var dy = argument1
var spw = argument2
var sph = argument2
var amt = clamp(argument4, 1, 7)
var typ = argument5 //0/1 = big, 2 = small
var hrz = argument6 //hsp
var vrt = argument7 //vsp

for (var i = 0; i < amt; i += 1){//for
var sID = instance_create(dx-spw+random_func( 1+i, spw*2, true ), dy-sph+random_func( 8+i, sph*2, true ), "obj_article1");
sID.particle_type = 1;
sID.sparkle_type = typ;
sID.hsp = hrz;
sID.vsp = vrt
sID.state_end = 12;

}




