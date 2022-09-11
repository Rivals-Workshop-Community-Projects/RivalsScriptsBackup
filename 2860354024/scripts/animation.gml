







switch (state){


	case PS_PRATFALL:
	sprite_index = sprite_get("jump");
	image_index = 5;
	break;

	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:

			switch (attack){

				case AT_FSTRONG:
				if (window == 4 && window_timer == 0)
				spawn_hit_fx(x + spr_dir*100, y - 40, muzzle_flash);

				break;
				
				case AT_USTRONG:
				if (window == 6 && window_timer == 0)
				spawn_hit_fx(x + spr_dir*14, y - 126, muzzle_flash_up);

				if (window > 4)
				draw_indicator = false;

				break;

				case AT_FSTRONG_2:
				if (window == 4 && window_timer == 0)
				spawn_hit_fx(x + spr_dir*100, y - 26, muzzle_flash);
				break;

				case AT_USTRONG_2:
				if (window == 4 && window_timer == 0)
				spawn_hit_fx(x + spr_dir*38, y - 96, muzzle_flash_upair);

				break;

				case AT_DSTRONG_2:
				if (window == 4 && window_timer == 0)
				spawn_hit_fx(x + spr_dir*22, y + 65, muzzle_flash_down);

				break;

				case AT_FSPECIAL:
				
				// if (window == 2){
				// 	hurtboxID.sprite_index = hurtbox_spr;
				// }
				// else
				// 	hurtboxID.sprite_index = sprite_get("fspecial_hurt");
				
				case AT_USPECIAL:
				if (window <= 4)
				draw_indicator = false;
				break;

				case AT_UTILT:
				if (window > 2)
				draw_indicator = false;
				break;

				case AT_DSPECIAL:
				hurtboxID.sprite_index = hurtbox_spr;
				break;

				case AT_NSPECIAL:
					if (window < 3){
					hurtboxID.sprite_index = asset_get("bug_hurtbox");
					}else
					{
					hurtboxID.sprite_index = sprite_get("nspecial_hurt");
					}

				break;

				case 48:
				
					if (window == get_attack_value(48, AG_NUM_WINDOWS) && window_timer == timer_end){
					set_state(25);
					}
								switch get_player_color(player){
									
				    			case 7:
				    				if (window <= 2)
									{
										draw_indicator = false;
									}	
				    			break;
				
								case 10:
									if (window == 1) || (window == 2 && window_timer < 30)
									draw_indicator = false;
								
									if (window == 3 && window_timer > 5)
									{
										char_height = lerp(char_height, char_height_default, 0.5);	
									}
								break;
				
								default:
									if (window == 3)
									{
										if (window_timer > timer_end/2){
										char_height = lerp(char_height, char_height_default, 0.22);	
										}
									}
								break;	
									
								}
				
					
					
					
				break;
				
				case AT_TAUNT_2:
					switch get_player_color(player){
										
					case 7:
						if (window < 3)
						char_height = lerp(char_height, 90, 0.22);	
						
						else if (window == 3){
						char_height = lerp(char_height, char_height_default, 0.22);
						
						if (window_timer == timer_end){
							char_height = char_height_default;
						}
						
						}
					break;
					
					case 10:
						if (window == 1)
						char_height = lerp(char_height, 90, 0.22);	
						
						else if (window == 2){
						char_height = lerp(char_height, char_height_default, 0.22);
						
						if (window_timer == timer_end){
							char_height = char_height_default;
						}
						
						}
					break;
					
				}
				
				break;

			}

	


	break;

	case PS_CROUCH:
		if (prev_state == PS_ATTACK_GROUND && attack == AT_DTILT && down_down){
			if (state_timer <= 3)
				image_index = 3;
		}

	break;


	case PS_ROLL_FORWARD:
	case PS_ROLL_BACKWARD:
	case PS_TECH_BACKWARD:
	case PS_TECH_FORWARD:
	sprite_index = sprite_get("roll");

	break;

	case PS_IDLE_AIR:

	if ((prev_state == PS_DASH || prev_state == PS_DASH_START) && state_timer < 18 && (sign(hsp) * spr_dir) > 0) && (abs(hsp) >= jump_change)
	{
		if (state_timer == 0)
			draw_timer = 3;


		draw_timer += 0.18;
		sprite_index = sprite_get("jump");

	draw_timer = clamp(draw_timer,0,7.99);
	image_index = draw_timer;

	}

	else
	{
	sprite_index = sprite_get("idleair");
	draw_timer += 0.2;
	image_index = draw_timer;
	}

	



	break;

	case PS_FIRST_JUMP:

	if (state_timer < 3 && (sign(hsp) + sign(spr_dir) == 0)){
		if (abs(hsp) > 1)
		jump_back = true;
		else
		jump_back = false;
	}

	if (jump_back)
	sprite_index = sprite_get("jumpback");

	if (vsp < 8.5)
	soft_land = true;
	else
	soft_land = false;
	
	break;

	case PS_DOUBLE_JUMP:

	if (state_timer == 0 && prev_state == PS_FIRST_JUMP)
	jump_back = false;

	if (state_timer < 3 && (sign(hsp) + sign(spr_dir) == 0) ){
		if (abs(hsp) > 0)
		jump_back = true;
		else
		jump_back = false;
	}

	if (jump_back)
	sprite_index = sprite_get("djumpback");

	if (vsp < 8.5)
	soft_land = true;
	else
	soft_land = false;
	
	break;

	case PS_LAND:

	if (prev_state == PS_IDLE_AIR && draw_timer > 0)
	draw_timer = 0;

		if (soft_land){
		draw_timer += 0.2;
		sprite_index = sprite_get("softland");
		}
		else{ 
		draw_timer += 0.3;
		sprite_index = sprite_get("land");
		}

	image_index = draw_timer;

	break;

	case PS_IDLE:
	if (prev_state == PS_LAND && state_timer < 6)
	{
		if (soft_land){
		draw_timer += 0.2;
		sprite_index = sprite_get("softland");
		}
		else{ 
		draw_timer += 0.3;
		sprite_index = sprite_get("land");
		}
	
	draw_timer = clamp(draw_timer,0,1.99);
	image_index = draw_timer;
	}
	else
	{
	draw_timer = 0;
	}

	break;

	default:
	jump_back = false;

	if (state_timer == 0)
	draw_timer = 0;

	break;


    case PS_LANDING_LAG:

	sprite_index = sprite_get("land");

	break;

}






