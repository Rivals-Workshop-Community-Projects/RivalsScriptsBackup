//pre_update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
game_time = get_gameplay_time();
hbox_view = get_match_setting(SET_HITBOX_VIS);
exist_time ++;

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);
}
else
{
    window_loops = 0;
    if (my_grab_id != noone) my_grab_id = noone;
	
    if (state_timer == 0) //force reset manual offsets / rotations on new state
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
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

//play intro
if (game_time == 4 && has_intro) set_attack(AT_INTRO);

if(ptooie_parry_rune){
    with(oPlayer) if player != other.player && !hitpause {
        spider_plant_stored_hsp = hsp;
        spider_plant_stored_vsp = vsp;
    }
}