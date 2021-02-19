//ai_update - called every frame for this character as a CPU
var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );

var targetrecover = (ai_target.free && (point_distance(ai_target.x,ai_target.y,(ai_target.x>room_width/2?room_width:0),room_height)<((stage_y >= 800)?point_distance((ai_target.x>room_width/2?room_width:0),room_height, ((ai_target.x>room_width/2)?3:1)*floor(room_width/4), topcustom):point_distance((ai_target.x>room_width/2?room_width:0),room_height, (ai_target.x>room_width/2?room_width-stage_x:stage_x), stage_y))))

if (state == PS_PRATFALL || state_cat == SC_HITSTUN)
{
    ai_recovering2 = true;
}
else if (free && (point_distance(x,y,(x>room_width/2?room_width:0),room_height)<((stage_y >= 800)?point_distance((x>room_width/2?room_width:0),room_height, ((x>room_width/2)?3:1)*floor(room_width/4), topcustom):point_distance((x>room_width/2?room_width:0),room_height, (x>room_width/2?room_width-stage_x:stage_x), stage_y))))
{
	ai_recovering2 = true;
}
if (!free)
	ai_recovering2 = false;
if (targetrecover)
{
    ai_recovering2 = true;
}
if (ai_target.state == PS_PRATFALL && !ai_target.has_walljump && !practice)
{
	ai_recovering2 = true;
	if (!free && state_cat == SC_GROUND_NEUTRAL )
		set_attack(AT_TAUNT);
}
ai_recovering = ai_recovering2;

if (!stupidbossbool)
{
	stupidbossbool = true;
	muted = false;
	if (temp_level == 1)
	{
		transformplease = 1;
		aifree = false;
		beast_deity = true;
		set_player_stocks( player, 1 );
	}
	else
	{
		far_up_attacks[0] = AT_UAIR;
		far_up_attacks[1] = AT_UTILT;
		far_up_attacks[2] = AT_USTRONG;
		
		far_down_attacks[0] = AT_DAIR;
		
		far_side_attacks[0] = AT_DATTACK;
		
		mid_side_attacks[0] = AT_DATTACK;
		
		close_up_attacks[0] = AT_UAIR;
		
		close_down_attacks[0] = AT_DAIR;
		close_down_attacks[1] = AT_JAB;
		
		close_side_attacks[0] = AT_DTILT;
		close_side_attacks[1] = AT_FTILT;
		close_side_attacks[2] = AT_JAB;
		close_side_attacks[3] = AT_DAIR;
		close_side_attacks[4] = AT_BAIR;
		close_side_attacks[5] = AT_FSTRONG;
		close_side_attacks[6] = AT_DSTRONG;
		
		neutral_attacks[0] = AT_DATTACK;

		set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 3);
		set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 3);
	}
}

if (beast_deity)
{
	if (!aifree){
		attack_down = false;
		special_down = false;
		jump_down = false;
		shield_down = false;
		strong_down = false;
		taunt_down = false;
		up_down = false;
		down_down = false;
		left_down = false;
		right_down = false;
		attack_pressed = false;
		special_pressed = false;
		jump_pressed = false;
		shield_pressed = false;
		strong_pressed = false;
		taunt_pressed = false;
		up_pressed = false;
		down_pressed = false;
		left_pressed = false;
		right_pressed = false;
		clear_button_buffer(PC_LEFT_HARD_PRESSED);
		clear_button_buffer(PC_RIGHT_HARD_PRESSED);
		clear_button_buffer(PC_UP_HARD_PRESSED);
		clear_button_buffer(PC_DOWN_HARD_PRESSED);
		clear_button_buffer(PC_LEFT_STRONG_PRESSED);
		clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
		clear_button_buffer(PC_UP_STRONG_PRESSED);
		clear_button_buffer(PC_DOWN_STRONG_PRESSED);
		clear_button_buffer(PC_LEFT_STICK_PRESSED);
		clear_button_buffer(PC_RIGHT_STICK_PRESSED);
		clear_button_buffer(PC_UP_STICK_PRESSED);
		clear_button_buffer(PC_DOWN_STICK_PRESSED);
		clear_button_buffer(PC_JUMP_PRESSED);
		clear_button_buffer(PC_ATTACK_PRESSED);
		clear_button_buffer(PC_SHIELD_PRESSED);
		clear_button_buffer(PC_SPECIAL_PRESSED);
		clear_button_buffer(PC_STRONG_PRESSED);
		clear_button_buffer(PC_TAUNT_PRESSED);
	}
	switch (beast_state)
	{
	case 0:
	{
		switch (coutindex)
		{
		case 21:
			if (attack != AT_TAUNT_2 && !free)
			{
				set_attack(AT_TAUNT_2);
				attack = AT_TAUNT_2;
				transformtime = 120;
			}
			break;
		case 60:
			if (!talk)
			{
				left_down = true;
				if (free)
					special_pressed = true;
			}
		default:
			break;
		}
		break;
	}
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
		break;
	case 8:
		if (coutindex == 3 && !talk)
		{
			left_down = true;
			if (free)
				special_pressed = true;
		}
		break;
	}
}

