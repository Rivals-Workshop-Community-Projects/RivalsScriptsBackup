//B - Reversals
ammoTimer += ammoAmountTimer; //resets your ammo reload time


//Market Gardener
if(attack == AT_FAIR and rocketJumping = 1)
{
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("market_swing_crit"));
    set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 197);
    set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
    set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
    set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
    set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 34);
    set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -50);
    set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 100);
    set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 75);
    set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 7);
    set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 20);
    set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
    set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .5);
    set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE,10);
    set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 1.5);
    set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 52);
    set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -30);
    set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("crit_hit"));
}
else
{
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("draw_shovel_soldier"));
    set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 306);
    set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
    set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
    set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
    set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 34);
    set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -50);
    set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 100);
    set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 75);
    set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
    set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 56);
    set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .2);
    set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
    set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
    set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
    set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("melee1"));
}

if(attack == AT_DTILT)
{
	if(window == 5 && window_timer == 5)	{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
		if(attack_down)
		{
			window = 2;
			window_timer = 0;
		}
	}
}

if(attack == AT_TAUNT)
{
	if(window == 14 && window_timer = 3)	{		spawn_hit_fx(x, y-140, 13); // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
		spawn_hit_fx(x, y-140, 148);
		create_deathbox(
		x,
		y - 100,
		240,
		200,
		-1,
		true,
		2,
		3,
		2
		)
	}
}

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



if (attack == AT_UAIR)
{
    ammoTimer -= ammoAmountTimer
    if(window == 3 && window_timer = 7) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	{
		create_hitbox(AT_UAIR, 2, x, y)
        window = 3;
        window_timer = 1;
    }
    if(window == 3)
    {
        if((place_meeting(x + 1, y, asset_get("par_block")) or place_meeting(x - 1, y, asset_get("par_block"))) and jump_pressed)
        {
            set_state( PS_WALL_JUMP )
            
        }
        if(down_down = 1 or attack_pressed = 1 or jump_pressed = 1)
        {
            window = 4;
            window_timer = 0;
        }
    }
    
}


if (attack == AT_DAIR){
	if (has_hit_player == true){
		set_attack(AT_EXTRA_2);
	}
}
if (attack == AT_DATTACK){
	if (has_hit_player == true)
    {
        if(whipped == false)
        {
            sound_play(sound_get("discipline_device_power_up"));
        }
		whipped = true;
        whippedtimer = whip_timer_max;
        walk_speed = walk_speed_whipped;
        dash_speed = dash_speed_whipped;
	}
}

//rockets
if(attack == AT_NSPECIAL)
{
    //arm animation
    launcherFrame = window;
    if(ammo = 0 && window == 1 && window_timer = 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	{
		sound_play(sound_get("rocket_empty"));
	}
}
if (attack == AT_NSPECIAL and ammo > 0)
{
    if(window == 1 && window_timer = 4) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
        {
             ammo --;
             ammoTimer = 75
             if(troll = 0)
             {
                //REGULAR LAUNCHER
                sound_play(sound_get("rocket_shoot"));
                var rkt = create_hitbox(AT_NSPECIAL, 1, x + 4 * spr_dir, y - 55)
                createRocket(rkt);
            }
            else
            {
                //TROLLDIER
                sound_play(sound_get("jumper_shoot"));
                var rkt = create_hitbox(AT_NSPECIAL, 3, x + 4 * spr_dir, y - 55)
                createRocket(rkt);
            }
    }
}




#define createRocket(rocket)
with (rocket)
{
    hsp = (other.generalDir * other.rocketSpd * cos(degtorad(other.launchDir)) );
    if(other.generalDir = -1)//facing left
    {
        vsp = (other.rocketSpd * sin(degtorad(other.launchDir)) );
    }
    else//facing right
    {
        vsp = (-other.rocketSpd * sin(degtorad(other.launchDir)) );
    }
    mask_index = sprite_get("rocket_hurt");
    sprite_index = sprite_get("rocket");
    proj_angle = other.launchDir;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion