//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
	case AT_EXTRA_2:
	if (window > 2){
		can_fast_fall = true;
	}
	break;
	case AT_EXTRA_1:
	if (window > 2){
		can_fast_fall = true;
	}
	can_fast_fall = false;
	can_move = false;
	can_wall_jump = true;
	if window == 1 && window_timer == 8 {
		sound_play(asset_get("sfx_swipe_medium2"))
	}
	break;
	
	case AT_USPECIAL:
		if(window >= 4 && was_parried == false)
			can_fast_fall = true;
		else
			can_fast_fall = false;
		if(window > 1)
		can_wall_jump = true;
		
    	if (window == 4 && window_timer == 5 && !has_hit){
			//if (special_down){
			attack_end();
    		set_attack(AT_EXTRA_1);
    		CorrectHurtboxes()
			//}
    	}
		if (window == 3 && window_timer == 4 && has_hit){
    			attack_end();
    			set_attack(AT_EXTRA_2);
    			CorrectHurtboxes()
		}
	break;
	case AT_FSPECIAL:
		if(window == 1)
			grabbed_player_obj = noone; 
		if(window == 1 && !free){
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
		} else { reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);}
		
		if (!has_hit){
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 16);
		} else { reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);}
		move_cooldown[AT_FSPECIAL] = 15;
		if(!hitpause && window == 2 && window_timer == 1)
		{
			with(obj_article1)
			{
				if(collision_rectangle(other.x, other.y-10, other.x+other.spr_dir*180, other.y-40, id, false, false) && player_id == other.id)//140
				{
					with(pHitBox)
					{
						if(player_id == other.player_id && attack == AT_DSPECIAL && hbox_num == 2)
							vsp = -1.25;
					}
					with(oPlayer)
					{
						if(other.player_id == id)
						{
							hsp = spr_dir*6;
							vsp = -5;
							sound_play(asset_get("sfx_blow_medium2"));
						}
					}
				}
			}
			if(collision_rectangle(x, y-20, x+spr_dir*180, y-30, asset_get("par_block"), true, true))
			{
				hsp = spr_dir*6;
				vsp = -5;
				sound_play( asset_get("sfx_icehit_medium2"));
			}
		} 
		else if (window == 3)
		{
			if(instance_exists(grabbed_player_obj))
			{
    			grabbed_player_obj.x = floor(lerp(grabbed_player_obj.x, x+(100*spr_dir), .2));
    			grabbed_player_obj.y = floor(lerp(grabbed_player_obj.y, y-10, .25));
				if(window_timer >= 4)
				{
					set_attack(AT_FTHROW);
					CorrectHurtboxes();
					reset_window_value(attack, window, AG_NUM_WINDOWS);
					grabbed_player_relative_x = 100*spr_dir;
					grabbed_player_relative_y = 0;
				}
			}
			if(special_down)
				with(obj_article1)
				{
					if(player_id == other.id)
					{
						with(other)
						{
							if(collision_circle(other.x,other.y-40,30,self,false,false) && other.state <= 1)
							{
								sfx = spawn_hit_fx(x+hsp,y-20, 194);//FLASH
								sfx.pause = 8;
								sfx.depth = -9;
								sound_play(asset_get("sfx_coin_capture"), false, noone, 0.4, 1.2);
								window = 1;
								window_timer = 0;
								attack = AT_DSPECIAL_2;
								white_flash_timer = 10;
								other.y = -999;
								other.state = 3;
							}
						}
					}
				}
			can_wall_jump = true;
		}
	break;
	case AT_FTHROW:
		#region Grabs
        if(instance_exists(grabbed_player_obj))
        {
            if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
                else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

                else 
				{
                    grabbed_player_obj.hitstop = 2;
                    grabbed_player_obj.hitpause = true;
                    grabbed_player_obj.spr_dir = -spr_dir;

					var easepos = true;

					switch(window)
					{
						case 2:	
							easepos = false;	
						case 1:				
							var pull_to_x = 20*spr_dir;
							var pull_to_y = -5;
						break;
						case 4:
						depth = grabbed_player_obj.depth+1;
						var pull_to_y = -40;
						var pull_to_x = 30*spr_dir;
						break;
						case 5:
						depth = grabbed_player_obj.depth+1;
						var pull_to_y = -60;
						var pull_to_x = 15*spr_dir;
						break;
						case 6:	//Up1
							force_depth = true;
							depth = grabbed_player_obj.depth+1;
							var pull_to_y = -50;
							var pull_to_x = 0;
							grabbed_player_obj.depth = depth-1;
						break;
						case 9:	//Side
							var pull_to_x = 35*spr_dir;
							var pull_to_y = -5;
							force_depth = true;
							depth = grabbed_player_obj.depth+1;
							grabbed_player_obj.depth = depth-1;
						break;
						case 12://Down
							force_depth = true;
							depth = grabbed_player_obj.depth+1;
                    		grabbed_player_obj.depth = depth-1;
							var pull_to_x = 20*spr_dir;
							var pull_to_y = 0;
						break;
					}

					var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
					if(easepos)
					{
						grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					}
					else
					{
						grabbed_player_obj.x = x + pull_to_x;
						grabbed_player_obj.y = y + pull_to_y;
					}
                }
			if(window == 2)
			{
				if(right_down || left_down)
				{
					set_attack_value(attack, AG_NUM_WINDOWS, 10);
					spr_dir = (right_down?1:-1)
					grabbed_player_obj.spr_dir = (right_down?-1:1)
					window = 9;
					window_timer = 0;
				}
				
				else if(up_down  )
				{
					set_attack_value(attack, AG_NUM_WINDOWS, 8);
					window = 6;
					window_timer = 0;
					
				}
				else if(down_down   || window_timer == 20)
				{
					set_attack_value(attack, AG_NUM_WINDOWS, 12);
					window = 11;
					window_timer = 0;
				}
			}
			#endregion
        }
	break;
	//forward air code goes here
	case AT_NSPECIAL:
		trigger_wavebounce();
		move_cooldown[AT_NSPECIAL] = 25;
		if (window == 1)
		{
			if(window_timer == 1)
			{
				var dir;
				dir = (right_down - left_down); //determines direction.
				spr_dir = (dir != 0) ? dir : spr_dir; //if both keys are being held down, just default to the current direction you are facing.
				//If its the third shot
				if(nspecCount == 2)
				{
					set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial2"));
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial2"));
				}
				else
				{
					set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
				}
			}
			if(window_timer == 13)
				sound_play( asset_get( "sfx_swipe_medium2" ) );
		}
		if (window == 2)
		{
			if(window_timer == 1) 
			{ 
				if(nspecCount == 2) 
				{
					white_flash_timer = 10;
					create_hitbox(AT_NSPECIAL, 2, x+65*spr_dir, y-30);
					sound_play(asset_get("sfx_oly_uspecial_crystal"))
					nspecCount = 0; 
				}
				else 
				{
					create_hitbox(AT_NSPECIAL, 1, x+65*spr_dir, y-2);
					nspecCount++; 
				}
				hsp = -2*spr_dir; 
			}
			if(free)
				vsp = -2;
		}
	break;
	case AT_DSPECIAL:
	
		if (window == 1 && window_timer == 1 && !free){
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -3);
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, -3);
		} else if (window == 1 && window_timer == 1 && free){ 
			reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED);
			reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH);
			reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED);
			
		}
		if(window == 2)
		{
			if(window_timer == 1)
				instance_create(x,y,"obj_article1")
			if(!was_parried and !has_hit)
				can_jump = true;
		}

		can_fast_fall = false;
		can_move = false
	break;
	case AT_DSPECIAL_2:
		move_cooldown[AT_DSPECIAL] = 120;
			//Flip code
    	if (window >= 1 && window_timer == 1){
        	var dir;
        	dir = (right_down - left_down); //determines direction.
        	spr_dir = (dir != 0) ? dir : spr_dir; //if both keys are being held down, just default to the current direction you are facing.
    		}
		if (window == 2){
			if (up_down && !down_down && !left_down && !right_down){
        	    set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 4);
            	set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -8);
			}
			if (down_down && !up_down && !left_down && !right_down){
        	    set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 4);
            	set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -8);
			}
			if (!down_down && !up_down){
        	    set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 7);
            	set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -4);
			}
		}
	break;
	
	case AT_USTRONG:
		hud_offset = 30;
		if(window == 1) reset_attack_value(AT_USTRONG, AG_NUM_WINDOWS);
		if (window >= 4 && instance_exists(grabbed_player_obj)) 
		{
			
			//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
			if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
			else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

			else 
			{
				grabbed_player_obj.spr_dir = -spr_dir;
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
				
				if (window_timer <= 1) {
					grabbed_player_relative_x = grabbed_player_obj.x - x;
					grabbed_player_relative_y = grabbed_player_obj.y - y;
				}
				
				//on the first window, pull the opponent into the grab.
				if (window == 4) { 
					var pull_to_x = 12 * spr_dir;
					var pull_to_y = -70;
					
					var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
					grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
					grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					force_depth = true;
					depth = grabbed_player_obj.depth+1;
				}
				if (window == 5 && window_timer == 1) { 
					grabbed_player_obj = noone; 
					grabbed_player_relative_x = 0;
					grabbed_player_relative_y = 0;
				}
			}
		}
	break;
}
if (attack == AT_TAUNT && get_player_color( player ) == 29)
{	
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("gigataunt"));
} else {
	reset_attack_value(AT_TAUNT, AG_SPRITE);
}
//gnome layering stuff 
switch (attack) {
	case AT_DTILT:
	if(window == 1 && window_timer == 4) sound_play(asset_get("sfx_ice_nspecial_hit_ground"), false, noone, 0.5, 1.2)
	break;
	case AT_USTRONG:
	//if window == 3 && window_timer == 10 {
	//	sound_play(asset_get("sfx_swipe_medium2"))
	//}
	break;
	case AT_DATTACK:
	if window == 1 && window_timer == 7 {
		sound_play(asset_get("sfx_swipe_medium2"))
	}

	if was_parried == true {
		hsp = 0;
		off_edge = false;
	}
	break;
//	case AT_NAIR:
//		if window == 1 && window_timer == 2 {
//			sound_play(asset_get("sfx_swipe_weak2"))
//		}
//	break;
	case AT_FAIR: 
		if window == 1 && window_timer == 11 {
			sound_play(asset_get("sfx_ice_ftilt"))
		}
	break;
	case AT_BAIR: 
		if window == 1 && window_timer == 10 {
			sound_play(asset_get("sfx_swipe_weak2"))
		}
	break;
	case AT_FSPECIAL: 
		if window == 1 && window_timer == 12 {
			sound_play(asset_get("sfx_swipe_medium2"))
		}
		if window == 3 && window_timer == 1 && !hitpause{
			sound_play(asset_get("sfx_ice_fspecial_hit_ground"), 0, noone, 1, 1.2)
		}
	break;
	case AT_NSPECIAL:
		if window == 1 && window_timer == 1 {
			sound_play(asset_get("sfx_ice_burst_up"))
		}
	break;
	case AT_DSPECIAL:
		if window == 1 && window_timer == 4 {
			sound_play(asset_get("sfx_ice_uspecial_start"))
		}
	break;
}
	
#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}
#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}