if (instance_exists(ai_target) && ai_target != noone && "url" in ai_target && ai_target.url == "1913869515" && ai_target.attack == AT_FSTRONG && (ai_target.state == PS_ATTACK_AIR || ai_target.state == PS_ATTACK_GROUND) && ai_target.window >= 7)
{
	ai_attack_timer = 0;
	if (ai_target.window == 8)
	{
		ai_recovering = true;
		if (ai_target.window_timer == 17)
		{
			shield_down = true;
		}
	}
}

if (!practice && !ai_recovering && aifree)
{
	if (!ai_target.super_armor)
	{
		strong_down = false;
	}
	if (ai_target.super_armor)
	{
		ai_attack_timer = 0;
		//if (state == PS_ATTACK_GROUND && (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG))
		if (!free)
			strong_down = true;
	}
	else if (doingraindrop)
	{
		ai_attack_timer = 0;
		raindropframe = (doingraindrop?raindropframe+1:0);
		switch (raindropframe)
		{
		case 1:
		case 2:
			if (abs(ai_target.hsp) > 4) // DI out
			{
				raindropframe = 0;
				doingraindrop = false;
				set_attack(AT_DATTACK);
				attack = AT_DATTACK;
			}
			else // DI in
			{
				jump_pressed = true;
				jump_down = true;
			}
			break;
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
		case 13:

		case 15:
		case 16:
		case 17:
		case 18:
		case 19:
		case 20:
			jump_down = false;
			move_cooldown[AT_FTILT] = 2;
			move_cooldown[AT_DTILT] = 2;
			move_cooldown[AT_JAB] = 2;
			move_cooldown[AT_USTRONG] = 2;
			move_cooldown[AT_NAIR] = 2;
			move_cooldown[AT_NSPECIAL] = 2;
			right_down = (ai_target.x+ai_target.hsp*4>x);
			left_down = (ai_target.x+ai_target.hsp*4<x);
			right_hard_pressed = right_down;
			left_hard_pressed = left_down;
			break;
		case 21:
		case 22:
		case 23:
		case 24:
			right_down = (ai_target.x+ai_target.hsp*4>x);
			left_down = (ai_target.x+ai_target.hsp*4<x);
			if (free)
				do_a_fast_fall = true;
			break;
		case 14:
			if (free)
			{
				set_attack(AT_UAIR);
				attack = AT_UAIR;
			}
			break;
		default:
			if (raindropframe < 100)
			{
				right_down = (ai_target.x+ai_target.hsp*4>x);
				left_down = (ai_target.x+ai_target.hsp*4<x);
				move_cooldown[AT_FTILT] = 2;
				move_cooldown[AT_DTILT] = 2;
				move_cooldown[AT_JAB] = 2;
				move_cooldown[AT_NAIR] = 2;
				move_cooldown[AT_NSPECIAL] = 2;
				if (attack != AT_USTRONG && y - ai_target.y < 120 && state_cat == SC_GROUND_NEUTRAL)
				{
					set_attack(AT_USTRONG);
					attack = AT_USTRONG;
					doingraindrop = false;
				}
			}
			else
			{
				doingraindrop = false;
			}
			break;
		}
	}
	else
	{
		if (ai_attack_timer > ai_attack_time*0.5 && !beast_deity)
		{
			right_down = (ai_target.x+ai_target.hsp*4>x);
			left_down = (ai_target.x+ai_target.hsp*4<x);
		}
		ai_attack_timer = ai_attack_time;

		if (can_attack
		    && !free // jump if too close
			&& ai_attack_timer
		    && point_distance(x, y, ai_target.x, ai_target.y) < 48
			&& ai_target.state_cat != SC_HITSTUN
		    && temp_level >= 4
			&& !beast_deity)
		{
		    set_state(PS_IDLE);
		    set_state(PS_FIRST_JUMP);
		    window = 0;
		    window_timer = 0;
		}
		
		if (can_attack
			&& attack != AT_USTRONG
			&& move_cooldown[AT_USTRONG] == 0
			&& ai_attack_timer
			&& !free
		    && point_distance(x, y-88, ai_target.x, ai_target.y) < 20
		    && temp_level >= 5
			&& !beast_deity)
		{
		    set_attack(AT_USTRONG);
			attack = AT_USTRONG;
		    window = 0;
		    window_timer = 0;
		}
		else if (can_attack // set clones
		    && free
			&& ai_attack_timer
			&& attack != AT_DSPECIAL_2
			&& attack != AT_DSPECIAL_AIR
		    && (point_distance(x, y, ai_target.x, ai_target.y) > 200 || (point_distance(x, y, ai_target.x, ai_target.y) < 80 && (ai_target.state == PS_ATTACK_AIR || ai_target.state == PS_ATTACK_GROUND)))
		    && temp_level >= 6
			&& !beast_deity
			&& move_cooldown[(free?AT_DSPECIAL_AIR:AT_DSPECIAL_2)] == 0)
		{
		    set_attack(free?AT_DSPECIAL_AIR:AT_DSPECIAL_2);
			attack = free?AT_DSPECIAL_AIR:AT_DSPECIAL_2;
		    window = 0;
		    window_timer = 0;
		}
		else if (can_attack
			&& attack != (ai_target.state_cat==SC_HITSTUN?AT_DTILT:AT_FTILT)
			&& move_cooldown[(ai_target.state_cat==SC_HITSTUN?AT_DTILT:AT_FTILT)] == 0
			&& ai_attack_timer
		    && state_cat == SC_GROUND_NEUTRAL 
		    && point_distance(x + spr_dir * 35, y, ai_target.x, ai_target.y) < (ai_target.state_cat==SC_HITSTUN?40:70)
		    && temp_level >= 5
			&& !beast_deity)
		{
		    set_attack(ai_target.state_cat==SC_HITSTUN?AT_DTILT:AT_FTILT);
			attack = (ai_target.state_cat==SC_HITSTUN?AT_DTILT:AT_FTILT);
			hsp *= 0.8;
		    window = 0;
		    window_timer = 0;
		}
		else if (can_attack
			&& attack != AT_BAIR
			&& move_cooldown[AT_BAIR] == 0
			&& ai_attack_timer
		    && state_cat == SC_AIR_NEUTRAL
		    && point_distance(x - 40*spr_dir, y, ai_target.x, ai_target.y) < 64
		    && state_timer > 1
		    && temp_level >= 5
			&& !beast_deity)
		{
		    set_attack(AT_BAIR);
			attack = AT_BAIR;
		    window = 0;
		    window_timer = 0;
		}
		else if (can_attack
			&& attack != AT_NAIR
			&& move_cooldown[AT_NAIR] == 0
			&& ai_attack_timer
		    && state_cat == SC_AIR_NEUTRAL
		    && point_distance(x, y, ai_target.x, ai_target.y) < 64
		    && state_timer > 1
		    && temp_level >= 4
			&& !beast_deity)
		{
		    set_attack(AT_NAIR);
			attack = AT_NAIR;
		    window = 0;
		    window_timer = 0;
		}
		else if (can_attack
			&& attack != AT_NSPECIAL
			&& move_cooldown[AT_NSPECIAL] == 0
			&& ai_attack_timer
		    && point_distance(x, y, ai_target.x, ai_target.y) > ((aura||as_charge==2)?0:190)
			&& ((aura||as_charge==2)?(point_distance(0, y, 0, ai_target.y)<30):true)
		    && temp_level >= 7
			&& !beast_deity)
		{
		    set_attack(AT_NSPECIAL);
			attack = AT_NSPECIAL;
		    window = 0;
		    window_timer = 0;
		}
	}

	// Plat drop
	if ((!free && !freemd && ai_target.y > y ))
	{
		down_hard_pressed = true;
		down_down = true;
	}
	
	//NSpecial
	if (attack == AT_NSPECIAL 
	    && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
	{
		if (window == 1 && (ai_recovering || as_charge == 2))
		{
			attack_down = true;
		}
		right_stick_pressed = false;
		right_stick_down = false;
		left_stick_pressed = false;
		left_stick_down = false;
	    if ((window == 2 || window == 3 || window == 4)
	        && point_distance(x, y, ai_target.x, ai_target.y) < 190)
	    {
	        if (ai_target.y - y < 8 && ai_target.y - y > -8 && window != 2)
	        {
	            if (ai_target.x < x)
				{
					left_stick_pressed = true;
					left_stick_down = true;
				}
				else
				{
					right_stick_pressed = true;
					right_stick_down = true;
				}
	
	        }
	        else
	        {
				jump_down = true;
				jump_pressed = true;
	        }
	    }
	    else if (as_charge == 2
	    && !free
		&& !beast_deity)
	    {
			shield_down = true;
			shield_pressed = true;
	    }
		if (ai_recovering)
		{
			if (djumps != max_djumps)
			{
				jump_down = true;
				jump_pressed = true;
			}
			else if (has_airdodge)
			{
				shield_down = true;
				shield_pressed = true;
			}
			else
			{
				special_down = true;
				special_pressed = true;
			}
		}
	}
	
	//Grab // ftilt fspec (depreciated)
	//if (attack == AT_FTILT
	//    && state == PS_ATTACK_GROUND
	//	&& !beast_deity){
	//    if(window == 3
	//        //&& window_timer == 11
	//        && temp_level >= 8
	//		&& aura)
	//    {
	//        special_down = true;
	//    }
	//}
	
	//Jab
	if (attack == AT_JAB
	    && state == PS_ATTACK_GROUND
		&& !beast_deity){
	    if(window == 3
	        && temp_level >= 5
			&& has_hit_player)
	    {
	        attack_down = true;
	        attack_pressed = true;
	    }
	    else if(window == 6
	        && temp_level >= 5)
	    {
			down_down = true;
	        attack_down = true;
	        attack_pressed = true;
	    }
	}
	if (attack == AT_NAIR
	    && state == PS_ATTACK_AIR
		&& !beast_deity)
	{
		if (ai_target.x > x)
			right_down = true;
		else if (ai_target.x < x)
			left_down = true;
		do_a_fast_fall = true;

	}
	//fastfall nair
	if (free
		&& ai_attack_timer
	    && vsp > 2
	    && can_fast_fall
	    && temp_level >= 8
		&& !ai_recovering
		&& !beast_deity)
	{
	    set_attack(AT_NAIR);
		attack = AT_NAIR;
	    window = 0;
	    window_timer = 0;
		do_a_fast_fall = true;
	}
	//nair into jab
	if (attack == AT_NAIR
	&& has_hit_player
	&& (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED)
	&& point_distance(x + spr_dir * 30, y, ai_target.x, ai_target.y) < 30
	&& !free
	&& state_timer == 0
	&& !beast_deity)
	{
	    set_attack(AT_JAB);
		attack = AT_JAB;
	    window = 0;
	    window_timer = 0;
	}
	//dattack chain
	if (attack == AT_DATTACK
	&& has_hit_player
	&& (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED)
	&& abs(ai_target.hsp) < 7
	&& !free
	&& state_timer == 0
	&& !beast_deity)
	{
	    set_attack(AT_DATTACK);
		attack = AT_DATTACK;
	    window = 0;
	    window_timer = 0;
		spr_dir = (ai_target.x>x?1:-1);
	}
	//ftilt into raindrop
	if (attack == AT_FTILT
	&& has_hit_player
	&& state == PS_ATTACK_GROUND
	&& !free
	//&& state_timer == 0
	&& !beast_deity
	&& temp_level >= 7)
	{
		doingraindrop = true;
		raindropframe = 0;
	}
	
	//dtilt into strong
	if (attack == AT_DTILT
	&& has_hit_player
	&& (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED)
	&& !free
	&& state_timer == 0
	&& !beast_deity)
	{
		if (aura || point_distance(x+spr_dir*30, 0, ai_target.x, 0) < 64)
		{
			attack = AT_FSTRONG;
			set_attack(AT_FSTRONG);
			window = 0;
			window_timer = 0;
		}
		else if (point_distance(x, 0, ai_target.x, 0) < 80)
		{
			attack = AT_DSTRONG;
			set_attack(AT_DSTRONG);
			window = 0;
			window_timer = 0;
		}
	}

	if (((stage_y>=800)?floor(room_width/4):stage_x) > (x>room_width/2?room_width-x:x)) // prevent fastfall offstage
	{
		do_a_fast_fall = false;
	}
}
//if (!ai_recovering
//	&& (state == PS_PARRY_START || state == PS_AIR_DODGE)
//	&& window_timer == 0
//	&& !practiceparry
//	&& (random_func(0, 6, true) == 0 || beast_deity)
//	&& (temp_level >= 4 || beast_deity)
//	&& !godmode
//	&& move_cooldown[free?AT_DSPECIAL_AIR:AT_DSPECIAL_2] == 0)
//{
//    set_state(PS_IDLE);
//    set_attack(free?AT_DSPECIAL_AIR:AT_DSPECIAL_2);
//    window = 0;
//    window_timer = 0;
//}

if (state == PS_RESPAWN)
{
	down_hard_pressed = true;
	down_down = true;
}

if (ai_recovering)
{
	if (!free && !beast_deity && !practice)
	{
		left_down = (room_width*0.5<x);
		right_down = (room_width*0.5>x);
		if (state_cat == SC_GROUND_NEUTRAL && move_cooldown[AT_DSPECIAL_2] == 0)
		{
			set_attack(AT_DSPECIAL_2);
			attack = AT_DSPECIAL_2;
		}
	}
	if (state_cat == SC_AIR_NEUTRAL
		&& djumps == max_djumps
		&& floatjumptime == 0
		&& (has_walljump ^^ !has_airdodge)
		&& y > (get_stage_data( SD_Y_POS )>=800?topcustom:get_stage_data( SD_Y_POS )))
	{
		if (aura || point_distance(x, y, (x>room_width*0.5?room_width:0), room_height) < ((stage_y >= 800)?point_distance((x>room_width/2?room_width:0),room_height, ((x>room_width/2)?3:1)*floor(room_width/4), topcustom):point_distance((x>room_width/2?room_width:0),room_height, (x>room_width/2?room_width-stage_x:stage_x), stage_y)-130))
		{
			set_attack(AT_FSPECIAL);
			attack = AT_FSPECIAL;
			spr_dir = (x>room_width*0.5?-1:1);
		}
		else
		{
			set_attack(AT_USPECIAL);
			attack = AT_USPECIAL;
		}
	}
	if (attack == AT_FSPECIAL
	    && state == PS_ATTACK_AIR
		&& (room_height - y) > 120)
	{
		up_down = true;
	}
	if (attack == AT_USPECIAL
	    && state == PS_ATTACK_AIR)
	{
		joy_dir = ((stage_y >= 800)?point_direction(x, y, ((x>room_width/2)?3:1)*floor(room_width/4), topcustom - 10):point_direction(x, y, (x>room_width/2?room_width-stage_x:stage_x), stage_y - 10));
	}
}