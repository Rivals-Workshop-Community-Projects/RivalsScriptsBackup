//article1_update

//most of it is a better version of Acid Rainbows' raincloud code
//which, in turn, is made from Guadua's bamboo code

if (init == 0){
    init = 1;
    
	if (get_player_color( player_id.player ) == 19||get_player_color( player_id.player ) == 11||get_player_color( player_id.player ) == 20){
		sprite_index = sprite_get("na_bubble_g");
		uses_shader = true;
	}
	
	if (tier == 1){
		with (asset_get("obj_article1")){
			if (id != other.id && player_id == other.player_id){
				track_num = track_num+1;
				if (state < 2 && track_num >= track_num_max+(tier-1)){
					state = 2;
					state_timer = 0;
					sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 0.9);
				}
			}
		}
	}
}

if (!hitstop){
state_timer++;
}

if (hsp != 0){
	hsp = hsp/1.04
}
if (vsp != 0){
	vsp = vsp/1.04
}
if (!free){
	vsp = -1//-4
}

/*switch (tier){
	case 1:
	var range = 74;
	break;
	case 2:
	var range = 54;
	break;
	case 3:
	var range = 42;
	break;
}*/
	
// // // // STATE 0 - START
if (state == 0){
	switch (tier){
		case 1:
		state_end = 35;//42
		image_index = 0 + state_timer * 7 / state_end;
		break;
		case 2:
		state_end = 12;
		image_index = 21 + state_timer * 2 / state_end;
		break;
		case 3:
		state_end = 12;
		image_index = 37 + state_timer * 2 / state_end;
	}
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	
    if (state_timer == state_end){
		if (tier==1){//normal init (large bubble)
			cooldown = 10;//35//25//12
		}else{//slashed init (middle or small bubble)
			cooldown = 16;//8
		}
        state = 1;
        state_timer = 0;
		mode = 1;
    }
}