//faster hitbox update
with(pHitBox){
	if (player = other.player && orig_player == other.player){


		if (player_id.excited){

			switch(attack){
	
				case AT_FTILT:
				case AT_JAB:
				case AT_FAIR:
				case AT_DATTACK:
				case AT_FSPECIAL:
				case AT_USPECIAL:
				 	if (hitbox_timer == 0)
					damage = round(damage * other.dmg_exct);
				break;
	
				case AT_NSPECIAL:
					if (hbox_num == 6 && hitbox_timer == 0){
						damage = round(damage * other.dmg_exct);
					}
				break;
			}
		}
	
		switch(attack){

			case AT_USPECIAL:
				if (hbox_num == 2 && hitbox_timer == 0){
					
			   	var sweetspot_shine = spawn_hit_fx( x, y, other.shine_fx );
        		sweetspot_shine.depth = depth-1;
        		}
		}
	
	
	}
}


//HITFX UPDATE
with (asset_get("hit_fx_obj")){
	if (player == other.player){
	
		if (hit_fx == other.hkr_slashbg){
			if (other.hitpause){
				pause_timer = 0;
				pause = 2;
			}
			if (other.state_cat == SC_HITSTUN){
				x = 200000;
			}
			if (other.state == PS_ATTACK_AIR){
				x = other.x + (30 * other.spr_dir);
				y = other.y - 80;
			}
		}
	
		if (hit_fx == other.tp_slice){
			if (other.window <= 3 && !other.hitpause && other.attack == AT_USPECIAL){
			draw_angle = point_direction(other.x, other.y, other.x + (other.hsp * other.spr_dir), other.y + (other.vsp * other.spr_dir) );
				if (other.hsp == 0){
					x = other.x;
				}
			}
	
		}
	
		if (hit_fx == other.shine_fx){
			if (other.hitpause){
				pause_timer = 0;
				pause = 2;
			}
			x = other.x + (26 * spr_dir);
			y = other.y - 70;
		}
	
	}
}




















