// Lukaru's AI system

enum aistates 
{
   AS_NEUTRAL,
   AS_ADVANTAGE,
   AS_RECOVER,
}

// init outside of the init script
if (!init_ai)
{
	init_ai = true;
	topcustom = y;
}

if (!free && place_meeting(x, y, asset_get("par_block"))) topcustom = y;

ChangeStates();
CheckRecover();
AttackUpdate();
SetAttack();

#define ChangeStates()
{
	if (state == PS_PRATFALL || state_cat == SC_HITSTUN || was_parried) ai_state = aistates.AS_RECOVER;
	switch (ai_state)
	{
		case aistates.AS_RECOVER:
			if (!free && state != PS_PRATFALL && state_cat != SC_HITSTUN) ai_state = aistates.AS_NEUTRAL;
			break;
		case aistates.AS_ADVANTAGE:
			if (point_distance(x, y, ai_target.x, ai_target.y) > 200 || get_training_cpu_action() != CPU_FIGHT) ai_state = aistates.AS_NEUTRAL;
			break;
		case aistates.AS_NEUTRAL:
			if (point_distance(x, y, ai_target.x, ai_target.y) <= 200
			&& (has_hit_player || ai_target.state_cat == SC_HITSTUN || ai_target.was_parried || (ai_target.state == PS_PARRY && ai_target.state_timer == 6)))
				ai_state = aistates.AS_ADVANTAGE;
			break;
	}
}

#define CheckRecover()
{
	if (ai_state == aistates.AS_ADVANTAGE) ai_recovering = false;
	else
	{
		var stage_x = get_stage_data( SD_X_POS );
		var stage_y = get_stage_data( SD_Y_POS );
		var ai_recovering2 = false;
		
		if (ai_state == aistates.AS_RECOVER)
		{
		    ai_recovering2 = true;
		}
		else if (free && (point_distance(x,y,(x>room_width/2?room_width:0),room_height)<((stage_y >= 800)?point_distance((x>room_width/2?room_width:0),room_height, ((x>room_width/2)?3:1)*floor(room_width/4), topcustom):point_distance((x>room_width/2?room_width:0),room_height, (x>room_width/2?room_width-stage_x:stage_x), stage_y))))
		{
			ai_recovering2 = true;
			ai_state = aistates.AS_RECOVER;
		}
		
		ai_recovering = ai_recovering2;
	}
}

#define AttackUpdate()
{
	switch (ai_state)
	{
		case aistates.AS_ADVANTAGE:
			holdTowardsTarget();
			break;
		case aistates.AS_RECOVER:
			holdTowardsStage();
			break;
	}

	if (state == PS_ATTACK_AIR && state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case AT_USPECIAL:
				holdTowardsStage();
				break;

			case AT_FSPECIAL:
				holdYTowardsTarget();
				break;
	
			case AT_DSPECIAL:
				if (ai_state == aistates.AS_RECOVER)
					holdTowardsStage();
				else
				{
					holdTowardsTarget();
					jump_down = false;
				}
				break;
		}
	}
}

#define SetAttack()
{
	var xdist = abs((ai_target.x+ai_target.hsp*6)-x);
	var ydist = abs((ai_target.y+ai_target.vsp*6)-y);
	switch (ai_state)
	{
		case aistates.AS_RECOVER:
			holdTowardsStage();
			if (attack != AT_DSPECIAL)
			{
				++move_cooldown[AT_USPECIAL];
				doAttack(AT_DSPECIAL);
			}
			break;

		case aistates.AS_NEUTRAL:
			if (tryParry()) break;
			if (point_distance(x,y,ai_target.x,ai_target.y)<20 || ai_target.state == PS_RESPAWN || ai_target.state == PS_DEAD) multishine();
		case aistates.AS_ADVANTAGE:
			ai_attack_timer = 2;
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack && get_training_cpu_action() == CPU_FIGHT)
			{
				if (get_player_damage( ai_target.player ) >= 100)
				{
					if (!aiBreadAndButter(xdist, ydist))
					{
						if (xdist < 50 && ydist < 20)						doAttack(AT_FAIR);
						else if (xdist < 50 && ydist < 50)					doAttack(AT_DSTRONG);
						else if (xdist > 50 && xdist < 80)					doAttack(AT_FSTRONG);
						else if (xdist > 80 && xdist < 120)					doAttack(AT_DSPECIAL);
						else if (xdist > 120 && xdist < 200 && ydist < 60)	doAttack(AT_FSPECIAL);
					}
				}
				else
				{
					if (!aiBreadAndButter(xdist, ydist))
					{
						if (xdist < 50 && ydist < 20)						doAttack(AT_FAIR);
						else if (xdist < 50 && ydist < 50)					doAttack(AT_NSPECIAL);
						else if (xdist > 50 && xdist < 80)					doAttack(AT_DATTACK);
						else if (xdist > 80 && xdist < 120)					doAttack(AT_DSPECIAL);
						else if (xdist > 120 && xdist < 200 && ydist < 60)	doAttack(AT_FSPECIAL);
					}
				}
			}
			break;		
	}
}

#define holdTowardsStage()
{
	left_down = x > floor(room_width/2);
	right_down = !left_down;
	ai_going_left = left_down;
	ai_going_right = right_down;
}

#define holdTowardsTarget()
{
	left_down = x > ai_target.x;
	right_down = !left_down;
	right_pressed = right_down;
	left_pressed = left_down;
	ai_going_left = left_pressed;
	ai_going_right = right_pressed;

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
			{
				holdTowardsTarget();
				set_attack(AT_DATTACK);
			}
			break;
		case AT_FTILT:
		case AT_FAIR:
			holdTowardsTarget();
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_DTILT:
			holdTowardsTarget();
		case AT_DAIR:
			down_down = true;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_UTILT:
			holdTowardsTarget();
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
	}
}

#define tryParry()
{
	if (get_training_cpu_action() == CPU_FIGHT)
	{
		if (state == PS_PARRY_START) // no rolls
		{
			left_down = false;
			right_down = false;
			joy_pad_idle = true;
			ai_going_left = false;
			ai_going_right = false;
		}
		else
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
						if ("fspecial_point" in self && attack == AT_FSPECIAL && window == 3){
							if (place_meeting(fspecial_point[0]+point_hsp*4,fspecial_point[1]+point_vsp*4 + 35,other)){
								doParry = true;
							}
						}
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
				ai_state = aistates.AS_ADVANTAGE;
				return true;
			}
		}
	}
	return false;
}

#define aiBreadAndButter(xdist, ydist)
{
	if (ai_target.was_parried)
	{
		if (xdist < 200 && ydist < 60) doAttack(AT_FSPECIAL);
		
	}
	else if (xdist < 30)
	{
		if (ai_target.y<=y) doAttack(AT_USPECIAL);
		else doAttack(AT_DAIR);
	}
	else return false;
	return true;
}

#define multishine()
{
	if (get_training_cpu_action() == CPU_FIGHT)
	{
		holdTowardsTarget();
		if (can_attack && !free) doAttack(AT_NSPECIAL);
		else if (state == PS_ATTACK_GROUND && attack == AT_NSPECIAL && can_jump) jump_pressed = true;
		else if (state == PS_FIRST_JUMP) shield_pressed = true;
	}
}