//time to randomly define the ranges
switch (tier){
	case 1:
	void_range = 70;//82//84
	disable_range = 135;//110//120
	break;
	case 2:
	void_range = 50;//54//60
	disable_range = 110;//54//70//80
	break;
	case 3:
	void_range = 40;//42//50
	disable_range = 100;//42//65//75
	break;
}

			
// // // // STATE 1 - IDLE
if (state == 1){
	state_end = 30;
	/*
	to the reader, whoever you may be...
	
	tier
	1 is largest
	2 is medium
	3 is smallest
	
	mode
	0 is normal (hittable)
	1 is deactivated
	2 is dspecial
	*/
	switch (tier){
		case 1:
		switch (mode){
			case 0:
			image_index = 7 + state_timer * 2 / state_end;
			break;
			case 1:
			if (modebuffer==1){
				image_index = 9 + state_timer * 2 / state_end;
			}else{
				switch (cooldown){
					case 0:
					case 1:
					case 2:
					case 3:
					case 8:
					case 9:
					case 10:
					case 11:
					image_index = 56 + state_timer * 2 / state_end;
					break;
					default:
					image_index = 9 + state_timer * 2 / state_end;
					break;
				}
			}
			break;
			case 2:
			image_index = 11 + state_timer * 4 / state_end;
			break;
		}
		break;
		case 2:
		switch (mode){
			case 0:
			image_index = 23 + state_timer * 2 / state_end;
			break;
			case 1:
			if (modebuffer==1){
				image_index = 25 + state_timer * 2 / state_end;
			}else{
				switch (cooldown){
					case 0:
					case 1:
					case 2:
					case 3:
					case 8:
					case 9:
					case 10:
					case 11:
					image_index = 58 + state_timer * 2 / state_end;
					break;
					default:
					image_index = 25 + state_timer * 2 / state_end;
					break;
				}
			}
			break;
			case 2:
			image_index = 27 + state_timer * 4 / state_end;
			break;
		}
		break;
		case 3:
		switch (mode){
			case 0:
			image_index = 39 + state_timer * 2 / state_end;
			break;
			case 1:
			if (modebuffer==1){
				image_index = 41 + state_timer * 2 / state_end;
			}else{
				switch (cooldown){
					case 0:
					case 1:
					case 2:
					case 3:
					case 8:
					case 9:
					case 10:
					case 11:
					image_index = 60 + state_timer * 2 / state_end;
					break;
					default:
					image_index = 41 + state_timer * 2 / state_end;
					break;
				}
			}
			break;
			case 2:
			image_index = 43 + state_timer * 4 / state_end;
			break;
		}
		break;
	}
	
	//mode change depending on range towards n/a
	if (point_distance(x, y, player_id.x, player_id.y-round(player_id.char_height/2)) <= disable_range){
			/*if (player_id.state!=PS_AIR_DODGE&&
			player_id.state!=PS_ROLL_BACKWARD&&
			player_id.state!=PS_ROLL_FORWARD&&
			player_id.state!=PS_WALL_TECH&&
			player_id.state!=PS_TECH_GROUND&&
			player_id.state!=PS_TECH_BACKWARD&&
			player_id.state!=PS_TECH_FORWARD){
				if (player_id.state_timer<2){*/
		if (cooldown == 0){
			modebuffer = 1;
			cooldown = 3;
		}
				//}
			//}else{
			//modebuffer = 0;
	//}
	}else{
		modebuffer = 0;
	}
	
	//electric mode / mode crossings
	if (cooldown == 0){
		with (player_id){
			if (attack==AT_DSPECIAL&&window==3&&(state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)){
				if (other.mode!=2){
					other.mode=2;
					other.elec_timer = 10;
				}
			}else{
				if (other.mode==2){
					other.mode = 2;
					other.cooldown = 32
					sound_stop(asset_get("sfx_absa_champ_loop"));
				}else{
					other.mode = other.modebuffer;
					sound_stop(asset_get("sfx_absa_champ_loop"));
				}
			}
		}
	}else{//cooldown override over elec
		mode = 1;
		cooldown = cooldown - 1;
	}
	
	if (mode<=1){
		
			var tmp_dist = round( point_distance(x, y, player_id.x, player_id.y-round(player_id.char_height/2)) )
			
			
			if (tmp_dist<=disable_range*2){
			if (get_gameplay_time()%12==id%12){
			//hbtx = round(disp_1 * cos(angle_1));
			//hbty = round(disp_1 * sin(angle_1));
			var tmp_angle = point_direction(x, y, player_id.x+player_id.hsp, (player_id.y-round(player_id.char_height/2))+player_id.vsp) / 180 * -3.14;
			var tmp_xoffset = round(disable_range * cos(tmp_angle));
			var tmp_yoffset = round(disable_range * sin(tmp_angle));
			/*var tmp_xoffsetC = round(disable_range * cos(tmp_angle+0.3));
			var tmp_yoffsetC = round(disable_range * sin(tmp_angle+0.3));
			var tmp_xoffsetD = round(disable_range * cos(tmp_angle-0.3));
			var tmp_yoffsetD = round(disable_range * sin(tmp_angle-0.3));
			draw_line_colour(tmp_xoffset, tmp_yoffset, tmp_xoffsetC, tmp_yoffsetC, c_white, c_purple);
			draw_line_colour(tmp_xoffset, tmp_yoffset, tmp_xoffsetD, tmp_yoffsetD, c_white, c_purple);
			*/
			
			var tmp_angleB = tmp_angle-0.4+random_func_2( 5, 80, true )/100
			var tmp_xoffsetB = round(disable_range * cos(tmp_angleB));
			var tmp_yoffsetB = round(disable_range * sin(tmp_angleB));
			var hfxthingy = spawn_hit_fx( x+tmp_xoffsetB, y+tmp_yoffsetB, player_id.na_dot2 )
			hfxthingy.depth = -10
			}
			}
			
	}
	
	if (mode==2){
		var elec_max = 10;
		if (elec_timer == elec_max){
			switch (tier){
				case 1:
				var hb_ex_tmp = create_hitbox( AT_FSPECIAL, 4, x, y )
				break;
				case 2:
				var hb_ex_tmp = create_hitbox( AT_FSPECIAL, 5, x, y )
				break;
				case 3:
				var hb_ex_tmp = create_hitbox( AT_FSPECIAL, 6, x, y )
				break;
			}
				hb_ex_tmp.owner_article = id;
			sound_stop(asset_get("sfx_absa_champ_loop"));
			sound_play(asset_get("sfx_absa_champ_loop"), false, noone, 0.7, 0.9);
			idle_cycle++;
			elec_timer = 0;
		}
		elec_timer++;
	}
	
	//hitbox detect to explode or to be slashed
	//if (place_meeting(x,y, asset_get("pHitBox"))){
		var tmp_hb_id = collision_circle(x, y, void_range, asset_get("pHitBox"), true, true)
	if (tmp_hb_id != -4){
		var tmp_id = tmp_hb_id.player_id;
		if (tmp_id == player_id){
			//to be slashe
			if (
			tmp_hb_id.attack == AT_UAIR&&tmp_hb_id.hbox_num!=3||
			tmp_hb_id.attack == AT_BAIR||
			(tmp_hb_id.attack == AT_DAIR&&tmp_hb_id.hbox_num=4)||
			(tmp_hb_id.attack == AT_JAB&&tmp_hb_id.hbox_num=2)||
			tmp_hb_id.attack == AT_FTILT||
			(tmp_hb_id.attack == AT_USTRONG&&tmp_hb_id.hbox_num=4)||
			tmp_hb_id.attack == AT_USPECIAL
			){
			if (tmp_hb_id != hbox_got_hit){
					sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 0.8);
				//var tmp_hb_angle = get_hitbox_angle( tmp_hb_id );
					switch (tmp_hb_id.attack){
						case AT_UAIR:
							if (tmp_hb_id.hbox_num!=4){
								var tmp_hb_angle = (tmp_hb_id.spr_dir==1)?70:110
							}
						break;
						case AT_BAIR:
							var tmp_hb_angle = (tmp_hb_id.spr_dir==1)?150:30
						break;
						case AT_DAIR:
							if (tmp_hb_id.hbox_num=4){
								var tmp_hb_angle = (tmp_hb_id.spr_dir==1)?290:250
							}
						break;
						case AT_JAB:
							if (tmp_hb_id.hbox_num=2){
							var tmp_hb_angle = (tmp_hb_id.spr_dir==1)?140:40
							}
						break;
						case AT_FTILT:
							var tmp_hb_angle = (tmp_hb_id.spr_dir==1)?50:130
						break;
						case AT_USTRONG:
							if (tmp_hb_id.hbox_num=4){
								var tmp_hb_angle = (tmp_hb_id.spr_dir==1)?150:30
							}
						break;
						case AT_USPECIAL:
							var tmp_hb_angle = player_id.usp_angle
						break;
						
						
					}
				image_angle = tmp_hb_angle;
				state = 4;
				state_timer = 0;
				sound_stop(tmp_hb_id.sound_effect);
				sound_play(tmp_hb_id.sound_effect);
				spawn_hit_fx( tmp_hb_id.x, tmp_hb_id.y, tmp_hb_id.hit_effect )
					var hfx = spawn_hit_fx( x, y, player_id.na_ms_fx )
					hfx.draw_angle = tmp_hb_angle+90
				//tmp_hb_id.can_hit = false;
				if (tmp_id.hitpause = false){
					tmp_id.old_hsp = tmp_id.hsp;
					tmp_id.old_vsp = tmp_id.vsp;
					tmp_id.hitpause = true;
				}
				//note: this is n/a slashing
				/*tmp_id.hitstop = 6;//9
				tmp_id.hitstop_full = 6;//9
				hitstop = 6;//9*/
				//hitpause recode
				tmp_id.hitstop = max(tmp_id.hitstop,6);
				tmp_id.hitstop_full = max(tmp_id.hitstop,6);
				//hitstop = max(tmp_id.hitstop,6);
				hbox_got_hit = tmp_hb_id;
			}
			}
		}else if (!(get_match_setting( SET_TEAMS )==true&&get_player_team( tmp_id.player )==get_player_team( player_id.player )&&get_match_setting( SET_TEAMATTACK )==false)){
			//to explode
			var demoncheck = false;
			with (asset_get("obj_stage_article")){ if (variable_instance_exists(id, "gw_demonhorde_enemy")){demoncheck = true;}}//demon horde check
			if ( (tmp_hb_id.type == 1 || demoncheck) && tmp_hb_id.hit_priority != 0){
			//print("myeah?")
				if(mode !=2){
					sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 0.8);
				sound_stop(tmp_hb_id.sound_effect);
				sound_play(tmp_hb_id.sound_effect);
				with(tmp_id){
					spawn_hit_fx( tmp_hb_id.x, tmp_hb_id.y, tmp_hb_id.hit_effect )
				}
				//tmp_hb_id.can_hit = false;
				if (tmp_id.hitpause = false){
					tmp_id.old_hsp = tmp_id.hsp;
					tmp_id.old_vsp = tmp_id.vsp;
					tmp_id.hitpause = true;
				}
				//note: this is player exploding
				tmp_id.hitstop = max(tmp_id.hitstop,tmp_hb_id.hitpause);//14
				tmp_id.hitstop_full = max(tmp_id.hitstop,tmp_hb_id.hitpause);//14
				//hitstop = tmp_id.hitpause;//14
				
				if(mode==0){
					tmp_id.hitstop = max(tmp_id.hitstop,tmp_hb_id.hitpause);//14//12
					tmp_id.hitstop_full = max(tmp_id.hitstop,tmp_hb_id.hitpause);//14//12//12
					hitstop = tmp_id.hitpause;//14//12
					
					sound_play(sound_get("shadow_rev"),false,noone,0.8,1.6);
					sound_play(sound_get("shadow_rev"),false,noone,0.8,1.5);
					state = 3;
					state_timer = 0;
					/*if (player_id.na_dsp_charge < player_id.dspmax){
						with (player_id){
							na_dsp_charge = na_dsp_charge + (4 - other.tier);//used to be 1, now gives according to tier
							white_flash_timer = 6;
							sound_play(sound_get("tic"));
							clock_timer = clock_dur;
						}
						
						if (player_id.na_dsp_charge >= player_id.dspmax){
							with (player_id){
								if (attack!=AT_DSPECIAL){
									sound_play(sound_get("filled"), false, noone, 2, 1);
									white_flash_timer = 18;
								}
							}
						}
						
					}*/
				}else{
					state = 5;
					state_timer = 0;
				}
				}
			}
		}
	}
	
	/*if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 2;
		state_timer = 0;
	}*/
	
	//IDLE EXPIRED (might remove this)
	idle_max = 30;//30
	if (idle_cycle >= idle_max && state == 1){
		state = 2;
		state_timer = 0;
		sound_stop(asset_get("sfx_absa_champ_loop"));
		sound_stop(asset_get("sfx_bubblepop"));
		sound_play(asset_get("sfx_bubblepop"), false, noone, 0.9, 0.9+(((id%20)-10)/90));
	}
	
	//idle loop
    if (state_timer == state_end){
        state_timer = 0;
		switch (tier){
		case 1:
		switch (mode){
			case 0:
			image_index = 7
			break;
			case 1:
			switch (cooldown){
				case 0:
				case 1:
				case 2:
				case 3:
				case 8:
				case 9:
				case 10:
				case 11:
				image_index = 56;
				break;
				default:
				image_index = 9;
				break;
			}
			break;
			case 2:
			image_index = 11
			break;
		}
		break;
		case 2:
		switch (mode){
			case 0:
			image_index = 23
			break;
			case 1:
			switch (cooldown){
				case 0:
				case 1:
				case 2:
				case 3:
				case 8:
				case 9:
				case 10:
				case 11:
				image_index = 58;
				break;
				default:
				image_index = 25;
				break;
			}
			break;
			case 2:
			image_index = 27
			break;
		}
		break;
		case 3:
		switch (mode){
			case 0:
			image_index = 39
			break;
			case 1:
			switch (cooldown){
				case 0:
				case 1:
				case 2:
				case 3:
				case 8:
				case 9:
				case 10:
				case 11:
				image_index = 60;
				break;
				default:
				image_index = 41;
				break;
			}
			break;
			case 2:
			image_index = 43
			break;
		}
		break;
		}
		idle_cycle++;
    }
}