// INTROS
//check for Turpix



if (get_gameplay_time() < 4){
	with(oPlayer){
	    if ("hikari_exists" in self){
	        other.turpix_exists = true;
	        other.turpix_y = y;
	    }
	}
	
	if (ground_type == 2){
	turpix_exists = false;
	}

	if (turpix_y != y){
	turpix_exists = false;
	}
}





//turpix Intro
if (turpix_exists){
	
go_through = true;
	
	if (get_gameplay_time() == 4)
	{
	spawning_y = y;
	spawning_x = x;
		
	var stage_top = get_stage_data( SD_Y_POS );
    var stage_mid = ((room_width - get_stage_data( SD_X_POS )) + get_stage_data( SD_X_POS ))/2 ;
    
    y = stage_top;
    x = stage_mid - (200 * spr_dir);
    
    set_state(25);
	}
	
	
	if (get_gameplay_time() < 30){
		sprite_index = sprite_get("dash");
		image_index = state_timer/5;
		hsp = 6 * spr_dir;
		
		if (get_gameplay_time() % 12 == 0){
		sound_play(asset_get("sfx_dash_start"));
		}
		
		
	}else if (get_gameplay_time() < 50){
		if (get_gameplay_time() == 30){
		set_state(25);
		}
		hsp = 1 * spr_dir
		sprite_index = sprite_get("ftilt");
		image_index = clamp(state_timer * 0.18,0,3);
		
		if (get_gameplay_time() == 35){
			sound_play(asset_get("sfx_forsburn_cape_swipe"));
		}
		
		if (get_gameplay_time() == 45){
			sound_play(sound_get("slice"));
			sound_play(sound_get("intro_parry"));
			sound_play(asset_get("sfx_abyss_explosion"));
			turpix_circle = 0;
		}
		
	}
	else if (get_gameplay_time() < 50 + 30){
		
		if (get_gameplay_time() == 50){
		shake_camera( 10, 20 );
		set_state(25);
		}
		
		sprite_index = sprite_get("ftilt");
		image_index = 3;
		
		if (get_gameplay_time() > 50 + 20){
		sprite_index = sprite_get("ftilt");	
		image_index = state_timer * 0.18;
		x = lerp(x, spawning_x, 0.5);
		
		if (free)
		sprite_index = sprite_get("hurt");
		}
	}
	else if (get_gameplay_time() > intro_end_time - 1){
		x = spawning_x;
	}
	
	if (get_gameplay_time() == 10){
		if (nero_voice){
					sound_play(sound_get("nero_intro2"));
		}
	}
	
	x += hsp;
	
}


//intro after
if (get_gameplay_time() == 1) && !turpix_exists{
	char_height = starting_height;
	set_attack(48);
}

if (get_gameplay_time() == intro_end_time){
turpix_exists = false;
char_height = 50;
state = PS_IDLE;
}

//training dummy
if (tab_dummy_master != noone){
	draw_indicator = false;
	
}

// //trailer stuff
// draw_indicator=false;

// // camera follow

// var mid_x = -1;
// var mid_y = -1;
// var prev_x = view_get_xview() + (view_get_wview()/2);
// var prev_y = view_get_yview() + (view_get_hview()/2);
// var loops = 0;
// var nearest_player = noone;

// with (oPlayer){

//              nearest_player = id;
//              mid_x += x;
//              mid_y += y;
//              loops++;
    

// }



// mid_x /= loops;
// mid_y = (mid_y/loops) -60;



// var cam_x = lerp(prev_x,mid_x,0.1);
// var cam_y = lerp(prev_y,mid_y,0.1);

// var left_side_limit = get_stage_data( SD_X_POS );
// var right_side_limit = room_width - get_stage_data( SD_X_POS );

// var top_side_limit = get_stage_data( SD_Y_POS ) - get_stage_data( SD_TOP_BLASTZONE );
// var bottom_side_limit = get_stage_data( SD_Y_POS ) + get_stage_data( SD_BOTTOM_BLASTZONE );

// cam_x = clamp(cam_x, left_side_limit, right_side_limit);
// cam_y = clamp(cam_y, top_side_limit, bottom_side_limit);

// set_view_position( cam_x, cam_y );


