//post-draw

if (walkin){
	draw_sprite_ext( sprite_get("wearable_heavy"), heavy_rand, x, y, spr_dir*2, 2, 0, -1, 1 )
}
if (doublejumped){
	draw_sprite_ext( sprite_get("wearable_double"), double_rand, x, y, spr_dir*2, 2, 0, -1, 1 )
}
if (state==PS_AIR_DODGE){//||state==PS_TECH_GROUND){
	if (state_timer>0&&state_timer<13){
	draw_sprite_ext( sprite_get("wearable_invince"), invince_rand, x, y, spr_dir*2, 2, 0, -1, 1 )
	}
}
if (state==PS_RESPAWN){
	draw_sprite_ext( sprite_get("plat"), 0, x, y, 2, 2, 0, -1, 1 )
}


shader_start()

if (blink_time>0){
	//draw_sprite( sprite_get("main"), 12, x, y )
	draw_sprite_ext( body, 12, x, y, spr_dir, 1, 0, -1, 1 )
}



if (state==PS_ATTACK_AIR||state==PS_ATTACK_GROUND){
	if ( get_attack_value(attack, AG_PSEUDO_DYNAMIC) == 1 ){
		if ( get_window_value(attack, window, AG_IN_FRONT) == 1 || get_attack_value(attack, AG_PD_ALWAYS_FRONT) == 1 ){
			user_event( 0 );
		}
	}
	if (attack==AT_UTILT){
		switch (window){
			case 3:
			case 2:
				draw_sprite_ext( sprite_get("canvas"), 0, x, y-76, 2, 2, 0, -1, 1 )
			break;
			case 4:
				draw_sprite_ext( sprite_get("canvas"), 1, x, y-76, 2, 2, 0, -1, 1 )
			break;
			
			default: break;
		}
	}//utilt
	if (attack==AT_DTILT){
		if (!dtilt_cur_cool){
			if (window==1){
				draw_sprite_ext( sprite_get("item"), item_rand, x+(32*spr_dir), y-56, spr_dir, 1, 0, -1, 1 )
			}
		}
	}//dtilt
	if (attack==AT_DATTACK){
		if (window==1){
			if (!dattack_c_cooldown){
				draw_sprite_ext( sprite_get("thrower"), thrower_rand*2, x-(6*spr_dir), y-96, spr_dir*2, 2, 0, -1, 1 )
			}
		}
	}//dattack
	if (attack==AT_UAIR){
		if (window==1){
			var x_off = ease_linear( 40, 20, window_timer, get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) )
			var y_off = ease_linear( 50, 30, window_timer, get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) )
			draw_sprite_ext( sprite_get("harmful"), harmful_rand, x+(x_off*spr_dir), (y-120)+y_off, spr_dir*2, 2, 0, -1, 0.3 )
			draw_sprite_ext( sprite_get("cursor"), 0, x+((x_off+6)*spr_dir), (y-120)+(y_off+6), 2, 2, 0, -1, 1 )
		}
		if (window==2){
			var tmp_rot = floor(0 + window_timer * 4 / get_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH));
			draw_sprite_ext( sprite_get("harmful"), harmful_rand, x, y-120, spr_dir*2, 2, tmp_rot*90, -1, 1 )
			draw_sprite_ext( sprite_get("cursor"), 0, x+(6*spr_dir), (y-120)+6, 2, 2, 0, -1, 1 )
		}
		if (window==3){
			draw_sprite_ext( sprite_get("harmful"), harmful_rand, x, y-120, spr_dir*2, 2, 0, -1, 1 )
		}
	}//dattack
	if (attack==AT_NSPECIAL){
		if (nsp_remain>0&&nsp_locked==0){
			if (window==1){
				var x_off = ease_linear( 6, 0, window_timer, get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) )
				var y_off = ease_sineOut( -40, 0, window_timer, get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) )
				draw_sprite_ext( sprite_get("cursor"), 0, x+((x_off+6)*spr_dir), (y+19)+(y_off+6), 2, 2, 0, -1, 1 )
			}
			if (window==2){
				draw_sprite_ext( sprite_get("cursor"), 0, x+(6*spr_dir), (y+19)+6, 2, 2, 0, -1, 1 )
			}
		}
	}
	if (attack==AT_USPECIAL){
		if (bouncy_track!=-4){
			draw_sprite_ext( sprite_get("cursor"), 0, bouncy_track.x+4, bouncy_track.y+4, 2, 2, 0, -1, 1 )
		}
		/*if (window==1){
			var y_off = ease_sineOut( -40, 0, window_timer, get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) )
		}
		if (window==2){
			
		}
		if (window==3){
			
		}*/
		
	}
	
	
	if (attack==AT_DAIR){//x-10, y-92
		if (window<=2){
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			if (window==1){var tmp_x = ease_circOut( 35, -10, window_timer, window_length);}else{tmp_x = -10}
			if (window==1){var tmp_y = ease_circOut( -120, -92, window_timer, window_length);}else{tmp_y = -92}
			draw_sprite_ext( sprite_get("cursor"), 0, x+(tmp_x*spr_dir), y+tmp_y, 2, 2, 0, -1, 1 )
		}
		draw_sprite_ext( sprite_get("dair_trail"), window-1, x, y, spr_dir*2, 2, 0, -1, 1 )
	}//dair
	if (attack==AT_FAIR){
		draw_sprite_ext( sprite_get("fair_trail"), window-1, x, y, spr_dir*2, 2, 0, -1, 1 )
	}//fair
	if (attack==AT_BAIR){
		//gml colors are BGR???????
		var col1 = $0000E7 //red
		var col2 = $00D91F //green
		draw_sprite_ext( sprite_get("bair_trail1"), window-1, x, y, spr_dir*2, 2, 0, -1, 1 )
		draw_sprite_ext( sprite_get("bair_trail2"), window-1, x, y, spr_dir*2, 2, 0, ((epicgun_rand==0)?col1:col2), 1 )
	}//bair
	
	
	//throw zone
	if (attack==AT_FSPECIAL){
		draw_sprite_ext( sprite_get("fsp_trail"), window-1, x, y, 2*spr_dir, 2, 0, -1, 1 )
	}
	if (attack==AT_NTHROW){
		if (window==1){
		var x_start = 40	var x_end = 80		var y_start = -40		var y_end = -110
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		var tmp_x = ease_circOut( x_start, x_end, window_timer, window_length);
		var tmp_y = ease_circOut( y_start, y_end, window_timer, window_length);
		}else{tmp_x = 80; tmp_y = -110;}
		draw_sprite_ext( sprite_get("cursor"), 0, x+(tmp_x*spr_dir), y+tmp_y, 2, 2, 0, -1, 1 )
	}
	if (attack==AT_FTHROW){
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		if (window==1){
		var x_start = 80	var x_end = 90		var y_start = -110		var y_end = -110
		var tmp_x = ease_backIn( x_start, x_end, window_timer, window_length, 50);
		var tmp_y = ease_backIn( y_start, y_end, window_timer, window_length, 50);
		}
		if (window==2){
		var x_start = 90	var x_end = 130		var y_start = -110		var y_end = -90
		var tmp_x = ease_cubeOut( x_start, x_end, window_timer, window_length);
		var tmp_y = ease_cubeOut( y_start, y_end, window_timer, window_length);
		}
		draw_sprite_ext( sprite_get("cursor"), 0, x+(tmp_x*spr_dir), y+tmp_y, 2, 2, 0, -1, 1 )
	}
	if (attack==AT_BTHROW){
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		if (window==1){
		var x_start = 80	var x_end = -60		var y_start = -110		var y_end = -110
		var tmp_x = ease_backIn( x_start, x_end, window_timer, window_length, 4);
		var tmp_y = ease_backIn( y_start, y_end, window_timer, window_length, 4);
		}
		if (window==2){
		var x_start = -60	var x_end = -100	var y_start = -110		var y_end = -90
		var tmp_x = ease_cubeOut( x_start, x_end, window_timer, window_length);
		var tmp_y = ease_cubeOut( y_start, y_end, window_timer, window_length);
		}
		draw_sprite_ext( sprite_get("cursor"), 0, x+(tmp_x*spr_dir), y+tmp_y, 2, 2, 0, -1, 1 )
	}
	if (attack==AT_UTHROW){
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		if (window==1){
		var x_start = 80	var x_end = 30		var y_start = -110		var y_end = -130
		var tmp_x = ease_backIn( x_start, x_end, window_timer, window_length, 4);
		var tmp_y = ease_backIn( y_start, y_end, window_timer, window_length, 20);
		}
		if (window==2){
		var x_start = 0		var x_end = -10		var y_start = -130		var y_end = -160
		var tmp_x = ease_cubeOut( x_start, x_end, window_timer, window_length);
		var tmp_y = ease_cubeOut( y_start, y_end, window_timer, window_length);
		}
		draw_sprite_ext( sprite_get("cursor"), 0, x+(tmp_x*spr_dir), y+tmp_y, 2, 2, 0, -1, 1 )
	}
	if (attack==AT_DTHROW){
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		if (window==1){
		var x_start = 80				var x_end = ((free)?0:75)
		var y_start = -110				var y_end = ((free)?60:-40)
		var tmp_x = ease_backIn( x_start, x_end, window_timer, window_length, 4);
		var tmp_y = ease_backIn( y_start, y_end, window_timer, window_length, 3);
		}
		if (window==2){
		var x_start = ((free)?0:75)		var x_end = ((free)?-10:70)
		var y_start = ((free)?60:-40)	var y_end = ((free)?90:-20)
		var tmp_x = ease_cubeOut( x_start, x_end, window_timer, window_length);
		var tmp_y = ease_cubeOut( y_start, y_end, window_timer, window_length);
		}
		draw_sprite_ext( sprite_get("cursor"), 0, x+(tmp_x*spr_dir), y+tmp_y, 2, 2, 0, -1, 1 )
	}
	
	
	
	
	
	if (attack==AT_DSPECIAL){
		if (window==2||window==3){
			draw_sprite_ext( sprite_get("boosts"), 0, x, y, 2, 2, 0, -1, 1 )
			draw_sprite_ext( sprite_get("boosts_count"), 0, x+1, y-30, 2, 2, 0, -1, 1 )
			draw_sprite_ext( sprite_get("boosts_number"), boost_left, x+1, y-48, 2, 2, 0, -1, 1 )
			draw_sprite_ext( sprite_get("boosts_icon"), 0, x, (y-104)-((boost_selected==1)?8:0), 2, 2, 0, -1, 1 )//top
			draw_sprite_ext( sprite_get("boosts_icon"), 1, x+70, (y-34)-((boost_selected==2)?8:0), 2, 2, 0, -1, 1 )//right
			draw_sprite_ext( sprite_get("boosts_icon"), 2, x-70, (y-34)-((boost_selected==3)?8:0), 2, 2, 0, -1, 1 )//left
			draw_sprite_ext( sprite_get("boosts_icon"), 3, x, (y+36)-((boost_selected==4)?8:0), 2, 2, 0, -1, 1 )//down
			draw_sprite_ext( sprite_get("boosts_text"), 0, x, y-104-8, 2, 2, 0, -1, (boost_selected==1)?1:0 )//top
			draw_sprite_ext( sprite_get("boosts_text"), 1, x+70, y-34-8, 2, 2, 0, -1, (boost_selected==2)?1:0 )//right
			draw_sprite_ext( sprite_get("boosts_text"), 2, x-70, y-34-8, 2, 2, 0, -1, (boost_selected==3)?1:0 )//left
			draw_sprite_ext( sprite_get("boosts_text"), 3, x, y+36-8, 2, 2, 0, -1, (boost_selected==4)?1:0 )//down
		}
	}
}

