//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
	case AT_DSPECIAL:
	case AT_USPECIAL:
	case AT_USPECIAL_2:
		trigger_b_reverse();
		break;
}

if ((get_window_value(attack, window, AG_WINDOW_INVINCIBILITY)) == 1){
	draw_indicator = false;
	char_height = 9200;
} else {
	draw_indicator = true;
	char_height = 92;
}

switch(attack){
	case AT_UTILT:
			if window == 1{
				utilt_hit = false;
				if window_timer == 11{
					sound_play(asset_get("sfx_swipe_heavy2"),false,noone,0.9,1.0);
				}
			} 
		break;
	case AT_DTILT:
			if window == 1 && window_timer == 2{
				sound_play(sound_get("sfx_cape_swipe_hard2"),false,noone,1.7,1.0);
			}
		break;
	case AT_NSPECIAL:
		if window == 1 {
			if (special_down && window_timer > 9 && move_cooldown[AT_NSPECIAL_2] == 0) {
				hurtboxID.sprite_index = sprite_get("nspecial2_hurt");
				attack = AT_NSPECIAL_2;
				window = 0;
				window_timer = 0;
			}
		}
		if window == 3  {
			if window_timer == 2 sound_play(sound_get("sfx_hellfire"));
			if window_timer == 3 spawn_hit_fx(x+50*spr_dir,y-46,fx_nspecial).depth = depth-5;
		}
		break;
	case AT_NSPECIAL_2:
		if window == 3 && window_timer == 2 sound_play(sound_get("sfx_dark_inferno"));
		if window == 2 && window_timer == get_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH){
			instance_create(x-36*spr_dir, y-40, "obj_article1").type = 0;
		}
		break;
	case AT_FSPECIAL:
		if (window == 2){
				//if (special_pressed && fspecial_grab == false && fspecial_teleport == false){
				if (special_down && fspecial_grab == false && fspecial_teleport == false){
					fspecial_grab = false;
					fspecial_teleport = true;
					attack = AT_USPECIAL;
					window = 2;
					window_timer = 0;
					
					sound_play(asset_get("sfx_forsburn_disappear"));
					sound_play(sound_get("sfx_bats_flap"),0,0,.3);
					sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.3);
					var mist = spawn_hit_fx(x+hsp,y,fx_fspecial);
					mist.hsp = hsp;
					/*sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.35);var spawn_y = y;
					var teleport = spawn_hit_fx(x,spawn_y,fx_uspecial);
					teleport.type = 1;
					teleport.depth = depth+1;
					if teleport.y <= room_height spawn_hit_fx(teleport.x,teleport.y,fx_uspecial_impact).depth = teleport.depth-1;
					var teleport_glow = spawn_hit_fx(x,teleport.y,fx_uspecialglow);
					teleport_glow.type = 1;
					teleport_glow.depth = teleport.depth+1;
					hsp = 0;
					vsp = 0;
					set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 36);
					set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 40);*/
				}
			}
	case AT_FSPECIAL_2:
		var prev_free = free;
		can_fast_fall = false;
		if (window == 1){
			fspecial_teleport = false;
			fspecial_grab = false;
			reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
			reset_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH);
		} 
		if window == 1 && window_timer == 9 {
			sound_play(sound_get("sfx_bats_flap"),0,0,.3);
			sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.3);
		}
		if window == 2 {
			image_index = 4+(window_timer%2);
			if (window_timer <= 15) && window_timer % 3 == 0 && !hitpause {
				if window_timer == 2 {
					sound_play(sound_get("sfx_bats_flap"),0,0,.35);
					sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.35);
				}
				if abs(hsp) > .5 {
					for (var i = 0; i < 2; i++){
						var dirto = point_direction(hsp,vsp,0,0)+random_func_2(i,40,true)-20;
						var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x+60*spr_dir,y-56);
						bat.length -= 18;
						bat.depth = depth-1;
						bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+2,dirto);
						bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+2,dirto);
						bat.grav = -.1;
					}
				}
			}
			if attack == AT_FSPECIAL_2 {
				if window_timer == get_window_value(AT_FSPECIAL_2,2,AG_WINDOW_LENGTH) hsp *= .5;
				if !free {
					if window_timer < 3 {
						attack = AT_FSPECIAL;
					} else {
						if fspecial_grab == false { 
							hsp *= .25;
							window = 3; 
							window_timer = 0;
							destroy_hitboxes();
						}
						sound_play(sound_get("sfx_cape_swipe_soft1"));
						sound_play(asset_get("sfx_waveland_wra"),0,0,1,.8);
						sound_stop(asset_get("sfx_blink_dash"));
					}
				}
			}
		}
		if window == 2 || window == 3 can_wall_jump = true;
		if ((attack == AT_FSPECIAL && window == 2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)) || (attack == AT_FSPECIAL_2 && (window == 2 && !free) || (window == 2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) && free))) && fspecial_grab == true{
			window = 4;
			window_timer = 0;
			hsp = 0;
			shake_camera(6,5);
		}
		if (fspecial_grab == true){
			force_depth = 1;
			depth = hit_player_obj.depth +1;
			hit_player_obj.hitstop = 1;
			hit_player_obj.hurt_img = 4;
			if (window == 2){
				hit_player_obj.x = lerp(hit_player_obj.x, x+80*spr_dir, 0.8);
	    		hit_player_obj.y = lerp(hit_player_obj.y, y-10, 0.8);
			}
			if (image_index == 11){
				hit_player_obj.x = lerp(hit_player_obj.x, x+70*spr_dir, 0.8);
	    		hit_player_obj.y = lerp(hit_player_obj.y, y-10, 0.8);
			}
			if (image_index == 12){
				hit_player_obj.x = lerp(hit_player_obj.x, x+60*spr_dir, 0.8);
	    		hit_player_obj.y = lerp(hit_player_obj.y, y-20, 0.8);
			}
			if (image_index == 13){
				hit_player_obj.x = lerp(hit_player_obj.x, x+60*spr_dir, 0.8);
	    		hit_player_obj.y = lerp(hit_player_obj.y, y-20, 0.8);
			}
			if (image_index == 14){
				hit_player_obj.x = lerp(hit_player_obj.x, x+42*spr_dir, 0.8);
	    		hit_player_obj.y = lerp(hit_player_obj.y, y-72, 0.8);
			}
			if (image_index == 15){
				hit_player_obj.x = lerp(hit_player_obj.x, x+42*spr_dir, 0.8);
	    		hit_player_obj.y = lerp(hit_player_obj.y, y-82, 0.8);
			}
		}
		break;
	case AT_USPECIAL:
		can_move = 0;
		fspecial_grab = false;
		if window == 2 { hud_offset = room_height; } else { hud_offset = 0; }
		switch(window){
			case 1:
			fspecial_teleport = false;
				if window_timer == 5 && !hitpause{
					hellfire_frame = 0;
					dark_inferno_frame = 0;
					sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.35);
					var stored_y = y;
					var stored_mask = mask_index;
					mask_index = sprite_get("_pixel");
					do {
						y+=2;
					} until (place_meeting(x,y+1,asset_get("par_block")) || place_meeting(x,y+1,asset_get("par_jumpthrough"))) || y >= room_height;
					var spawn_y = y;
					y = stored_y;
					mask_index = stored_mask;
					var teleport = spawn_hit_fx(x,spawn_y,fx_uspecial);
					teleport.type = 1;
					teleport.depth = depth+1;
					if teleport.y <= room_height spawn_hit_fx(teleport.x,teleport.y,fx_uspecial_impact).depth = teleport.depth-1;
					var teleport_glow = spawn_hit_fx(x,teleport.y,fx_uspecialglow);
					teleport_glow.type = 1;
					teleport_glow.depth = teleport.depth+1;
					hsp = 0;
					vsp = 0;
				} 
				if window_timer >= 6 && window_timer <= 12 && (window_timer-3)%2 == 0 {
					for (var i = 0; i < 2; i++){
						var dirto = random_func_2(i,180,true);
						var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x,y-round(lerp(0,112,(window_timer-6)/6)));
						bat.length = bat.length-5;
						bat.depth = depth-1;
						bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+1,dirto);
						bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+1,dirto);
						bat.grav = -.1;
					}
				}
				break;
			case 2:
				if window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)-40{
					//Setting up for teleport
					var y_input = 1;
					var x_input = 1;
					//Determines what direction the teleporting should take
					if(up_down){
						y_input = -2;
					} else if (down_down){
						y_input = 2
					}
					if(right_down){
						x_input = 2
					} else if (left_down){
						x_input = -2
					}
			        //Detecting furthest possible teleport spot to auto-land vertically
					var temp_y = teleport_dist///(abs(x_input));
			        var determined_y = teleport_dist///(abs(x_input));
			        if (y_input !=1){
				        while (temp_y > 0){
				        	if(position_meeting(x, y+temp_y*(y_input/2), asset_get("par_block"))
				        	|| position_meeting(x, y+temp_y*(y_input/2), asset_get("par_jumpthrough"))
				        	&& determined_y == teleport_dist){
				        		determined_y = temp_y-1 - 15 + ((-y_input)*15);
				        	}
				        	temp_y--;
				        }
			        } else {
			        	determined_y = 0;
			        }
			        if(determined_y == teleport_dist){///(abs(x_input))){
			        	determined_y = 0;
			        }
			        //Snap to floor if not already
			        var temp_snap = -50
			        var determined_snap = 0;
			        if (y_input == -2){
				        while(temp_snap < teleport_dist/2){
				        	if(position_meeting(x, y+(determined_y*(y_input/2))+temp_snap, asset_get("par_jumpthrough"))
					        && determined_snap == 0){
					        	determined_snap = temp_snap + 1;
					        }
				        	temp_snap++;
				        }
			        } else if (y_input == 2){
			        	determined_snap = 50;
			        } else {
			        	determined_snap = 0;
			        }
			        var y_complete = y+(determined_y*(y_input/2)) + determined_snap;
			        y = y_complete
			        //Detecting furthest possible teleport spot to auto-land horizontally
					var temp_x = 0//teleport_dist/(abs(y_input));
			        var determined_x = 0//teleport_dist/(abs(y_input));
			        if(x_input != 1){
				        while (temp_x < teleport_dist/(abs(y_input))){
				        	if((position_meeting(x+temp_x*(x_input/2), y_complete, asset_get("par_block"))) or (position_meeting(x+temp_x*(x_input/2), y_complete, asset_get("par_jumpthrough"))))
				        	//|| (free && position_meeting(x+temp_x*(x_input/2), y-ledge_leniency, asset_get("par_block")))
				        	//|| position_meeting(x+temp_x*(x_input/2), y+2, asset_get("par_jumpthrough"))
				        	//&& determined_x == teleport_dist){
				        	{
				        		determined_x = temp_x-1;
				        	}
				        	temp_x++;
				        }
			        }else{
			        	determined_x = 0;
			        }
			        
			        /*print("x: " + string(determined_x))
			        print("y: " + string(determined_y))*/
			        //Teleport to correct position (goes equal distance in 8 directions)
			        x = x+(determined_x*(x_input/2));
				}
				if window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)-8{
					var stored_y = y;
					var stored_mask = mask_index;
					mask_index = sprite_get("_pixel");
					do {
						y+=2;
					} until (place_meeting(x,y+1,asset_get("par_block")) || place_meeting(x,y+1,asset_get("par_jumpthrough"))) || y >= room_height;
					var spawn_y = y;
					y = stored_y;
					mask_index = stored_mask;
					var teleport = spawn_hit_fx(x,spawn_y,fx_uspecial);
					teleport.type = 2;
					teleport.depth = depth-1;
					if teleport.y <= room_height spawn_hit_fx(teleport.x,teleport.y,fx_uspecial_impact).depth = teleport.depth-1;
					var teleport_glow = spawn_hit_fx(x,teleport.y,fx_uspecialglow);
					teleport_glow.type = 2;
					teleport_glow.depth = teleport.depth+1;
				}
				if window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)-16 {
					sound_play(sound_get("sfx_teleport"));
					sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.5);
				}
				if window_timer >= get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)-8 && window_timer <= get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) && window_timer%2 == 0 {
					for (var i = 0; i < 2; i++){
						var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x+random_func_2(i,120,true)-60,y-round(lerp(168,56,(window_timer-get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)+8)/6)));
						var dirto = point_direction(bat.x,bat.y,x,y);
						bat.length = bat.length;
						bat.depth = depth-1;
						bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+2,dirto);
						bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+2,dirto);
						bat.grav = -.15;
					}
				}
				//Go to Nspecial buffer
				if(special_pressed && fspecial_teleport == false){
					clear_button_buffer( PC_SPECIAL_PRESSED );
					//print(dark_inferno_frame - hellfire_frame);
					if(hellfire_frame == 0){
						hellfire_frame = window_timer;
					} else {
						dark_inferno_frame = window_timer;
						if(dark_inferno_frame - hellfire_frame >= 11){
							hellfire_frame = dark_inferno_frame + 1
						}
					}
				}
				break;
				case 3:
					if(window_timer == 1){
						if (right_down){
							spr_dir = 1;
						}
						if (left_down){
							spr_dir = -1;
						}
						if (fspecial_teleport == true){
							if (free) attack = AT_FSPECIAL_2;
							else attack = AT_FSPECIAL;
							window = 2;
							window_timer = 0;
							hsp = 8*spr_dir;
						} else {
							if(hellfire_frame > dark_inferno_frame and !special_down){
								attack = AT_NSPECIAL;
								window = 2;
								window_timer = 0;
							} else if (dark_inferno_frame > hellfire_frame && move_cooldown[AT_NSPECIAL_2] == 0){
								attack = AT_NSPECIAL_2;
								window = 2;
								window_timer = 0;
							} else if (special_down && move_cooldown[AT_NSPECIAL_2] == 0){
								//clear_button_buffer(PC_SPECIAL_PRESSED);
								attack = AT_NSPECIAL_2;
								window = 1;
								window_timer = 0;
							}
						}
					}
		}
		break;
	case AT_USPECIAL_2:
		if (window == 1){
			if window_timer == 5{
				sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.35);
				var stored_y = y;
				var stored_mask = mask_index;
				mask_index = sprite_get("_pixel");
				do {
					y+=2;
				} until (place_meeting(x,y+1,asset_get("par_block")) || place_meeting(x,y+1,asset_get("par_jumpthrough"))) || y >= room_height;
				var spawn_y = y;
				y = stored_y;
				mask_index = stored_mask;
				var teleport = spawn_hit_fx(x,spawn_y,fx_uspecial_air);
				teleport.type = 1;
				teleport.depth = depth+1;
				if teleport.y <= room_height spawn_hit_fx(teleport.x,teleport.y,fx_uspecial_air_impact).depth = teleport.depth-1;
				var teleport_glow = spawn_hit_fx(x,teleport.y,fx_uspecial_airglow);
				teleport_glow.type = 1;
				teleport_glow.depth = teleport.depth+1;
				hsp = 0;
				vsp = 0;
			} 
			if window_timer >= 6 && window_timer <= 12 && (window_timer-3)%2 == 0 {
				for (var i = 0; i < 2; i++){
					var dirto = random_func_2(i,180,true);
					var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x,y-round(lerp(0,112,(window_timer-6)/6)));
					bat.length = bat.length-5;
					bat.depth = depth-1;
					bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+1,dirto);
					bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+1,dirto);
					bat.grav = -.1;
				}
			}
			if !joy_pad_idle {
				var new_joy_dir = round(lerp(0,8,joy_dir/360))*45;
				spr_dir = sign(lengthdir_x(20,new_joy_dir)) == 0 ? spr_dir : sign(lengthdir_x(6,new_joy_dir));
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, lengthdir_x(6,new_joy_dir)*spr_dir);
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, lengthdir_y(6,new_joy_dir));
				//print(new_joy_dir)
			} else {
				reset_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED);
				reset_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED);
			}
		}
		if window == 2 {
			if window_timer == get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH)-16 {
				sound_play(sound_get("sfx_teleport"));
				sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.5);
			}
			//Allow repositioning onto stage like Fors teleport
			if(place_meeting(x + 10*spr_dir,y,asset_get("par_block"))){
				y -= 2;
			}
			if window_timer == get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH){
				var stored_y = y;
				var stored_mask = mask_index;
				mask_index = sprite_get("_pixel");
				do {
					y+=2;
				} until (place_meeting(x,y+1,asset_get("par_block")) || place_meeting(x,y+1,asset_get("par_jumpthrough"))) || y >= room_height;
				var spawn_y = y;
				y = stored_y;
				mask_index = stored_mask;
				var teleport = spawn_hit_fx(x,spawn_y,fx_uspecial_air);
				teleport.type = 2;
				teleport.depth = depth-1;
				if teleport.y <= room_height spawn_hit_fx(teleport.x+hsp,teleport.y,fx_uspecial_air_impact).depth = teleport.depth-1;
				var teleport_glow = spawn_hit_fx(x+hsp,teleport.y,fx_uspecial_airglow);
				teleport_glow.type = 2;
				teleport_glow.depth = teleport.depth+1;
			}
			if window_timer >= get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH)-4 && window_timer <= get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH) && window_timer%2 == 0 {
				for (var i = 0; i < 4; i++){
					var bat = create_hitbox(AT_EXTRA_5, random_func_2(10+i,2,true)+1, x+random_func_2(i,120,true)-60, y-round(lerp(192,56,(window_timer-get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH)+8)/6)));
					var dirto = point_direction(bat.x,bat.y,x,y);
					bat.length = bat.length;
					bat.depth = depth-1;
					bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+2,dirto);
					bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+2,dirto);
					bat.grav = -.15;
				}
			}
		} else {
			can_move = false;
		}
		if(window == 3){
			//if window_timer >= get_window_value(AT_USPECIAL2, 3, AG_WINDOW_LENGTH)-1{
				if(!free){
					set_window_value( AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 0 );
				} else {
					reset_window_value( AT_USPECIAL_2, 3, AG_WINDOW_TYPE);
				}
			//}
		}
	break;
	case AT_DSPECIAL:
		if (window == 1){
			if (window_timer == 1){
				dspecial_plat = false;
				if (instance_exists(flame_pillar)){
					window = 2;
					window_timer = 2;
					state_timer = 10;
				}
			}
			if(window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)){
				flame_pillar = instance_create(x+70*spr_dir, y, "obj_article3");
				//Using DSpecial while standing at the edge of a platform
				if (((!place_meeting(x+70*spr_dir, y+4, asset_get("par_jumpthrough"))) && (place_meeting(x, y+4, asset_get("par_jumpthrough"))))){
					dspecial_plat = true;
					flame_pillar.state = -1;
				}
				//print(range_finder(x+70*spr_dir, y, 270, room_width, asset_get("par_block"), true, true));
				//print(room_width);
//				if ( (free || (!free && (range_finder(x+70*spr_dir, y, 270, room_width, asset_get("par_block"), true, true) == room_width)) ) && flame_pillar.state_timer <= 1){
				//Using DSpecial at the edge of solid ground
				if (range_finder(x+70*spr_dir, y, 270, room_width, asset_get("par_block"), true, true) == room_width){
					flame_pillar.x = x;	
				}
				//DSpecial in the air
				if (free){
					flame_pillar.state = -1;
					window = 4;
					window_timer = 0;
				}
			}
		}
		if window == 2 {
			if get_gameplay_time()%6 == 0 {
				var angle = point_direction(0,0,hsp,vsp)+random_func_2(0,40,true)+70;
				var embers = spawn_hit_fx(x+50*spr_dir,y-58,fx_dspecial_ember);
				embers.spr_dir = random_func_2(1,2,true)==0?-1:1;
				embers.depth = depth+1;
				embers.draw_angle = 90;
				embers.hsp = lengthdir_x(2,angle);
				embers.vsp = lengthdir_y(2,angle);
				embers.grav = -.2
			}
			if state_timer > 18{
				if (!instance_exists(flame_pillar)) flame_pillar = instance_create(x+70*spr_dir, y, "obj_article3");
				if (special_down){
					if flame_pillar.state < 1 {
						sound_play(sound_get("sfx_fire_pillar_charge"));
						spawn_hit_fx(flame_pillar.x,flame_pillar.y-24,fx_dspecial).depth = flame_pillar.depth-1;
					}
					flame_pillar.state = 1;
				}
				if (!special_down){
					window = 4;
					window_timer = 0;
					sound_stop(sound_get("sfx_fire_pillar_charge"));
					sound_play(sound_get("sfx_fire_pillar_fire"));
				}
				if (shield_pressed){
					window = 3;
					window_timer = 0;
					flame_pillar.state = 0;
					spawn_hit_fx(flame_pillar.x, flame_pillar.y-10, fx_nspecial_destroy);
					sound_stop(sound_get("sfx_fire_pillar_ready"));
					sound_stop(sound_get("sfx_fire_pillar_charge"));
				}
			}
		}
		if (window == 4 && (flame_pillar.state_timer > 0 || flame_pillar.state == 0) && window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)){ //
			flame_pillar.state = 2;
			flame_pillar.state_timer = 0;
			if (synced_vars[0] == 1) sound_play(dspecial_voice);
		}
	
	break;
		
	case AT_JAB:
		if window == 2 && window_timer % 2 == 0 && window_timer <= 5 && !hitpause {
			var spark = spawn_hit_fx(x+80*spr_dir,y-50,fx_darkness_spark[random_func_2(3,2,true)]);
			spark.depth = depth+1;
			spark.draw_angle = random_func_2(2,360,true);
			spark.spr_dir = random_func_2(3,1,false)+.75;
			spark.hsp = lengthdir_x(4,random_func_2(4,180,true)-90*spr_dir);
			spark.vsp = lengthdir_y(4,random_func_2(4,180,true)-90*spr_dir);
		}
		if (window == 3 && window_timer > 1 && attack_down){
			window = 4;
			window_timer = 0;
		}
		if window == 4 && window_timer == get_window_value(AT_JAB,4,AG_WINDOW_LENGTH) { sound_play(sound_get("sfx_rapidjab"),1); }
		if window == 5 { 
				if window_timer == get_window_value(AT_JAB,5,AG_WINDOW_LENGTH) { times_through++; }
				if window_timer%3 == 0 {
					for (var i = 0; i < 2; i++){
						var spark = spawn_hit_fx(x+(72+random_func_2(i*10,48,true)-8)*spr_dir,y-16 -random_func_2(1+i*10,48,true),fx_darkness_spark[random_func_2(3+i*10,2,true)]);
						spark.depth = depth+1;
						spark.draw_angle = random_func_2(2+i*10,360,true);
						spark.spr_dir = random_func_2(3+i*10,1,false)+.75;
						spark.hsp = lengthdir_x(2,random_func_2(4+i*10,360,true));
						spark.vsp = lengthdir_y(2,random_func_2(4+i*10,360,true));
					}
					spark = spawn_hit_fx(x+(72+random_func_2(0,48,true)-8)*spr_dir,y-16 -random_func_2(1,48,true),fx_darkness_rapidjab);
					spark.depth = depth-1;
					spark.draw_angle = random_func_2(5,4,true)*90;
				}
				if !attack_down { 
					if times_through != 0 {
						window++; 
						window_timer = 0; 
						hsp += get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir; 
						sound_play(asset_get("sfx_mol_uspec_launch"),0,0,.8,.7);
						sound_stop(sound_get("sfx_rapidjab"));
					}
				}
			}
		break;
		
		case AT_FTILT:
			if window == 1 && window_timer == 9{
					sound_play(asset_get("sfx_swipe_heavy2"),false,noone,0.9,0.9)
			} 
		break;
		
	case AT_DATTACK:
		//print(state_timer)
		can_fast_fall = false;
		if window == 2 { 
			dattack_hit = 0;
			if !hitpause {
				if window_timer == 6 { 
					sound_play(sound_get("sfx_bats_flap"),0,0,.3);
					sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.4);
					spawn_hit_fx(x+12*spr_dir,y-56,fx_bat_moon_glow);
					var bat_moon = spawn_hit_fx(x+12*spr_dir,y-56,fx_bat_moon);
					bat_moon.depth = depth-1;
				}
				if window_timer >= 6 && window_timer <= 9 { 
					for (var i = 0; i < 2; i++){
						var angle = (spr_dir!=1?random_func_2(i,90,true)+90:random_func_2(i,90,true))%360;
						var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x-16*spr_dir,y-32);
						bat.depth = depth+1;
						bat.hsp = lengthdir_x(random_func_2(20+i,4,false)+1,angle);
						bat.vsp = lengthdir_y(random_func_2(20+i,4,false)+1,angle);
						bat.spr_dir = sign(bat.hsp);
						bat.grav = -.02;
					}
				}
			}
		}
		if window = 3 {
			grabbed_invisible = 1;
			if window_timer == get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH) {
				hsp = 256*spr_dir;
			}
		}
		if window == 4 && state_timer >= 180{
			state = PS_IDLE_AIR;
		}
		if window == 5 && !hitpause { 
			if window_timer == 6 {
				spawn_hit_fx(x+12*spr_dir,y-56,fx_bat_moon_glow).hit_length = 16;
				var bat_moon = spawn_hit_fx(x+12*spr_dir,y-56,fx_bat_moon2);
				bat_moon.hit_length = 12;
				bat_moon.depth = depth-1;
			}
			if window_timer <= 6 {
				for (var i = 0; i < 2; i++){
					var bat = create_hitbox(AT_EXTRA_5,random_func_2(i,2,true)+1,x+random_func_2(10+i,48,true)-24,y-random_func_2(20+i,96,true));
					bat.length -= 10;
					bat.depth = depth-1;
					bat.spr_dir = random_func_2(50+i,2,true) == 0 ? -1 : 1;
				}
			}
			if window_timer <= 9 {
				for (var i = 0; i < 1; i++){
					var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x+random_func_2(i,192,true)-96,y-round(lerp(168,56,window_timer/15)));
					var dirto = point_direction(bat.x,bat.y,x,y);
					bat.length = bat.length-10;
					bat.depth = depth+1;
					bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+2,dirto);
					bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+2,dirto);
					bat.grav = -.05;
				}
			}
		}
		break;
		
	case AT_NAIR:
		if window == 1 { 
			if window_timer >= 9 {
				if window_timer == 9 {
					sound_play(sound_get("sfx_bats_flap"),0,0,.3);
					sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.4);
				}
				for (var i = 0; i < 2; i++){
					var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x+round(ease_sineInOut(-70,70,(window_timer-9),3)),y-round(lerp(0,32,(window_timer-6)/12))-48);
					var dirto = point_direction(0,0,hsp,vsp);
					bat.length = bat.length-5;
					bat.depth = depth-1;
					bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+1,dirto)+round(ease_sineInOut(-3,3,(window_timer-9),2));
					bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+.5,dirto);
				}
			}
		}
		if (window == 2 && window_timer == get_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH) && attack_down) vsp = -3;
		break;
	case AT_BAIR:
		if window == 1 { 
			if window_timer >= 11 {
				if window_timer == 11 {
					sound_play(sound_get("sfx_bats_flap"),0,0,.3);
					sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.4);
				}
				for (var i = 0; i < 3; i++){
					var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x-random_func_2(i,80,true)*spr_dir,y-random_func_2(30+i,48,true)-32);
					var dirto = spr_dir?random_func_2(i,60,true)+120:random_func_2(i,60,true);
					bat.length = bat.length-15;
					bat.depth = depth-1;
					bat.hsp = lengthdir_x(random_func_2(20+i,4,false)+3,dirto);
					bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+.5,dirto);
				}
			}
		}
		break;
	case AT_UAIR:
		if window < 3 {
			force_depth = 1;
			depth = 1;
		}
		if window == 1 && window_timer == 10 {
			sound_play(sound_get("sfx_bats_flap"),0,0,.3);
			sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.4);
			sound_play(asset_get("sfx_absa_jabloop"),0,0,.2,.6);
			sound_play(asset_get("sfx_ori_ustrong_launch"),0,0,.8,.9);
			var bg1 = spawn_hit_fx(x,y-128,fx_darkness_rift[0]);
			bg1.depth = depth-1;
			bg1.turn_speed = 2;
			var bg2 = spawn_hit_fx(x,y-128,fx_darkness_rift[1]);
			bg2.depth = depth-2;
			bg2.turn_speed = 4;
			var bg3 = spawn_hit_fx(x,y-128,fx_darkness_rift[2]);
			bg3.depth = depth-3;
			bg3.turn_speed = 5;
		}
		if window == 2 {
			//if(!hitpause){
			//	can_fast_fall = false;
			//}
			if(!fast_falling){
				hsp = clamp(hsp, -2, 2);
				vsp = min(vsp, 1);
			}
			if window_timer == 20 sound_stop(asset_get("sfx_absa_jabloop"));
		}
		break;
	case AT_DAIR:
		if window < 5 {
			can_wall_jump = 1;
			can_fast_fall = 0;
			if (window > 2 && down_down) fall_through = true;
		}
		if (window == 4 && state_timer > 40){
			can_jump = true;
			can_shield = true;
		}
		if window == 1 {
			if window_timer == 1{
				if right_down spr_dir = 1;
				if left_down spr_dir = -1;
				sound_play(sound_get("sfx_cape_swipe_hard2"));
				spawn_hit_fx(x,y-char_height/2,fx_dust_leap).vsp = -2;
			}
		}
		if window == 2 && window_timer == get_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH) spawn_hit_fx(x,y-char_height/2,fx_dust_leap).vsp = 4;
		if window == 4 {
			if window_timer == 3 && times_through == 0 {
				spawn_hit_fx(x,y-char_height/2,fx_dust_leap).vsp = 4;
				times_through++;
			}
		}
		if window == 5 {
			if window_timer == 1 destroy_hitboxes();
			if window_timer == 3 && !hitpause {
				var wave = create_hitbox(AT_DAIR, 4, x, y-32);
					wave.depth = depth-1;
					wave.spr_dir = 1;
					wave.draw_xscale = wave.spr_dir;
					wave.hsp = 8*wave.spr_dir;
				wave = create_hitbox(AT_DAIR, 4, x, y-32);
					wave.depth = depth-1;
					wave.spr_dir = -1;
					wave.draw_xscale = wave.spr_dir;
					wave.hsp = 8*wave.spr_dir;
				//hitpause = 1;
				hitstop = 6;
				hitstop_full = hitstop;
				var fx = spawn_hit_fx(x,y+2,fx_hitsurface_bg);
				fx.depth = depth+1;
				fx = spawn_hit_fx(x,y+2,fx_hitsurface_fg)
				fx.depth = depth-1;
				sound_play(sound_get("sfx_shockwave_land"));
				shake_camera(10,6);
			}
		}
		break;
	case AT_FSTRONG :
		switch window {
			case 1:
				if smash_charging && get_gameplay_time() % 4 == 0 {
					var spark = spawn_hit_fx(x+16*spr_dir +random_func_2(0,16,true)-8,y-40 -random_func_2(1,16,true),fx_darkness_spark[random_func_2(3,2,true)]);
					spark.depth = depth-1;
					spark.hit_angle = random_func_2(2,360,true);
					spark.spr_dir = random_func_2(3,1,false)+.75;
				}
				break;
			case 2:
				move_cooldown[AT_FSTRONG] = 100;
				if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
					var angle = spr_dir ? -70 : 250;
					fstrong_laser_trail = range_finder(x+12*spr_dir, y-72, angle, room_width, asset_get("par_block"), true, true);
					fstrong_laser = fstrong_laser_trail;
					fstrong_firex = round((x+12*spr_dir+floor(lengthdir_x(fstrong_laser,spr_dir?-70:250)))/32)*32;
					fstrong_prev_firex = fstrong_firex;
					fstrong_fire_count = 0;
				}
				break;
			case 3:
				//trail
				var angle = spr_dir ? lerp(-70,-15,(window_timer-5)/13) : lerp(250,195,(window_timer-5)/13);
				fstrong_laser_trail = range_finder(x+12*spr_dir, y-72, angle, room_width, asset_get("par_block"), true, true);
				
				//beam
				angle = spr_dir ? lerp(-70,-15,window_timer/13) : lerp(250,195,window_timer/13);
				fstrong_laser = range_finder(x+12*spr_dir, y-72, angle, room_width, asset_get("par_block"), true, true);
				
				var tiles = room_width/32;
				fstrong_prev_firex = fstrong_firex;
				fstrong_firex = floor(( x+12*spr_dir+floor(lengthdir_x(fstrong_laser,angle)) )/32)*32;
				
				if window_timer > 1 {
					for (var i = 0; i < abs(fstrong_prev_firex-fstrong_firex)/32; i += 1){	
						if fstrong_firex != fstrong_prev_firex && fstrong_laser <= room_height {
							var wave = create_hitbox(AT_FSTRONG, 2, fstrong_prev_firex+i*32*spr_dir, y-117+floor(lengthdir_y(fstrong_laser,angle)));
							//wave.depth = depth+1;
							wave.extra_delay = fstrong_fire_count*2;
							fstrong_fire_count++;
							with wave { 
								if place_meeting(x,y+1,asset_get("par_block")) && !place_meeting(x,y-1,asset_get("par_block")){ image_xscale = 46/200; image_yscale = 0; other.fstrong_fire_count++; } else { instance_destroy(self); }
							}
						}
					}
				}
			}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == 1 {
			move_cooldown[AT_USTRONG] = 150;
			shake_camera(4,3);
		}
		break;
	case AT_DSTRONG:
		if (window == 1){
			dstrong_timer_ground = 0;
			dstrong_timer_air = 0;
			dstrong_x = 0;
			dstrong_y = 0;
			if image_index > 0 && get_gameplay_time() % 4 == 0 {
				var spark = spawn_hit_fx(x+48*spr_dir +random_func_2(0,16,true)-8,y-80 -random_func_2(1,48,true),fx_darkness_spark[random_func_2(3,2,true)]);
				spark.depth = depth-1;
				spark.hit_angle = random_func_2(2,360,true);
				spark.spr_dir = random_func_2(3,1,false)+.75;
			}
		}
		if (window == 2){
			if get_gameplay_time() % 4 == 0 {
				var spark = spawn_hit_fx(x+48*spr_dir +random_func_2(0,16,true)-8,y-80 -random_func_2(1,48,true),fx_darkness_spark[random_func_2(3,2,true)]);
				spark.depth = depth-1;
				spark.hit_angle = random_func_2(2,360,true);
				spark.spr_dir = random_func_2(3,1,false)+.75;
			}
		}
		if window == 4 {
			move_cooldown[AT_DSTRONG] = 180;
			if get_gameplay_time() % 4 == 0 {
				var spark = spawn_hit_fx(x+4*spr_dir +random_func_2(10,16,true)-8,y-16 -random_func_2(11,16,true),fx_darkness_spark[random_func_2(13,2,true)]);
				spark.hit_angle = random_func_2(12,360,true);
				spark.depth = depth-1;
			}
		}
		if (window == 5 || window == 6){
			if (window == 5){
				dstrong_x = lerp(0,2.26,window_timer/get_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH));
				dstrong_y = lerp(0,1.05,window_timer/get_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH));
			} else {
				dstrong_x = 2.26*(1+dsin(window_timer*2)*.1);
				dstrong_y = 1.05*(1+dsin(window_timer*2)*.1);
			}
			if (!instance_exists(dstrong_hitbox_ground)){
				if (dstrong_timer_ground == 0){
					if window == 5 && window_timer <= 5 dstrong_hitbox_ground = create_hitbox(AT_DSTRONG, 1, x, y);
					if window == 5 && window_timer > 5 dstrong_hitbox_ground = create_hitbox(AT_DSTRONG, 1, x, y);
					if window == 6 dstrong_hitbox_ground = create_hitbox(AT_DSTRONG, 1, x, y);
					dstrong_timer_ground = 8;
				} else dstrong_timer_ground --;
			} else {
				dstrong_hitbox_ground.image_xscale = dstrong_x;
				dstrong_hitbox_ground.image_yscale = dstrong_y;
			}
			if (window == 6 && window_timer >= 55 && instance_exists(dstrong_hitbox_ground)){
				instance_destroy(dstrong_hitbox_ground);
				dstrong_timer_ground = -1;
			}
			if (!instance_exists(dstrong_hitbox_air)){
				if (dstrong_timer_air == 0){
					if window == 5 && window_timer <= 5 dstrong_hitbox_air = create_hitbox(AT_DSTRONG, 3, x, y);
					if window == 5 && window_timer > 5 dstrong_hitbox_air = create_hitbox(AT_DSTRONG, 3, x, y);
					if window == 6 dstrong_hitbox_air = create_hitbox(AT_DSTRONG, 3, x, y);
					dstrong_timer_air = 8;
				} else dstrong_timer_air --;
			} else {
				dstrong_hitbox_air.image_xscale = dstrong_x;
				dstrong_hitbox_air.image_yscale = dstrong_y;
			}
			if (window == 6 && window_timer >= 55 && instance_exists(dstrong_hitbox_air)){
				instance_destroy(dstrong_hitbox_air);
				dstrong_timer_air = -1;
			}
		}
		if (window == 5 || window == 6) {
			switch window {
				case 5: var scale = round(lerp(0,2,window_timer/32)*sprite_get_width(sprite_get("dstrong_demonic_megiddo"))*.8); break;
				case 6: var scale = round((2+dsin(window_timer*2)*.1)*sprite_get_width(sprite_get("dstrong_demonic_megiddo"))*.8); break;
			}
			if get_gameplay_time() % 4 == 0 {
				var dist = ease_circOut(0,scale,random_func_2(1,scale,true),scale);
				var angle = random_func_2(1,180,true);
				var spark = spawn_hit_fx(x +lengthdir_x(dist,angle),y-12 -random_func_2(3,32,true),fx_darkness_spark[random_func_2(3,2,true)]);
				spark.depth = depth-1;
				spark.hit_angle = random_func_2(2,360,true);
				spark.spr_dir = random_func_2(3,1,false)+.75;
				spark.image_yscale = random_func_2(3,1,false)+.75;
				spark = spawn_hit_fx(x+4*spr_dir +random_func_2(10,16,true)-8,y-16 -random_func_2(11,16,true),fx_darkness_spark[random_func_2(13,2,true)]);
				spark.hit_angle = random_func_2(12,360,true);
				spark.depth = depth-1;
			}
		}
		if window == 4 && window_timer == 12 {
			var impact = spawn_hit_fx(x,y+4,fx_demonic_megiddo_impact);
			shake_camera(7,4);
		}
		switch window {
			case 5:
				var scale = round(sprite_get_width(sprite_get("dstrong_demonic_megiddo"))*lerp(0,2,window_timer/32)*2);
				if window_timer % 4 == 0 shake_camera(5,4);
				break;
			case 6:
				var scale = round(sprite_get_width(sprite_get("dstrong_demonic_megiddo"))*(2+dsin(window_timer*2)*.1)*2);
				if window_timer % 4 == 0 shake_camera(2,4);
				break;
			case 7:
			case 8:
				var scale = round(sprite_get_width(sprite_get("dstrong_demonic_megiddo"))*(window_timer < 16 ? lerp(2.1,2,window_timer/16) : 2)*2);
				break;
		}
		if (window == 5 || window == 6) || (window == 7 && window_timer < 6){
			if window_timer%2 == 0 {
				var debris = spawn_hit_fx(x-round(random_func_2(0,scale,true)-scale/2), y-8, fx_demonic_megiddo_debris[random_func_2(0,3,true)] );
				debris.hit_length = random_func_2(0,scale,true)/scale < .5 ? ease_sineIn(5,18,random_func_2(0,scale,true),scale) : ease_sineOut(18,5,random_func_2(0,scale,true),scale);
				debris.depth = random_func_2(1,2,true) == 0 ? depth-1 : depth+1;
				debris.grav = -random_func_2(2,3,true)/10-.1;
				debris.hsp = random_func_2(3,2,false)-1;
			}
			//if window != 7 && window_timer%5 == 0 sound_play(asset_get("sfx_abyss_explosion"));
		}
		if window == 8 {
			if get_gameplay_time()%4 {
				var a = spawn_hit_fx(x-random_func(0,88,true)+44,y-random_func(1,88,true)-16,fx_darkness_spark[random_func(3,2,true)])
				a.depth = depth-1;
				a.spr_dir = random_func_2(3,1,false)+.75;
				a.image_yscale = random_func_2(3,1,false)+.75;
				a.image_angle = random_func(2,360,true);
				shake_camera(2,4);
			}
			if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) {
				was_parried = 1;
				parry_lag = 50;
			}
		}
		break;
	case AT_TAUNT:
		break;
}
if (attack != AT_TAUNT) page = 0;



#define range_finder(x,y,dir,range,object,prec,notme){ //karu codee
    var ox,oy,dir,range,object,prec,notme,dx,dy,sx,sy,distance;
    ox = argument0;
    oy = argument1;
    dir = argument2;
    range = argument3;
    object = argument4;
    prec = argument5;
    notme = argument6;
    sx = lengthdir_x(range,dir);
    sy = lengthdir_y(range,dir);
    dx = ox + sx;
    dy = oy + sy;
    if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
        distance = room_width;
    }else{
        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
            sx /= 2;
            sy /= 2;
            if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
                dx += sx;
                dy += sy;
            }else{
                dx -= sx;
                dy -= sy;
            }
        }
        distance = point_distance(ox,oy,dx,dy);
    }
    return distance;
}