// // // // STATE 2 - DISAPPEARING
if (state == 2){
	state_end = 15;
	image_index = 53 + state_timer * 3 / state_end;
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}

// // // // STATE 3 - EXPLODE
if (state == 3){
	state_end = 24;
	switch (tier){
		case 1:
		image_index = 15 + state_timer * 5 / state_end;
		break;
		case 2:
		image_index = 31 + state_timer * 5 / state_end;
		break;
		case 3:
		image_index = 47 + state_timer * 5 / state_end;
		break;
	}
	if (state_timer == round(state_end/5)){
				sound_stop(sound_get("shadow_rev"));
		sound_play(sound_get("clash"));
		sound_play(sound_get("clash"),false,noone,0.5,0.8);
		sound_play(sound_get("shadow"),false,noone,0.8,1.5);
		sound_play(asset_get("sfx_abyss_hazard_burst"),false,noone,0.7,0.8);
		sound_play(asset_get("sfx_abyss_hazard_burst"),false,noone,0.7,0.7);
		switch (tier){
			case 1:
			create_hitbox( AT_FSPECIAL, 1, x, y )
			break;
			case 2:
			create_hitbox( AT_FSPECIAL, 2, x, y )
			break;
			case 3:
			create_hitbox( AT_FSPECIAL, 3, x, y )
			break;
		}
	}
		
	vsp=0;
	hsp=0;
	
    if (state_timer == state_end){
		if (tier == 3){
			state = 4;
			state_timer = 0;
		}else{
			instance_destroy();
			exit;
		}
    }
}

