//B - Reversals
switch(attack)
{
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if (attack == AT_TAUNT_2)
{
	if window == 6
	{
		can_dash = true;
		can_walk = true;
		can_attack = true;
		can_special = true;
		can_shield = true;
		can_strong = true;
		can_move = true;
		can_jump = true;
	}
}

if (attack == AT_TAUNT)
{
	if (taunt_down)
	{
		if window == 2 and window_timer == 23
		{
			window = 2;
			window_timer = 1;
		}
	}
	if (window == 3)
	{
		can_dash = true;
		can_walk = true;
		can_attack = true;
		can_special = true;
		can_shield = true;
		can_strong = true;
		can_move = true;
		can_jump = true;
	}
}

if (attack == AT_FSTRONG)
{
	if (window == 2)
	{
		var wsh = 13.5 + (strong_charge / 4.5)
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, wsh);
	}
	if (window == 4)
	{
		if (free)
		{
			hsp = hsp / 1.3;//1.1
		}
		else
		{
			hsp = hsp / 1.6;//1.6
		}
	}
}

if (attack == AT_FAIR)
{
	if (has_hit) and (!was_parried) and (!hitpause) and (window < 5)
	{
		//Prevents cancel on sound frame
		var dont_cancel = false;
		if (window == 2) and (window_timer == 5)
		{
			dont_cancel = true;
		}
		if (window == 3) and (window_timer == 5)
		{
			dont_cancel = true;
		}
		if (window == 4) and (window_timer == 8)
		{
			dont_cancel = true;
		}
		if (dont_cancel == false)
		{
			if (spr_dir == 1)
			{
				//can_attack = true;
				if (up_down and attack_pressed) or (up_stick_pressed) set_attack(AT_UAIR);
				if (down_down and attack_pressed) or (down_stick_pressed) set_attack(AT_DAIR);
				if (left_down and attack_pressed) or (left_stick_pressed) set_attack(AT_BAIR);
				if joy_pad_idle and attack_pressed set_attack(AT_NAIR);
			}
			else
			{
				//can_attack = true;
				if (up_down and attack_pressed) or (up_stick_pressed) set_attack(AT_UAIR);
				if (down_down and attack_pressed) or (down_stick_pressed) set_attack(AT_DAIR);
				if (right_down and attack_pressed) or (right_stick_pressed) set_attack(AT_BAIR);
				if joy_pad_idle and attack_pressed set_attack(AT_NAIR);
			}
		}
	}
}

//Human Friendly Tilt Boost
if (attack == AT_JAB)
{
	if (window == 7) and (window_timer == 4)
	{
		if (!joy_pad_idle)
		{ 
			var gives_speed = false;
			var attack_set = null;
			if (joy_dir >= 28 and joy_dir <= 155)
			{
			    gives_speed = true;
			    attack_set = AT_UTILT;
			}
			if (joy_dir >= 204 and joy_dir <= 333)
			{
			    gives_speed = true;
			    attack_set = AT_DTILT;
			}
			if ((joy_dir >= 0 and joy_dir <= 27) or (joy_dir >= 334 and joy_dir < 360) or (joy_dir >= 156 and joy_dir <= 203))
			{
			    gives_speed = true;
			    attack_set = AT_FTILT;
			}
			if (gives_speed == true)
			{
				hsp += spr_dir * get_window_value(AT_JAB, 8, AG_WINDOW_HSPEED);
			}
			//Reverse tilt boost
			if (spr_dir == 1 and (joy_dir > 90 and joy_dir < 170))
			or ( (spr_dir == -1 and ((joy_dir > 0 and joy_dir < 90) or (joy_dir > 270 and joy_dir < 360))) )
			{
				spr_dir = -spr_dir;
			}
			if (attack_set != null)
			{
				set_attack(attack_set);
			}
		}
	}
}

if (attack == AT_DSTRONG)
{
	if (window == 2) and (window_timer == 4)
	{
		if (free)
		{
			create_hitbox(AT_DSTRONG, 1, x,y,);
		}
		else
		{
			create_hitbox(AT_DSTRONG, 2, x,y,);
		}
	}
}

if (attack == AT_DATTACK)
{
	if (window != 1)
	{
		if (!free) and (!was_parried)
		{
			landing_lag_time = 11;
			set_state(PS_LANDING_LAG);
		}
	}
}

if (attack == AT_DAIR)
{
    if (window == 1 and window_timer < 5)
    {
        if (spr_dir == 1 and left_down){
    		spr_dir = -1
    	}
    	if (spr_dir == -1 and right_down){
    		spr_dir = 1
    	}
    }
    /*
    if (!free) and (!hitpause) and (!was_parried){
        destroy_hitboxes();
        landing_lag_time = 11;
        set_state(PS_LANDING_LAG);
    }
    */
}

if (attack == AT_NSPECIAL)
{
	nspec_dir = last_joy_dir;
	if state_timer == 1
	{
		if spr_dir last_joy_dir = 0 else last_joy_dir = 180;
	}
	//Whifflag
	if instance_exists(after_image1) and after_image1.victim != noone
	{
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, nspec_normal_lag);
	}
	else
	{
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, nspec_whifflag);
	}
	if !instance_exists(after_image1)
	{
		if (special_down)
		{
			can_fast_fall = false;
			can_wall_jump = true;
			if !joy_pad_idle
			{
				if (spr_dir == -1) and ((joy_dir <= 90 and joy_dir >= 0) or (joy_dir >= 270 and joy_dir <= 360))
				{
					spr_dir = 1;
				}
				else if (spr_dir == 1) and (joy_dir < 270 and joy_dir > 90)
				{
					spr_dir = -1;
				}	
			}
			//Wavedash cancel
			if free 
			{
				can_shield = 1;
			}
			else
			{
				if shield_pressed vsp = -1;
			}
		}
		else
		{
			window = 2;
		}
	}
	if (window == 1) and instance_exists(after_image1)
	{
		if (mark_meter > 0)
		{
			if (after_image1.state == 1)
			{
				teleports_to_after_image(true, true, false);
			}	
		}
		else
		{
			// Fake dspecial
			if (special_down)
			{
				can_wall_jump = true;
				can_fast_fall = false;
				if !joy_pad_idle
				{
					if (spr_dir == -1) and ((joy_dir <= 90 and joy_dir >= 0) or (joy_dir >= 270 and joy_dir <= 360))
					{
						spr_dir = 1;
					}
					else if (spr_dir == 1) and (joy_dir < 270 and joy_dir > 90)
					{
						spr_dir = -1;
					}	
				}
				//Wavedash cancel
				if free 
				{
					can_shield = 1;
				}
				else
				{
					if shield_pressed vsp = -1;
				}
			}
			else
			{
				if after_image1.sprite_index != sprite_get("projectile_start_up") and 
				after_image1.sprite_index != sprite_get("sage_projectile_start_up")
				{
					trigger_down_special = 1; //Handled in update.gml
					trigger_fake_down_special = 1;
					set_attack(AT_DSPECIAL);
				}
				set_attack(AT_DSPECIAL);
			}
		}
	}
    if (window == 2)
    {
    	if (window_timer == 1)
    	{
    		if !joy_pad_idle
			{
				if (spr_dir == -1) and ((joy_dir <= 90 and joy_dir >= 0) or (joy_dir >= 270 and joy_dir <= 360))
				{
					spr_dir = 1;
				}
				else if (spr_dir == 1) and (joy_dir < 270 and joy_dir > 90)
				{
					spr_dir = -1;
				}	
			}
    	}
    	if !instance_exists(after_image1) and (window_timer == 1)
        {
        	mark_meter = 0;
        	//After image creation with a dash
        	after_image1_no_dash = false;
    		after_image1 = instance_create(x, y, "obj_article1");
        }
    }
}

if (attack == AT_FSPECIAL)
{
	can_move = 0;
	can_wall_jump = 1;
	if (window == 1 and window_timer == 1)
	{
		if (free) 
		{
			fspec_started_on_ground = false;
		}
		else
		{
			fspec_started_on_ground = true;
		}
		fspec_bumped = 0;
	}
	if (window == 2 and window_timer == 1)
	{
		move_cooldown[AT_FSPECIAL] = 99999;
	}
	if (has_hit)
	{
		if (window == 2) and !(hitpause)
		{
			window_timer = 13;
		}
		destroy_hitboxes();
	}
	if (window == 3)
	{
		if (has_hit)
		{
			fspec_endlag_faf = fspec_endlag_faf_hit;
			if (fspec_bumped == 0)
			{
				hsp = hsp/2.1;
				vsp = -7;
				fspec_bumped = 1;	
			}
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
		}
		else
		{
			fspec_endlag_faf = fspec_endlag_faf_whiff;
			if (window_timer == 1)
			{
				hsp = hsp/4;
			}
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
		}
		//FSPECIAL FAF
		if (window_timer >= fspec_endlag_faf) and (!was_parried)
		{
			can_attack = true;
			can_jump = true;
			can_special = true;
			can_move = true;
			can_strong = true;
			can_ustrong = true;
			can_shield = true;
			can_fast_fall = true;
		}
		if (!free) and (!was_parried) and (!has_hit)
		{
			landing_lag_time = get_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG);
    		set_state(PS_LANDING_LAG);
		}
	}
	else
	{
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
	}
	if (!was_parried) and (has_hit)
    {
    	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
    }
    else
    {
    	if (fspec_started_on_ground == false)
    	{
    		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
    	}
    	else
    	{
    		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
    	}
    }
    
    // VSP lock on startup if not rising 
    if (window == 1)
    {
    	if (vsp > 0)
    	{
    		vsp = 0;
    	}
    }
    
    // Prevent cringe fspec at ledge
    if place_meeting(x+hsp,y,asset_get("par_block")) and (window == 2)
    {
        for (var i = 0; i < 30; i++){
            if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))) {
                y -= i;
                break;
            }
        }
    }
}

if (attack == AT_DSPECIAL)
{
	if state_timer == 1
	{
		if spr_dir last_joy_dir = 0 else last_joy_dir = 180;
	}
	if instance_exists(after_image1)
	{
		//Wavedash cancel
		if (window == 1)
		{
			can_fast_fall = false;
			can_wall_jump = true;
			if free 
			{
				can_shield = 1;
			}
			else
			{
				if shield_pressed vsp = -1;
			}	
		}
		if (window == 1)
		{
			if (!special_down)
			{
				dspec_angle = last_joy_dir;
				window = 2;
			}	
			if !joy_pad_idle
			{
				if (spr_dir == -1) and ((joy_dir <= 90 and joy_dir >= 0) or (joy_dir >= 270 and joy_dir <= 360))
				{
					spr_dir = 1;
				}
				else if (spr_dir == 1) and (joy_dir < 270 and joy_dir > 90)
				{
					spr_dir = -1;
				}	
			}
		}
		if (window == 2)
		{
			if after_image1.sprite_index != sprite_get("projectile_start_up") 
			and after_image1.sprite_index != sprite_get("sage_projectile_start_up")
			{
				if trigger_fake_down_special == 0
				{
					//move_cooldown[AT_DSPECIAL] = 60*3;
				}
				trigger_down_special = 1; //Handled in update.gml
			}	
		}
	}
	else
	{
		set_attack(AT_NSPECIAL);
	}
}

if (attack == AT_USPECIAL)
{
	can_wall_jump = 1;
	can_fast_fall = false;
	if (window == 1)
	{
		if (window_timer == 1)
		{
			if (free) 
			{
				uspec_started_on_ground = false;
			}
			else
			{
				uspec_started_on_ground = true;
			}
		}
	}
	if (window == 2)
	{
		if (window_timer == 1)
		{
			move_cooldown[AT_USPECIAL] = 99999;
			if sign(hsp) != spr_dir
			{
				hsp = -hsp;
			}
		}
	}
	if (window != 1) and (window != 4) and (!hitpause) and (!was_parried)
	{
		can_attack = true;
	}
	if (((attack_pressed) or (attack_down) or (strong_down)or (up_stick_pressed) or (left_stick_pressed) or (right_stick_pressed)) or (down_stick_pressed))
	and (window != 4) and (window != 1)
	{
		if (!has_hit)
		{
			uspec_pratfall_verif = 1;	
		}
	}
    if (!has_hit) and (window == 4) and (window_timer == 15) and (uspec_started_on_ground == false)
    {
    	set_state(PS_PRATFALL);	
    }
    if (window == 4) and (!free) and (!was_parried)
    {
    	landing_lag_time = 5;
    	set_state(PS_LANDING_LAG);
    }
    //Uspecial smear creation
    if (window == 1) and (window_timer == 10)
    {
    	article2_type = 0;
    	uspec_smear = instance_create(x, y, "obj_article2");
    }
}
//Pratfall after upB cancel if hasn't hit
if (uspec_pratfall_verif == 1) //uspec_pratfall_verif and upsec_pratfall_attack are reset in update.gml
{
	uspec_pratfall_attack = attack;
	var win = get_attack_value(attack, AG_NUM_WINDOWS)
	var win_timer = get_window_value(attack, win, AG_WINDOW_LENGTH)
	if (!has_hit)
	{
		if (window == win) and (window_timer == win_timer)
		{
			set_state(PS_PRATFALL);	
		}
	}
	else
	{
		uspec_pratfall_verif = 0
		uspec_pratfall_attack = 0;
	}
}
if (attack != uspec_pratfall_attack) //update.gml manages some other stuff regarding pratfall verif
{
	uspec_pratfall_verif = 0;
	uspec_pratfall_attack = 0;
}

