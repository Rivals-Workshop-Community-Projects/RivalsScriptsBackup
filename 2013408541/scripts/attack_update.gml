//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND || attack == AT_NSPECIAL){
    trigger_b_reverse();
}

switch (attack)
{
case AT_JAB:
	can_strong = has_hit;
	if (runeG && has_hit)
	{
		can_strong = true;
		can_ustrong = true;
	}
	break;

case AT_FTILT:
case AT_DTILT:
case AT_UTILT:
	if (runeG && has_hit)
	{
		can_strong = true;
		can_ustrong = true;
	}
	break;

case AT_FSTRONG:
	if (has_rune("G") && !has_hit && window == 3 && window_timer == 1 && !hitpause)
	{
		create_hitbox( AT_FSTRONG, 13, x+get_hitbox_value(AT_FSTRONG, 13, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(AT_FSTRONG, 13, HG_HITBOX_Y) );
	}
	break;

case AT_TAUNT:
	/*if down_down == true //helmet off debug
	{
		helmet = 1;
	}*/
	if (window == 1 || window == 6)
	{
		taunting = 0;
	}
	else
	{
		taunting = 1
	}
	if (runeF)
		super_armor = true;
	if (window == 1 && window_timer == 30)
	    waryowl += 500;
	if down_down and helmet == 0 and window == 1 and window_timer <= 2 //take off helmet 
	{
		attack = AT_EXTRA_1;
		
	}
	break;
case AT_EXTRA_1:
	if window == 2 and window_timer == 1
	{
		helmet = 1
		spawn_hit_fx( x-56*spr_dir, y-48, hit_fx_create( sprite_get( "helmet_knock_off" ), 40 ));
	}
	break;

case AT_TAUNT_2:
	if has_rune("B")
		super_armor = true;
	if (window == 2 && window_timer == 1)
	{
		helmet = 0;
	}
	break;

case AT_NSPECIAL:
	if (window == 1 && window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH))
	{
		if (left_down)
			spr_dir = -1;
		else if (right_down)
			spr_dir = 1;
	}
	if window == 1
	{
		nspecial_perfect = false
	}
	if (has_hit)
	    waryowl = waryowl;
	if (window == 1 && window_timer <= 14) //reset charge to 0
	{
        dspec_charge = 0;
    }
    else if (window == 1 && window_timer >= 15)
	{
	    //waryowl += 5;
        ++nspec_charge; //charge
        if has_rune("K")
        {
        	super_armor = true;
        }
        if (special_down && window_timer == 30) //loop
		{
            window_timer = 15;//20
  
        }
        if (special_down && (window_timer == 15 or window_timer == 30 or window_timer == 22))
        {
        		waryowl += 50;
        }
        if (!special_down || (nspec_charge >= 60)) // is move fully charged?
		{
            window = 2;
            window_timer = 0;
			if waryowl >= 1000
			{
				set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 30);
				set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
				set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
				set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 25);
				set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
				set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
				if has_rune("M")
				{
					create_deathbox(x +164 * spr_dir, y - 72, 32, 128, 0, true, 1, 60, 2);
				}
			}
			if waryowl >= 750 and waryowl < 1000
			{
				set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 25);
				set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
				set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .9);
				set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 20);
				set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .9);
			}
			if waryowl >= 500 and waryowl < 750
			{
				set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 15);
				set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
				set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
				set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 12);
				set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
				set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
			}
			if waryowl >= 250 and waryowl < 500
			{
				set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
				set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
				set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
				set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 8);
				set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
				set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
			}
			if waryowl >= 0 and waryowl < 250
			{
				set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
				set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
				set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
				set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
				set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
				set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
			}
		}
			/*if (nspec_charge < 30) 
			{
				if waryowl >= 1000
				{
					set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 20);
					set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
					set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
					set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15);
					set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
					set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
				}
				if waryowl >= 750 and waryowl < 1000
				{
					set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 15);
					set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
					set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
					set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 13);
					set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
					set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
				}
				if waryowl >= 500 and waryowl < 750
				{
					set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12);
					set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
					set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
					set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
					set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
					set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
				}
				if waryowl >= 250 and waryowl < 500
				{
					set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
					set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
					set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .4);
					set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 8);
					set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
					set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .4);
				}
				if waryowl >= 0 and waryowl < 250
				{
					set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 7);
					set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
					set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .4);
					set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
					set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
					set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .4);
				}
			}
			//nspec_charge = 0;
			//waryowl = 0;
        }*/
    }
    if window >= 4
    {
    	nspec_charge = 0;
		waryowl = 0;
		nspec_charge = 0;
    }
	break;

case AT_FSPECIAL:
	if (window == 1) //reset move stats
	{
		if (window_timer == 1)
		{
			fspec_wall = false;
			reset_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK);
		}
		else if (window_timer == get_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME))
		{
			if (up_down)
			{
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -12);
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecswordup"));
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecswordup"));
			}
			else
			{
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecsword"));
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecsword"));
			}
		}
	}
	if (fspec_wall)
	{
		if (window == 1 || window == 2)
		{
			var dir = spr_dir;
			if (right_down)
				dir = 1;
			else if (left_down)
				dir = -1;
			spr_dir = dir;
		    x = fspec_wallpos[0];
		    y = fspec_wallpos[1];
		    hsp = 0;
		}
	}
	if (has_hit)
	{
		if (window == 4 || (window == 3 && window_timer > 5))
		{
		    can_attack = true;
		    can_strong = true;
		}
		//waryowl += 20;
	    super_armor = true;
	    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);//no pratfall
	}
	can_wall_jump = true;
	can_fast_fall = false;
	break;

