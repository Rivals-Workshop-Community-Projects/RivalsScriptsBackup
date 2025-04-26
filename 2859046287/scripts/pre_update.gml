//pre_update.gml
//this script runs before every script that runs every frame (attack_update.gml, update.gml, animation.gml)

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

is_attacking = ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)); //attack check - helps you detect if you are attacking
is_dodging = (hurtboxID.dodging); //dodge check - becomes true if the character is invincible when dodging/teching
game_time = get_gameplay_time(); //get_gameplay_time() is a timer that counts up every frame of the match
hbox_view = get_match_setting(SET_HITBOX_VIS); //keeps track if hitbox view is on or off
exist_time ++;

//is_attacking is useful to use to detect attack states but it's a frame slower
if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    //window_end - takes the last frame of the window (includes whifflag)
    //window_last - checks the last window in the attack
    //window_cancel_time - if the window has a cancel frame to attack/special, this variable can detect the frame it can happen
}
else
{
    window_loops = 0; //resets loop value in case the character isn't attacking (useful for hitstun)
    if (my_grab_id != noone) my_grab_id = noone; //if the player isn't attacking, we don't need the grab_id to stay
}

//grab logic
if (instance_exists(my_grab_id) && my_grab_id != noone) //if you have grabbed someone (and made sure they exist)
{
	grab_time ++;

    with (my_grab_id)
	{
		hitstop = 2; //freeze grabbed foe
		if (last_player != other.player) //if another player hits the grabbed player stop the grab sequence
		{
			hitstop = 0;
			with (other)
			{
				my_grab_id = noone;
				if (!free) hsp = spr_dir*-6; //push back for some extra effect (ground only)
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
    }
}
else grab_time = 0;

//play intro a little after the match starts, but only if the has_intro variable is active (true by default for tester) and there's no halloween costume active
if (game_time == 4 && has_intro && !halloween_active) set_attack(AT_INTRO);