//Cancels attacks into nspecial teleport
if instance_exists(after_image1) and (after_image1.state == 1) and (mark_meter > 0)
{
	if (special_pressed) and (!was_parried) and (!hitpause) and (window == 1)
	and ((attack == AT_FSTRONG) or (attack == AT_USTRONG) or (attack == AT_DSTRONG))
	{
		if (sage_mode == 1) and (has_hit)
		{
			teleports_to_after_image(false, true, true);
		}
		if (sage_mode == 0) or (!has_hit)
		{
			teleports_to_after_image(false, true, false);
		}
	}
	else if (has_hit)
	{
		if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) 
		and (special_pressed) 
		and (joy_pad_idle)
		{
			nspec_press_tp_buffer = true;
		}
	} 
	else
	{
		nspec_press_tp_buffer = false;
	}
	
	if ((!was_parried) and (has_hit) and (!hitpause))
	and (nspec_press_tp_buffer)
	{
		if (sage_mode == 1)
		{
			teleports_to_after_image(true, true, true);
		}
		else
		{
			teleports_to_after_image(true, true, false);
		}
		nspec_press_tp_buffer = false;
	}
}

//Cancelling hit normals and strongs into direction specials teleport or strongs teleport
if instance_exists(after_image1) and (after_image1.state == 1) and (mark_meter > 0)
{
	if (!was_parried) and (!hitpause) and (has_hit)
	{
		// Special teleport
		if (special_down) and (special_down_timer >= 8)
		{
			if !joy_pad_idle
			{
				if (spr_dir == -1) and ((joy_dir <= 90 and joy_dir >= 0) or (joy_dir >= 270 and joy_dir <= 360))
				{
					spr_dir = 1;
				}
				else if (spr_dir == 1) and (joy_dir < 270 and joy_dir > 90)
				{
					spr_dir = -1;
				}	
			}
			if (left_down or left_pressed) or (right_down or right_pressed)
			{
				move_cooldown[AT_FSPECIAL] = 0;
				force_tp = 1;
				set_attack(AT_FSPECIAL);
			}
			if (up_down or up_pressed)
			{
				move_cooldown[AT_USPECIAL] = 0;
				force_tp = 1;
				set_attack(AT_USPECIAL);	
			}
			if (down_down or down_pressed)
			{
				move_cooldown[AT_DSPECIAL] = 0;
				force_tp = 1;
				set_attack(AT_DSPECIAL);	
			}
		}
		// Strong teleport
		else if (strong_down_timer >= 8)
		{
			if (attack == AT_USPECIAL)
		    {
		    	attack_was_uspec = true;
		    }
		    else
		    {
		    	attack_was_uspec = false;
		    }
			force_tp = 1;
			if (!joy_pad_idle)
			{
				if (spr_dir == -1) and ((joy_dir <= 90 and joy_dir >= 0) or (joy_dir >= 270 and joy_dir <= 360))
				{
					spr_dir = 1;
				}
				if (spr_dir == 1) and (joy_dir < 270 and joy_dir > 90)
				{
					spr_dir = -1;
				}
			}
			if (left_strong_down) or (right_strong_down)
			{
				// Reverse fstrong with stick
				if (left_strong_down and spr_dir == 1) or (right_strong_down and spr_dir == -1)
				{
					spr_dir = -spr_dir;
				}
				set_attack(AT_FSTRONG);
			}
			else
			{
				// Attack set
				if (up_strong_down)
				{
					set_attack(AT_USTRONG);
				}
				else if (down_strong_down)
				{
					set_attack(AT_DSTRONG);
				}
				else if (strong_down)
				{
					set_attack(AT_USTRONG)
					if (joy_dir >= 28 and joy_dir <= 155)
					{
					    set_attack(AT_USTRONG);
					}
					else if (joy_dir >= 204 and joy_dir <= 333)
					{
					    set_attack(AT_DSTRONG);
					}
					else if ((joy_dir >= 0 and joy_dir <= 27) or (joy_dir >= 334 and joy_dir < 360) or (joy_dir >= 156 and joy_dir <= 203))
					{
					    set_attack(AT_FSTRONG);
					}
				}
			}
		}
	}
}

