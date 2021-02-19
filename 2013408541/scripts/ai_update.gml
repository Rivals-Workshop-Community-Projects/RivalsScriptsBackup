// Lukaru's AI system

var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );
var ai_recovering2 = false;

if (state == PS_PRATFALL || state_cat == SC_HITSTUN)
{
    ai_recovering2 = true;
}
else if (free && (point_distance(x,y,(x>room_width/2?room_width:0),room_height)<((stage_y >= 800)?point_distance((x>room_width/2?room_width:0),room_height, ((x>room_width/2)?3:1)*floor(room_width/4), topcustom):point_distance((x>room_width/2?room_width:0),room_height, (x>room_width/2?room_width-stage_x:stage_x), stage_y))))
{
	ai_recovering2 = true;
}

ai_recovering = ai_recovering2;

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) // attack update
{
	if (attack == AT_NSPECIAL)
	{
		special_down = ai_target.was_parried;
	}
	else if (can_attack)
	{
		doAttack(AT_JAB);
	}
	else if (can_strong)
	{
		doAttack(AT_FSTRONG);
	}
}
else if (state == PS_PARRY_START) // no rolls
{
	left_down = false;
	right_down = false;
	joy_pad_idle = true;
}

if (offense_timer >= 300)
{
	offense_timer = 0;
	offense_state = true;
}
else if (!offense_state)
{
	ai_attack_timer = 0;
	++offense_timer;
}

if (ai_recovering)
{
	holdTowardsStage();
}
else if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && get_training_cpu_action() == CPU_FIGHT)
{
	tryParry();
	if (offense_state && can_attack)
	{
		ai_attack_time = 6;
		var xdist = abs((ai_target.x+ai_target.hsp*6)-x);
		var ydist = abs((ai_target.y+ai_target.vsp*6)-y);
		if (ai_target.was_parried && xdist < 35)
		{
			shield_pressed = false;
			shield_down = false;
			ai_attack_timer = 0;
			doAttack(AT_NSPECIAL);
		}
		else
		{
			if (xdist < 10 && ydist < 10)
			{
				doAttack(AT_NSPECIAL);
			}
			else if (xdist < 45)
			{
				if (ai_target.y<=y)
					doAttack(AT_USPECIAL);
				else if (ydist < 40)
					doAttack(AT_FAIR);
				else if (ydist < 80)
					doAttack(AT_DAIR);
			}
			else if ((xdist < 55 || ydist > 100) && !free && can_jump)
			{
				set_state(PS_FIRST_JUMP);
			}
			else if (xdist < 70 && ydist < 20)
			{
				doAttack(AT_DATTACK);
			}
			else if (xdist < 140 && ydist < 60)
			{
				doAttack(AT_FSPECIAL);
			}
			else
			{
				doAttack(AT_TAUNT);
			}
		}
	}
}

#define holdTowardsStage()
{
	left_down = x > floor(room_width/2);
	right_down = !left_down;
}

#define holdTowardsTarget()
{
	left_down = x > ai_target.x;
	right_down = !left_down;
	right_pressed = right_down;
	left_pressed = left_down;
}

#define holdYTowardsTarget()
{
	up_down = y > ai_target.y;
	down_down = !up_down;
}

#define doAttack(attack)
{
	switch (attack)
	{
		case AT_TAUNT:
			taunt_down = true;
			break;
		case AT_NAIR:
		case AT_JAB:
			up_down = false;
			down_down = false;
			left_down = false;
			right_down = false;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_DATTACK:
			if (can_attack && !free)
				set_attack(AT_DATTACK);
			break;
		case AT_FTILT:
		case AT_FAIR:
			holdTowardsTarget();
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_DTILT:
		case AT_DAIR:
			down_down = true;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_UTILT:
		case AT_UAIR:
			up_down = true;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_NSPECIAL:
			up_down = false;
			down_down = false;
			left_down = false;
			right_down = false;
			special_pressed = true;
			special_down = true;
			break;
		case AT_FSPECIAL:
			holdTowardsTarget();
			special_pressed = true;
			special_down = true;
			break;
		case AT_DSPECIAL:
			down_down = true;
			special_pressed = true;
			special_down = true;
			break;
		case AT_USPECIAL:
			up_down = true;
			special_pressed = true;
			special_down = true;
			break;
		case AT_FSTRONG:
			holdTowardsTarget();
			strong_pressed = true;
			//strong_down = true;
			break;
		case AT_DSTRONG:
			down_down = true;
			strong_pressed = true;
			//strong_down = true;
			break;
		case AT_USTRONG:
			up_down = true;
			strong_pressed = true;
			//strong_down = true;
			break;
	}
}

#define tryParry() // decent parry code
{
	var doParry = false;
	if (!ai_target.was_parried && !doParry)
	{
		with (pHitBox) // proj
		{
			if (player != other.player && type == 2)
			{
				if (place_meeting(x+hsp*4,y+vsp*4,other))
					doParry = true;
			}
		}
		with (oPlayer) // phys
		{
			if (player != other.player && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
			{
				for (var i = 1; i <= get_num_hitboxes(attack); ++i)
				{
					if (get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1)
					{
						var firstwindow = get_hitbox_value(attack, i, HG_WINDOW);
						if (firstwindow > 0)
						{
							var prevwindowlen = get_window_value(attack, firstwindow-1, AG_WINDOW_LENGTH);
							var firstwindowframe = get_hitbox_value(attack, i, HG_WINDOW_CREATION_FRAME);
							var hboxlength = get_hitbox_value(attack, i, HG_WIDTH);
							var hboxheight = get_hitbox_value(attack, i, HG_HEIGHT);
							var hboxx = get_hitbox_value(attack, i, HG_HITBOX_X);
							var hboxy = get_hitbox_value(attack, i, HG_HITBOX_Y);
							
							if (abs((x+hboxx*spr_dir)-other.x)<hboxlength
								&& abs((y+hboxy)-other.y)<hboxheight
								&& (firstwindowframe<2)?firstwindow==window+1&&prevwindowlen==window_timer+3:firstwindow==window&&firstwindowframe==window_timer+3)
							{
								doParry = true;
								break;
							}
						}
					}
				}
			}
		}
	}
	if (doParry)
	{
		shield_down = true;
		shield_pressed = true;
		left_down = false;
		right_down = false;
	}
}