case AT_USPECIAL:
	if (window == 1 || joy_pad_idle)
	{
	    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 0);
	}
	else if (window > 1)
	{
		if (left_down)
		{
		    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, -1);
		    set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, -1);
		    set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, -1);
		    set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, -1);
		}
		if (right_down)
		{
		    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 1);
		    set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 1);
		    set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 1);
		    set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 1);
		}
		if (window_timer == 1)
		{
			spawn_hit_fx( x, y, hit_fx_create( sprite_get( "uspecial_wind" ), 30 ));
		}
	}
	if (has_hit)
	{
		if (runeL && has_hit_player && window < 6) // grab
		{
			if (hit_player_obj.x > x)
			{
				hit_player_obj.x -= (hit_player_obj.x - x)/4;
			}
			else if (hit_player_obj.x < x)
			{
				hit_player_obj.x += (x - hit_player_obj.x)/4;
			}
			if (hit_player_obj.y > y)
			{
				hit_player_obj.y -= (hit_player_obj.y - (y - 30))/4;
			}
			else if (hit_player_obj.y < y)
			{
				hit_player_obj.y += ((y - 30) - hit_player_obj.y)/4;
			}
			hit_player_obj.hsp = 0;
			hit_player_obj.vsp = 0;
		}
	}
	can_wall_jump = true;
	can_fast_fall = false;
	break;

case AT_DSPECIAL:
	if (window == 4 and free)
	{
		can_wall_jump = true;
		can_double_jump = true;
		can_jump = true;
		can_special = true;
		djumps = 0;
	}
	if can_fast_fall == true
	{
		can_fast_fall = false;
	}
    if (window == 1 && !runeK) //reset charge to 0
	{
        dspec_charge = 0;
    }
    else if (window == 2)
	{
		//super_armor = dspec_charge <= 40;
		soft_armor = 12;
	    //waryowl += 10;
        ++dspec_charge; //charge
        if (special_down && window_timer == 3) //loop
		{
            window_timer = 2;
			if (runeK)
				can_shield = true;
        }
        if (!special_down || (dspec_charge >= 40 && !runeO)) // is move fully charged?
		{
            window = 3;
            window_timer = 0;
			if (dspec_charge == 40 && !runeO)
			{
				set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1 * dspec_charge/2 + 4);
				set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
				set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1 * dspec_charge/2);
				set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.0);
			}
			else
			{
				set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1 * dspec_charge/2 + 4);
				set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 3 * dspec_charge/100);
				set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1 * dspec_charge/2 + 4);
				set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 2.8 * dspec_charge/100);
			}
			dspec_charge = 0;
        }
    }
	if (window == 3 && window_timer == 10 && !hitpause)
	{
	    sound_play(asset_get("sfx_kragg_rock_shatter"));
	}
	if (has_rune("N") and waryowl >= 20 and (window == 3 or (window == 4 and window_timer < 10)))
	{
		create_hitbox(AT_DSPECIAL, 10, x + 64, y + 1);
		create_hitbox(AT_DSPECIAL, 11, x - 64, y + 1);
		waryowl = waryowl - 20
	}
	if (free && window > 1 && (window_timer == 1 || window_timer == 5 || window_timer == 9))
	{
		spawn_hit_fx( x, y, hit_fx_create( sprite_get( "uspecial_wind" ), 30 ));
	}
	break;

case AT_DAIR:
	can_fast_fall = false;
	if (window == 2 && window_timer == 4)
	{
		spawn_hit_fx( x, y, hit_fx_create( sprite_get( "dair_wind" ), 30 ));
	}
	/*if has_hit == false
	{
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 12);
	}
	if has_hit == true
	{
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
	}*/
	break;

case AT_NAIR:
	can_fast_fall = false;
	/*if has_hit == false
	{
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 14);
	}
	if has_hit == true
	{
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 12);
	}*/
	break;
	
case AT_FAIR:
	can_fast_fall = false;
	/*if has_hit == false
	{
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 12);
	}
	if has_hit == true
	{
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
	}*/
	break;

case AT_BAIR:
	if can_fast_fall == true
	{
		can_fast_fall = false;
	}
	if window == 1
	{
		if vsp > 0 and vsp != 0
		{
			vsp -= .5;	
		}
		if vsp < 0 and vsp != 0
		{
			vsp += .5;	
		}
		if hsp > 0 and hsp != 0
		{
			hsp -= .5;	
		}
		if hsp < 0 and hsp != 0
		{
			hsp += .5;	
		}
	}
	if window == 3 and window_timer < 15
	{
		vsp = 0;
		hsp = 0;
	}
	if window == 2
	{
		vsp = 0;
		hsp = 0;
	}
	if (window == 2 && window_timer == 1)
	{
		spawn_hit_fx( x, y, hit_fx_create( sprite_get( "bair_wind" ), 30 ));
	}
	/*if has_hit == false
	{
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 12);
	}
	if has_hit == true
	{
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
	}*/
	break;

case AT_DATTACK:
	if (window == 2 && window_timer == 2)
	{
		spawn_hit_fx( x-100*spr_dir, y, hit_fx_create( sprite_get( "dattack_wind" ), 20 ));
	}
	break;
}

if has_rune("O")
{
	if taunt_pressed and (state = PS_ATTACK_GROUND or state = PS_ATTACK_GROUND) and helmet = 1 and attack != AT_TAUNT_2
	{
		attack = AT_TAUNT_2
	}
	if taunt_pressed and (state = PS_ATTACK_GROUND or state = PS_ATTACK_GROUND) and helmet = 0 and attack != AT_EXTRA_1 and attack != AT_TAUNT
	{
		attack = AT_EXTRA_1
	}
	if taunt_pressed and down_down and attack == AT_TAUNT and window >= 1 and window_timer >= 5
	{
		attack = AT_EXTRA_1
	}
}