// // // // STATE 4 - slashed
if (state == 4){
	hsp = 0;
	vsp = 0;
	switch (tier){
		case 1:
		state_end = 10;
		image_index = 20;
		break;
		case 2:
		state_end = 10;
		image_index = 36;
		break;
		case 3:
		state_end = 24;
		image_index = 52 + state_timer * 4 / state_end;
		break;
	}
	if (state_timer == 1){
		sound_stop(asset_get("sfx_bubblepop"));
		sound_play(asset_get("sfx_bubblepop"), false, noone, 0.9, 0.9+(((id%20)-10)/100));
	}
	
    if (state_timer == state_end){
		
		var distance = 10;
		var angle1 = ((image_angle+90) / 180 * -3.14);
		var angle2 = ((image_angle-90) / 180 * -3.14);
		var b_x_tmp1 = round(distance * cos(angle1));
		var b_y_tmp1 = round(distance * sin(angle1));
		var b_x_tmp2 = round(distance * cos(angle2));
		var b_y_tmp2 = round(distance * sin(angle2));
		
		if (tier == 1||tier == 2){
		sound_stop(asset_get("sfx_absa_taunt"));
		sound_play(asset_get("sfx_absa_taunt"), false, noone, 0.7, 1+(((id%20)-10)/80));
			
			with(player_id){
				var bubbleID1 = instance_create(other.x+b_x_tmp1, other.y+b_y_tmp1, "obj_article1");
				var bubbleID2 = instance_create(other.x+b_x_tmp2, other.y+b_y_tmp2, "obj_article1");
				
				bubbleID1.tier = other.tier+1;
				bubbleID2.tier = other.tier+1;
				
				//print_debug( "b_x_tmp1"+string(b_x_tmp1) )
				//print_debug( "b_y_tmp1"+string(b_y_tmp1) )
				bubbleID1.hsp = b_x_tmp1/3;
				bubbleID1.vsp = b_y_tmp1/3;
				bubbleID1.player_id = id;
				bubbleID1.player = player;
				bubbleID1.spr_dir = 1;
				bubbleID1.image_angle = (spr_dir==1)?0:180;
				bubbleID1.tmpdir = spr_dir;
				bubbleID1.track_num = other.track_num;
				bubbleID1.hbox_got_hit = other.hbox_got_hit;
				
				bubbleID2.hsp = b_x_tmp2/3;
				bubbleID2.vsp = b_y_tmp2/3;
				bubbleID2.player_id = id;
				bubbleID2.player = player;
				bubbleID2.spr_dir = 1;
				bubbleID2.image_angle = (spr_dir==1)?0:180;
				bubbleID2.tmpdir = spr_dir;
				bubbleID2.track_num = other.track_num;
				bubbleID2.hbox_got_hit = other.hbox_got_hit;
			}
		}
		
        instance_destroy();
        exit;
    }
}


// // // // STATE 5 - popped
if (state == 5){
	switch (tier){
		case 1:
		state_end = 24;
		image_index = 62 + state_timer * 3 / state_end;
		break;
		case 2:
		state_end = 24;
		image_index = 65 + state_timer * 3 / state_end;
		break;
		case 3:
		state_end = 24;
		image_index = 68 + state_timer * 3 / state_end;
		break;
	}
	if (state_timer == 1){
		sound_stop(asset_get("sfx_bubblepop"));
		sound_play(asset_get("sfx_absa_cloud_pop"), false, noone, 1, 1);
	}
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}








