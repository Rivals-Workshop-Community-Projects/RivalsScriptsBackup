//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
	case AT_USPECIAL:
		if(window < 3)
			can_fast_fall = false;
		else
			can_fast_fall = true;
		if(window > 1)
		can_wall_jump = true;
	break;
	
	case AT_FSPECIAL:
		move_cooldown[AT_FSPECIAL] = 25;
		if(!hitpause && window == 2 && window_timer == 1)
		{
			with(obj_article1)
			{
				if(collision_rectangle(other.x, other.y-10, other.x+other.spr_dir*140, other.y-40, id, false, false) && player_id == other.id)
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
			if(collision_rectangle(x, y-20, x+spr_dir*140, y-30, asset_get("par_block"), true, true))
			{
				hsp = spr_dir*6;
				vsp = -5;
				sound_play( asset_get("sfx_icehit_medium2"));
			}
		} 
		else if (window == 3)
		{
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
					sound_play(asset_get("sfx_diamond_collect"))
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
		if(window == 2)
		{
			if(window_timer == 1)
				instance_create(x,y,"obj_article1")
			if(!was_parried)
				can_jump = true;
		}

		can_fast_fall = false;
		can_move = false
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

//gnome layering stuff 
switch (attack) {
	case AT_DTILT:
	if(window == 1 && window_timer == 8) sound_play(asset_get("sfx_ice_nspecial_hit_ground"), false, noone, 0.5, 1.2)
	break;
	case AT_USTRONG:
	if window == 3 && window_timer == 10 {
		sound_play(asset_get("sfx_swipe_medium2"))
	}
	break;
	case AT_DATTACK:
	if window == 1 && window_timer == 7 {
		sound_play(asset_get("sfx_swipe_medium2"))
	}
	break;
	case AT_NAIR:
		if window == 1 && window_timer == 7 {
			sound_play(asset_get("sfx_ice_back_air"))
		}
	break;
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