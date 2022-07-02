// attack_update

//B - Reversals

taunt_timer += -1;

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

 if (attack == AT_DATTACK && window = 2)
{
	soft_armor = 16;
	hsp = 6 * spr_dir;

}

if (attack == AT_EXTRA_1)
{
	if (window == 1 && window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	{
		jump_toggle = 1;
		
		if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "demo_charge_windup1" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "demo_charge_windup2" ) );
    		}
    		else
    		{
    			sound_play(sound_get("demo_charge_windup3"));
    		}
	}
	
	if (window = 2 || window = 1)
	{
	spawn_hit_fx(x, y, chargefx);
	}
	if (window = 2)
	{
		charge_timer++;
		if (hsp == 0 && has_hit = false)
		{
			window = 4;
		window_timer = 0;
		charge_timer = 0;
		}
		
	}
	if (charge_timer > 49 )
	{
		window = 4;
		window_timer = 0;
		charge_timer = 0;

	}
	
	if (jump_down && window = 2 && jump_toggle = 1)
	{
		vsp += -9;
		charge_timer += -10;
		window_timer += -10;
		jump_toggle = 0;
	}
	
	if ((has_hit = true) && window = 2 )
	{
		window = 3;
		window_timer = 0;
		charge_timer = 0;
		
	}
	
	if (window = 3 && has_hit = true && bounce = 1)
	{
		vsp = -5;
		hsp = -8 * spr_dir;
		move_cooldown[AT_EXTRA_1] = 60;
	}
	else	if (window = 3 && has_hit = true && bounce = 0)
	{
		vsp = -1;
		hsp = -1 * spr_dir;
		move_cooldown[AT_EXTRA_1] = 60;
	}
	
	if (window = 2 && window_timer > 10)
	{
	if (left_stick_down || right_stick_down || (attack_pressed && right_down) || (attack_pressed && left_down) ||  (attack_pressed))
	{
		attack = AT_FTHROW;
		charge_timer = 0;
		window = 0;
		window_timer = 0;

	}
	}
}

if (attack == AT_FTHROW && window = 4)
{
	sound_stop (sound_get("demo_charge_windup1"));
	sound_stop (sound_get("demo_charge_windup2"));
	sound_stop (sound_get("demo_charge_windup3"));
}


 if (attack == AT_DATTACK && window = 1)
{
	soft_armor = 5;

}

if (attack == AT_FSTRONG && (window == 3 || window == 4))
{
	//soft_armor = 10;
}

if (attack == AT_DSPECIAL)
{
	//soft_armor = 10;
}

if (attack == AT_USTRONG && (window == 2))
{
	//soft_armor = 14;
}

if (attack == AT_DSTRONG && (window == 3 || window == 4 || window == 5))
{
	//soft_armor = 14;
}



if (attack == AT_DATTACK && window = 2)
{

if (attack == AT_DATTACK && window_timer > 5 && obj_article1.hit_wall = true)
{
	hsp = 0;
	
}
}
if (attack == AT_DATTACK && window = 2 && window_timer = 10) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
	vsp += -4;
}

if (special_down && sticky_count < 1 && det_timer < 1 && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL && attack != AT_DSPECIAL_2 && attack != AT_DSPECIAL_AIR && reminder_timer > 30)
{


    sticky_reminder = spawn_hit_fx(x, y, nostickies);
    reminder_timer = 0;

}



else if (special_down && sticky_count > 0 && det_timer < 1 && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL && attack != AT_DSPECIAL_2 && attack != AT_DSPECIAL_AIR && obj_article2.strength > 5)
{

	sound_play( sound_get( "grenade_jump_lp_01" ) );
		sound_play( sound_get( "stickybomblauncher_det" ) );
    det_timer = 5;
    is_jump = true;
    reminder_timer = 0;
}
else if (special_down && sticky_count > 0 && det_timer < 1 && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL && attack != AT_DSPECIAL_2 && attack != AT_DSPECIAL_AIR)
{


    det_timer = 5;
    reminder_timer = 0;

}





if (attack == AT_UAIR || attack == AT_DATTACK)
{
    draw_indicator = false;
}

if (attack == AT_UAIR)
{
	if (window = 1 && window_timer = 2) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	{
		with (asset_get("oPlayer"))
	{
		if (object != noone)
		{
			other.objectcompat = object;
			
		}
	}

	
	}

}



if (attack == AT_DSTRONG && window == 5 && window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    spawn_hit_fx(x, y, dsmashspah);
}


if (attack == AT_NAIR && window == 2 && window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    spawn_hit_fx(x, y, chuck);
}


if (attack == AT_TAUNT_2 && window == 4 && window_timer = 28) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
	sound_stop(sound_get( "ktaunt_intro" ));
}




if (attack = AT_TAUNT && window = 1)
{
	
	if (right_down)
	{
		if (taunt_menu == 1)
		{
			taunt_trans = 1;
		}
		if (taunt_menu == 2)
		{
			taunt_trans = 2;
		}
		if (taunt_menu == 3)
		{
			taunt_trans = 3;
		}
	}
	
	if (down_down && taunt_timer < 0)
	{
		taunt_num++;
		taunt_timer = 10;
		if (taunt_num > 10)
		{
			taunt_num = 1;
		}
	}
	else if (up_down && taunt_timer < 0)
	{
		taunt_num += -1;
		taunt_timer = 10;
		if (taunt_num < 1)
		{
			taunt_num = 10;
		}
	}

	
	if (taunt_trans != 0)
	{
		taunt_trans_timer += 1;
		if (taunt_trans_timer == 20)
		{
			if (taunt_trans = 1) //going right from 1
			{
				taunt_menu = 2;
				taunt_trans = 0;
				taunt_trans_timer =0;
			}
			if (taunt_trans = 2) //going right from 2
			{
				taunt_menu = 3;
				taunt_trans = 0;
				taunt_trans_timer =0;
			}
			if (taunt_trans = 3) //going right from 3
			{
				taunt_menu = 1;
				taunt_trans = 0;
				taunt_trans_timer =0;
				
			}
			if (taunt_trans = 4) //going left from 1
			{
				taunt_menu = 3;
				taunt_trans = 0;
				taunt_trans_timer =0;
			}
			if (taunt_trans = 5) // going left from 2
			{
				taunt_menu = 1;
				taunt_trans = 0;
				taunt_trans_timer =0;
			}
			if (taunt_trans = 6) // going left from 3
			{
				taunt_menu = 2;
				taunt_trans = 0;
				taunt_trans_timer =0;
			}
			
		}
	}
	
	if (attack_pressed)
	{
		if (taunt_menu = 1)
		{
		if (taunt_num = 1)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "medic01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "medic02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("medic03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 2)
		{
			
    	sound_play( sound_get( "thanks01" ) );
    		
    	window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		if (taunt_num = 3)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "go01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "go02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("go03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 4)
		{
			
    	sound_play( sound_get( "moveup01" ) );
    		
    	window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 5)
		{
			if ((random_func (2, 2, true)) == 1)
    		{
    			sound_play( sound_get( "headleft01" ) );
    		}
    		else
    		{
    			sound_play(sound_get("headleft02"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 6)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "headright01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "headright02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("headright03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 7)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "yes01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "yes02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("yes03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 8)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "no01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "no02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("no03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		
		
		if (taunt_num = 10 || taunt_num = 9)
		{
			
		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		
		}
		}
		if (taunt_menu == 2)
		{
		if (taunt_num = 1)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "incoming01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "incoming02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("incoming03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		if (taunt_num = 2)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "cloakedspy01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "cloakedspy02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("cloakedspy03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		if (taunt_num = 3)
		{
			if ((random_func (2, 2, true)) == 1)
    		{
    			sound_play( sound_get( "sentryahead01" ) );
    		}
    		else
    		{
    			sound_play(sound_get("sentryahead02"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		if (taunt_num = 4)
		{
			if ((random_func (2, 2, true)) == 1)
    		{
    			sound_play( sound_get( "needteleporter01" ) );
    		}
    		else
    		{
    			sound_play(sound_get("needteleporter02"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		if (taunt_num = 5)
		{
		
    	sound_play( sound_get( "needdispenser01" ) );
    		
    		

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 6)
		{
		
    	sound_play( sound_get( "needsentry01" ) );
    		
    		

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 7)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "activatecharge01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "activatecharge02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("activatecharge03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 8 || taunt_num = 9 || taunt_num = 10)
		{
			window = 2;
    	window_timer = 0;
    	taunt_num = 1;
		}
	
	}
	
	if (taunt_menu == 3)
		{
		if (taunt_num = 1)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "helpme01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "helpme02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("helpme03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		if (taunt_num = 2)
		{
			if ((random_func (7, 7, true)) == 1)
    		{
    			sound_play( sound_get( "battlecry01" ) );
    		}
    		else if ((random_func (7, 7, true)) == 2)
    		{
    			sound_play( sound_get( "battlecry02" ) );
    		}
    		else if ((random_func (7, 7, true)) == 3)
    		{
    			sound_play( sound_get( "battlecry03" ) );
    		}
    		else if ((random_func (7, 7, true)) == 4)
    		{
    			sound_play( sound_get( "battlecry04" ) );
    		}
    		else if ((random_func (7, 7, true)) == 5)
    		{
    			sound_play( sound_get( "battlecry05" ) );
    		}
    		else if ((random_func (7, 7, true)) == 6)
    		{
    			sound_play( sound_get( "battlecry06" ) );
    		}
    		else 
    		{
    			sound_play( sound_get( "battlecry07" ) );
    		}
    		

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		if (taunt_num = 3)
		{
			if ((random_func (7, 7, true)) == 1)
    		{
    			sound_play( sound_get( "cheers01" ) );
    		}
    		else if ((random_func (7, 7, true)) == 2)
    		{
    			sound_play( sound_get( "cheers02" ) );
    		}
    		else if ((random_func (7, 7, true)) == 3)
    		{
    			sound_play( sound_get( "cheers03" ) );
    		}
    		else if ((random_func (7, 7, true)) == 4)
    		{
    			sound_play( sound_get( "cheers04" ) );
    		}
    		else if ((random_func (7, 7, true)) == 5)
    		{
    			sound_play( sound_get( "cheers05" ) );
    		}
    		else if ((random_func (7, 7, true)) == 6)
    		{
    			sound_play( sound_get( "cheers06" ) );
    		}
    		else 
    		{
    			sound_play( sound_get( "cheers07" ) );
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		if (taunt_num = 4)
		{
			if ((random_func (4, 4, true)) == 1)
    		{
    			sound_play( sound_get( "jeers01" ) );
    		}
    		else if ((random_func (4, 4, true)) == 2)
    		{
    			sound_play( sound_get( "jeers02" ) );
    		}
    		else if ((random_func (4, 4, true)) == 3)
    		{
    			sound_play( sound_get( "jeers03" ) );
    		}
    		else
    		{
    			sound_play(sound_get("jeers04"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		if (taunt_num = 5)
		{
		
    	sound_play( sound_get( "positivevocalization01" ) );
    		
    		

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 6)
		{
		
    	if ((random_func (4, 4, true)) == 1)
    		{
    			sound_play( sound_get( "negativevocalization01" ) );
    		}
    		else if ((random_func (4, 4, true)) == 2)
    		{
    			sound_play( sound_get( "negativevocalization02" ) );
    		}
    		else if ((random_func (4, 4, true)) == 3)
    		{
    			sound_play( sound_get( "negativevocalization03" ) );
    		}
    		else
    		{
    			sound_play(sound_get("negativevocalization04"));
    		}
    		
    		

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 7)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "niceshot01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "niceshot02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("niceshot03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if (taunt_num = 8 || taunt_num = 9)
		{
			if ((random_func (3, 3, true)) == 1)
    		{
    			sound_play( sound_get( "goodjob01" ) );
    		}
    		else if ((random_func (3, 3, true)) == 2)
    		{
    			sound_play( sound_get( "goodjob02" ) );
    		}
    		else
    		{
    			sound_play(sound_get("goodjob03"));
    		}

		window = 2;
    	window_timer = 0;
    	taunt_num = 1;
			
		}
		
		if ( taunt_num = 10)
		{
			window = 2;
    	window_timer = 0;
    	taunt_num = 1;
		}
	
	}
	
	
	
	
	
	
	
	
}
}

if (attack == AT_DATTACK)
{
	if (get_player_color(player) == 10)
	{
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("mesadattack"));
	}
	if (get_player_color(player) == 11)
	{
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("wackyracesdattack"));
	}
}

if (attack == AT_DATTACK && window = 1 && window_timer = 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    fling_toggle = 0;
sound_play( asset_get( "sfx_jumpground" ) );
    	if (get_player_color(player) == 10)
	{
			sound_play( sound_get( "freedom" ) );
	}
	if (get_player_color(player) == 11)
	{
		
	song_num++;
				if (song_num = 1 || song_num = 3)
    		{
    			sound_play( sound_get( "junkies" ) );
    		}
    		else if (song_num = 2)
    		{
    			sound_play( sound_get( "oil" ) );
    		}
    		else if (song_num = 4)
    		{
    			sound_play(sound_get("wacha"));
    			song_num = 0;
    		}

	}
    
}

if (attack == AT_DATTACK && window = 2 && window_timer = 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    fling_toggle = 0;
	sound_play( sound_get( "engine_idle" ) );

    
}
if (attack == AT_DATTACK && window == 2 && window_timer == 30) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    fling_toggle = 1;
    
    if (get_player_color(player) == 10)
	{
	 spawn_hit_fx(x, y, mesacrash);
	}
	  if (get_player_color(player) == 11)
	{
	 spawn_hit_fx(x, y, wackyracescrash);
	}
	else
	{
    spawn_hit_fx(x, y, crash);
	}
	    	sound_stop( sound_get( "engine_idle" ) );
	   
    		sound_play( asset_get( "sfx_ell_overheat" ) );
    
}
if (attack == AT_DSPECIAL_2 && window == 2 && window_timer == 1 && obj_article_solid.player_id = id) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    
    meemfx = spawn_hit_fx(obj_article_solid.x, obj_article_solid.y, 254);
    call_count++;
}


if (attack == AT_FSTRONG && window == 5 && window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    spawn_hit_fx(x, y, fsmashgun);
    
    vsp = vsp - 20;
    hsp = hsp - (80 * spr_dir);
}

if (attack == AT_USTRONG && window == 3 && window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    spawn_hit_fx( x, y, shoot);
}

if (attack == AT_UTILT)
{
    if ((random_func (3, 3, true)) == 0)
    		{
    			set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("badpipe"));
    		}
    		else if ((random_func (3, 3, true)) == 1)
    		{
    			set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("badpipe2"));
    		}
    		else
    		{
    			set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("badpipe3"));
    		}
}

if (attack == AT_FAIR && is_jump == true)
{
	
		
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("shovel_swing_crit"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);    
    
    
    set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 101);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get ("crit_hit"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, crit);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FAIR, 1, HG_THROWS_ROCK, 1);

	
}
else
{
	
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("shovel_swing"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 0);

    
set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 101);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, 0);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_FAIR, 1, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("axe_hit_flesh2"));
}

if (free == false)
{
    is_jump = 0;
    sound_stop( sound_get( "grenade_jump_lp_01" ) );
}

if (attack = AT_DAIR) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
//changes here by TinMines
{
	if (window == 3 && window_timer == 1){
		if (looseboost_timer > 0){
			spawn_hit_fx( x, y, boom );
			bair_can_vsp = -14;
			looseboost_timer = 5;
		} else {
		spawn_hit_fx( x, y, boom );
  		vsp = -8;
		}
	} 
}else {bair_can_vsp = 0;}

if (attack == AT_DAIR && window == 3 && window_timer == 3) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html

{
    
    if (has_hit = true)
    {
        hit_count = 1;
    }
    has_hit = false;
    
}

//changes here by TinMines
if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 10;
}


if (attack == AT_DAIR && window == 3 && window_timer == 9 && has_hit = true && hit_count = 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html

{
    	sound_play( sound_get( "doubledonk" ) );
    	sound_play( sound_get( "grenade_jump_lp_01" ) );
        spawn_hit_fx( x, y, donk );
        
        vsp = vsp - 25;
        if (vsp < -20)
    {
    	vsp = -20;
    }
        is_jump = 1;
}

if (attack == AT_DAIR && window == 4)
{
     hit_count = 0;
}

if (attack == AT_USPECIAL && window == 1 && window_timer < 3)
{
    vsp = 0;
    hsp = 0;
    uspecial_toggle = 1;
    planty = y;
    hover_timer = 0;
}

if (attack == AT_USPECIAL && window == 1)
{
    vsp += -1;
    
    if (special_down && window_timer != 22 && window_timer != 21)
    {
    	window_timer += -0.35;
    }
    
    
    if (window_timer = 22 && special_down && hover_timer < 10) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	//changes here by TinMines 
    {
    	window_timer = 21;
    	vsp = 0;
    	hover_timer++;
    }
    if (jump_pressed)
    {
        window = 3;
        window_timer = 10;
        vsp = -12;
        sound_play( sound_get( "bottle_intact_hit_world1" ) );
        set_state( PS_PRATFALL );
        //move_cooldown[AT_USPECIAL] = 70;
    }
}

if (attack == AT_USPECIAL && window == 2)
{
	
    vsp += 2;
	
    fall_through = false;
    soft_armor = 14;		
    if (jump_pressed)
    //changes here by TinMines
    {
    	sound_play( sound_get( "bottle_broken_hit_flesh3" ) );
    	vsp = -12;
        set_state( PS_PRATFALL );
          //move_cooldown[AT_USPECIAL] = 70;
    }
}

if (attack == AT_USPECIAL && (window == 2) && has_hit == true && uspecial_toggle == 1)
{
    window = 3;
    window_timer = 0;
    uspecial_toggle = 0;
    
}

else if (attack == AT_USPECIAL && (window == 3) && has_hit == true)
{
    vsp = -6;
    is_jump = 1;
    
}

else if (attack == AT_USPECIAL && (window == 2) && free == false && uspecial_toggle == 1)
{
    window = 3;
    window_timer = 0;
    uspecial_toggle = 0;
}



if (attack = AT_BAIR && window == 2)
//changes here by TinMines
{
    hsp = 0;
    looseboost_timer = 30;
    if (left_down)
    {
        spr_dir = -1;
    }
    
    if (right_down)
    {
        spr_dir = 1;
    }
    move_cooldown[AT_BAIR] = 120;
}






if (attack == AT_DSPECIAL && window == 2 && window_timer = 1 ) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    instance_create (x + spr_dir * 40, (y-37), "obj_article_solid");
    meem_num += 1;
    call_count = 0;
}

if (attack == AT_FSPECIAL && window == 1 && window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
		sound_play( sound_get( "stickybomblauncher_charge_up" ) );
}


if (attack == AT_FSPECIAL && (window == 4 || window == 5 )&& window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
		sound_stop( sound_get( "stickybomblauncher_charge_up" ) );
}



if (attack == AT_FSPECIAL && window = 4 && window_timer = 1)  // aim forward // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    instance_create (x + spr_dir * 40, (y-50), "obj_article2");


    
}

else if (attack == AT_FSPECIAL && window = 5 && window_timer = 1) //aim downward
{
    instance_create (x + spr_dir * 30, (y-10), "obj_article2");


}

if (attack == AT_FSPECIAL && window = 1 && window_timer == 6) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    if (special_down)
    {
    
    window = 2;
    window_timer = 0;
    }
    else
    {
    window = 5;
    window_timer = 0;
    clear_button_buffer( PC_SPECIAL_PRESSED );
    }
        
}


if (attack == AT_FSPECIAL && window = 2 && window_timer == 6) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    if (special_down)
    {
    
    window = 3;
    window_timer = 0;
    }
    else
    {
    window = 4;
    window_timer = 0;
    }
        
}

if (attack == AT_FSPECIAL && window = 3 && window_timer == 6) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    if (special_down)
    {
    
    window = 3;
    window_timer = 0;
    }
    else
    {
    window = 4;
    window_timer = 0;
    }
        
}

if (attack == AT_DATTACK && window = 2 && window_timer = 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
	   instance_create (x , y, "obj_article1");
}



if (attack == AT_FSPECIAL && (window == 3 || window == 2))
{
    sticky_charge+= 1.5;
    
    
}
else if (attack == AT_FSPECIAL && window = 4 && window_timer == 3)
{
    sticky_charge = 0;
}

//Final Smash
if (attack == 49) { // final smash
    can_fast_fall = false;
    invincible = false;
}


//Pssst, Hey YOU! Guy reading my comments! If you can read this you must be a pretty smart cookie right? So here's the deal, I forgot how the sticky bomb code works. Literally I cannot remember. 
//The mess of like 4 different variables (sticky_timer, det_timer, sticky_count_timer?) makes my brain hurt, even though I coded it myself.
//This is a problem however, since I might want to make changes to this code in the future, for now I've promised myself to never touch it again, but if I do, I'll need to know how this code works
//So thats where you come in, if you can figure out how this code works, send a friend request and DM ExtremelyDisinterestedRadish#8305 the details
//I'll like uh give you your own rune/skin, maybe add a concientious objector pic you requested with a 1/10 chance or something i dunno.

//don't expect anyone to do this lol

// vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!