shader_end()

//((state_timer%360)*6)*(spr_dir*-1);
//enemy override
with(asset_get("oPlayer")){
	if (id != other.id){
		if (exp_custom_hurt){
			if (state==PS_HITSTUN){
				var tmp_angle = ((state_timer%360)*3)*(spr_dir);
				var x_off = lengthdir_x(floor(char_height/2), tmp_angle-90);
				var y_off = (lengthdir_y(floor(char_height/2), tmp_angle-90))-(char_height/2);
				switch (real(url)){
					case 2: var crouch = asset_get("zet_crouch"); var c_img = 2; break; //zetter
					case 3: var crouch = asset_get("orca_fair"); var c_img = 6; break; //orcane
					case 4: var crouch = asset_get("bird_crouch"); var c_img = 1; break; //wrastor
					case 5: var crouch = asset_get("bug_crouch"); var c_img = 1; break; //kragg
					case 6: var crouch = asset_get("smoke_crouch_anim"); var c_img = 1; break; //fors
					case 7: var crouch = asset_get("fer_promo4_taunt"); var c_img = 2; break; //maypul
					case 8: var crouch = asset_get("goat_taunt"); var c_img = 12; break; //absa
					case 9: var crouch = asset_get("bear_taunt"); var c_img = 1; break; //etalus
					case 10: var crouch = asset_get("cat_usmash"); var c_img = 13; break; //ori
					case 11: var crouch = asset_get("frog_djump"); var c_img = 3; break; //ranno
					case 12: var crouch = asset_get("sword_crouch"); var c_img = 2; break; //clairen
					case 13: var crouch = asset_get("wolf_bair_spr"); var c_img = 17; break; //sylvanos
					case 14: var crouch = asset_get("snake_walljump"); var c_img = 1; break; //elliana
					case 15: var crouch = asset_get("gus_dspecial_spr"); var c_img = 4; break; //shovel
					
					case 16: var crouch = asset_get("moth_dair"); var c_img = 2; break; //mollo
					case 17: var crouch = asset_get("stinky_dspecial_2"); var c_img = 17; break; //hodan
					case 18: var crouch = asset_get("mouse_tech"); var c_img = 2; break; //pomme
					case 19: var crouch = asset_get("punch_dspecial"); var c_img = 28; break; //olympia
					case 2605462884: var crouch = body var c_img = 11; break; //explorer
					default: if (url == other.url){var crouch = body var c_img = 12; break; }else{ //explorer
					var crouch = sprite_get("crouch"); var c_img = crouch_startup_frames;} break; //else/ws
					//DETECT EXPLORER AND USE FRAME AEAEEAEAEEAE
					//09/02 maybe i did it idk yet
					//09/02 update expression must be constant value (other.url didnt work)
					//09/02 update it probably works now it just has to have a url
				}
				shader_start()
				draw_sprite_ext( crouch, c_img, x+x_off, y+y_off, (1+small_sprites)*spr_dir, 1+small_sprites, tmp_angle, -1, 1 )
				shader_end()
			}
		}
	}
}
shader_start()
with(asset_get("obj_article1")){
	if (player_id == other.id){
		if (particle_type==2){
			var tmp_angle = ((state_timer%360)*3)*(spr_dir);
			var x_off = lengthdir_x(floor(other.char_height/2), tmp_angle-90);
			var y_off = (lengthdir_y(floor(other.char_height/2), tmp_angle-90))-(other.char_height/2);
			draw_sprite_ext( other.body, 11, x+x_off, y+y_off, spr_dir, 1, tmp_angle, -1, 1 )
		}
	}
}
shader_end()