//Holding specials/strongs teleports/force_tp
if instance_exists(after_image1) and (after_image1.state == 1) and (mark_meter > 0)
{
	var go_to_clone = 0;
	if (special_down_tp) or (force_tp)
	{
		if (attack == AT_USPECIAL)
		{
			if (window == 1) and (window_timer == 9)
			{
				go_to_clone = 1;
			}
		}
		if (attack == AT_FSPECIAL)
		{
			if (window == 1) and (window_timer == 9)
			{
				go_to_clone = 1;
			}
		}
	}
	if (force_tp)
	{
		if (attack == AT_DSPECIAL)
		{
			if (window == 1)
			{
				go_to_clone = 1;
			}
		}
	}
	if ((left_strong_down or right_strong_down or up_strong_down or down_strong_down) or strong_down)
	and (force_tp)
	{
		if (attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_DSTRONG)
		{
			if (window == 1)
			{
				go_to_clone = 1;	
			}
			else
			{
				force_tp = 0;
			}
		}
	}
	if go_to_clone == 1 and (after_image1.state == 1)
	{
		if (after_image1.state == 1)
		{
			if (sage_mode == 1) and (force_tp == 1)
			{
				teleports_to_after_image(false, true, true);
			}
			else
			{
				teleports_to_after_image(false, true, false);
			}
		}
	}
}
if (special_down) and (special_down_tp_lock = 0)
{
	special_down_tp = 1;
}
else
{
	special_down_tp = 0;
}
if (special_pressed)
{
	special_down_tp_lock = 0;
}

//#args 
#define teleports_to_after_image
var go_to_idle = argument0, put_cooldown_to_nspec = argument1, creates_after_image = argument2;
{
	special_down_tp_lock = 1;
	mark_meter = 0;
	force_tp = 0;
	
	// Specials cd reset
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
	
	// Sfx
	sound_play(teleport_sound, false, noone, 1.1);
	
	// Vfx
	spawn_hit_fx(x, y, leaf_burst_effect)
	
	// To avoid accidental nspec after tp
	if (put_cooldown_to_nspec == true)
	{
		move_cooldown[AT_NSPECIAL] = 7;
		move_cooldown[AT_USPECIAL] = 7;
		move_cooldown[AT_FSPECIAL] = 7;
		move_cooldown[AT_DSPECIAL] = 7;
	}
	var former_x = x;
	var former_y = y;
	with (after_image1)
	{
		if (free == 1)
		{
		    if place_meeting(x, y+10, asset_get("par_block"))
		    {
		    	player_id.x = x;
			    player_id.y = y+10;
			    if (player_id.attack == AT_USPECIAL) or player_id.attack_was_uspec == true
			    {
			    	player_id.vsp = player_id.vsp * 1.2;
			    	player_id.attack_was_uspec = false;
			    }
			    else
			    {
			    	player_id.vsp = 0;	
			    }
		    }
		    else
		    {
		    	idle_to_go_into = PS_IDLE_AIR;
		    	player_id.vsp -= max(5,min(player_id.vsp * 2, 6));
			    player_id.x = x;
			    player_id.y = y;
		    }
		}
		else
		{
			if (player_id.attack == AT_USPECIAL) or player_id.attack_was_uspec == true
		    {
		    	player_id.vsp = player_id.vsp * 1.2;
		    	player_id.attack_was_uspec = false;
		    }
		    else
		    {
		    	player_id.vsp = 0;	
		    }
		    if position_meeting(x, y+1, asset_get("par_jumpthrough"))
		    {
		        player_id.x = x;
		        player_id.y = y+1;
		    }
		    else
		    {
		        player_id.x = x;
		        player_id.y = y+4;
		    }
		}
		with other
		{
			// Sonic boom vfx/sfx and speed limitation
				var max_air_speed = 16;
				if (abs(hsp) > max_air_speed) and (after_image1.idle_to_go_into == PS_IDLE_AIR)
				{
					hsp = sign(hsp) * max_air_speed;
				}
				if (abs(hsp) > sonic_boom_threshold)
				{
					if (sign(hsp) = spr_dir)
					{
						spawn_hit_fx(x,y,sonic_boom_effect)
					}
					else
					{
						spawn_hit_fx(x,y,sonic_boom_effect_reversed)
					}
					sound_play(sonic_boom_sound, false, noone, 2);
				}
			if (go_to_idle == true)
			{
				set_state(after_image1.idle_to_go_into);
			}
		}
		//die_trigger = 1;
		instance_destroy(other.after_image1);
		if creates_after_image
		{
			//After image creation
			other.after_image1_no_dash = true;
			other.after_image1 = instance_create(former_x, former_y-1, "obj_article1");
		}
	}
}









