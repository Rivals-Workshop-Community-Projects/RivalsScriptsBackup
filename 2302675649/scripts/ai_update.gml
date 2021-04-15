// states
#macro AS_NEUTRAL 0
#macro AS_ADVANTAGE 1
#macro AS_RECOVER 2
// tasks
#macro TSK_NONE 0
#macro TSK_STRONG 1
#macro TSK_GUNREC 2

ChangeStates();
CheckRecover();
AttackUpdate();
SetAttack();

#define ChangeStates()
{
	if (state == PS_PRATFALL || state_cat == SC_HITSTUN || was_parried) ai_state = AS_RECOVER;
	switch (ai_state)
	{
		case AS_RECOVER:
			if (!free && state != PS_PRATFALL && state_cat != SC_HITSTUN) ai_state = AS_NEUTRAL;
			break;
		case AS_ADVANTAGE:
			if (!ai_target.was_parried && ai_target.state_cat != SC_HITSTUN) ai_state = AS_NEUTRAL;
			break;
		case AS_NEUTRAL:
			if (point_distance(x, y, ai_target.x, ai_target.y) <= 200
			&& (has_hit_player || ai_target.state_cat == SC_HITSTUN || ai_target.was_parried || (ai_target.state == PS_PARRY && ai_target.state_timer == 6)))
				ai_state = AS_ADVANTAGE;
			break;
	}
}

#define CheckRecover()
{
	if (ai_state == AS_ADVANTAGE) ai_recovering = false;
	else
	{
		var stage_x = get_stage_data( SD_X_POS );
		var stage_y = get_stage_data( SD_Y_POS );
		var ai_recovering2 = false;
		
		if (ai_state == AS_RECOVER)
		{
		    ai_recovering2 = true;
		}
		else if (free && (point_distance(x,y,(x>room_width/2?room_width:0),room_height)<((stage_y >= 800)?point_distance((x>room_width/2?room_width:0),room_height, ((x>room_width/2)?3:1)*floor(room_width/4), topcustom):point_distance((x>room_width/2?room_width:0),room_height, (x>room_width/2?room_width-stage_x:stage_x), stage_y))))
		{
			ai_recovering2 = true;
			ai_state = AS_RECOVER;
		}
		
		ai_recovering = ai_recovering2;
	}
}

#define AttackUpdate()
{

	switch (ai_state)
	{
		case AS_ADVANTAGE:
			ai_attack_time = 4;
			break;
		case AS_RECOVER:
			ai_attack_time = 40;
			if (state_cat != SC_HITSTUN) HoldTowardsStage();
			break;
		case AS_NEUTRAL:
			ai_attack_time = 30;
			break;
	}

	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case AT_JAB:
				if (has_hit_player) DoAttack(AT_DTILT);
				break;

			case AT_USPECIAL:
				switch (window)
				{
					case 5:
						ai_state = AS_RECOVER;
						break;
					case 1:
					case 2:
					case 3:
					if (ai_state != AS_RECOVER)
					{
						joy_pad_idle = false;
						joy_dir = point_direction(x,y,ai_target.x,ai_target.y);
						special_down = (ai_target.state == PS_PARRY_START || ai_target.state == PS_PARRY) && ai_target.state_timer <= 6;
						var dist = point_distance(x,y,ai_target.x+ai_target.hsp,ai_target.y+ai_target.vsp);
						if (can_shield && has_airdodge && (dist > 260 || dist < 180))
						{
							special_down = false;
							shield_down = true;
							shield_pressed = true;
							joy_dir = 270;
						}
					}
					break;
				}
				break;

			case AT_FSPECIAL:
				if (window == 1) down_down = true;
				break;

			case AT_NTHROW:
				switch (window)
				{
					case 1:
						joy_pad_idle = false;
						if (ai_state != AS_RECOVER)
						{
							joy_dir = point_direction(x,y,ai_target.x,ai_target.y);
							strong_down = (ai_target.state == PS_PARRY_START || ai_target.state == PS_PARRY) && ai_target.state_timer <= 6;
						}
						else
						{
							joy_dir = 90;
							left_down = false;
							right_down = false;
						}
						break;
					default:
						if (has_hit_player && dist > 200 && dist < 250 && get_player_damage(ai_target.player) >= 100)
						{
							DoAttack(AT_USPECIAL);
						}
						break;
				}
				break;
		}
	}
}

#define SetAttack()
{
	switch (ai_state)
	{
		case AS_RECOVER:
			if (has_walljump && (x < 200 || x > room_width - 200)) SetTask(TSK_GUNREC);
			switch (task)
			{
				case TSK_GUNREC:
					if (free)
					{
						ready_to_attack = false;
						switch (task_state)
						{
							case 0: // gun
								if (has_walljump)
								{
									move_cooldown[AT_USPECIAL] = max(move_cooldown[AT_USPECIAL], 2);
									if (y > room_height - 200 && can_attack) set_attack(AT_FSPECIAL); //DoAttack(AT_FSPECIAL);
									if (attack == AT_FSPECIAL && state == PS_ATTACK_AIR) task_state++;
								}
								else TaskDone();
								break;
							case 1:
								if (can_wall_jump)
								{
									HoldTowardsStage();
									jump_pressed = true;
								}
								if (state == PS_WALL_JUMP) task_state++;
								break;
							case 2:
								if ((attack == AT_NTHROW && state == PS_ATTACK_AIR) || !NumOfPortals()) TaskDone();
								up_strong_pressed = true;
							break;
						}
					}
					else TaskDone();
					break;
				default:
					TaskDone();
					break;
			}
			break;

		case AS_NEUTRAL:
			if (get_training_cpu_action() != CPU_FIGHT)
			{
				TaskDone();
				break;
			}
			tryParry();

		case AS_ADVANTAGE:
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack && get_training_cpu_action() == CPU_FIGHT)
			{
				var frameOffset = aura?1:6;
				var xdist = abs((ai_target.x+ai_target.hsp*frameOffset)-x);
				var ydist = abs((ai_target.y+ai_target.vsp*frameOffset)-y);
				var dist = point_distance(0, 0, xdist, ydist);
				
				switch (task)
				{
					case TSK_NONE:
						if (ai_target.invincible) break;
						if (aura && ydist < 10 && xdist < 120 && xdist > 40 && get_player_damage(ai_target.player) >= 150)
						{
							DoAttack(AT_NSPECIAL);
						}
						else if (aura && ydist < 10 && xdist > 100 && attack != AT_FSPECIAL)
						{
							DoAttack(AT_FSPECIAL);
						}
						else if (dist > 200 && dist < 250 && (get_player_damage(ai_target.player) >= 100 || aura))
						{
							DoAttack(AT_USPECIAL);
						}
						else if (xdist > 150 && !move_cooldown[AT_DSPECIAL])
						{
							HoldTowardsTarget();
							DoAttack(AT_DSPECIAL);
						}
						else if (dist < 80)
						{
							SetTask(TSK_STRONG);
						}
						break;
					case TSK_STRONG:
						if (!jsTimer)
							jump_pressed = true;
						else
						{
							up_strong_pressed = true;
							TaskDone();
						}
						break;
				default:
					TaskDone();
					break;
				}
			}
			break;		
	}
}

#define HoldTowardsStage()
{
	left_down = x > floor(room_width/2);
	right_down = !left_down;
}

#define HoldTowardsTarget()
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

#define DoAttack(attack)
{
	tryParry();
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
				HoldTowardsTarget();
				set_attack(AT_DATTACK);
			}
			break;
		case AT_FTILT:
		case AT_FAIR:
			HoldTowardsTarget();
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_DTILT:
			HoldTowardsTarget();
		case AT_DAIR:
			down_down = true;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_UTILT:
			HoldTowardsTarget();
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
			if (ai_state == AS_RECOVER)
				HoldTowardsStage();
			else
				HoldTowardsTarget();
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
		case 49:
			if (aura && can_attack)
			{
				HoldTowardsTarget();
				set_attack(49);
			}
			break;
	}
}

#define tryParry()
{
	if (state == PS_PARRY_START) // no rolls
	{
		left_down = false;
		right_down = false;
		joy_pad_idle = true;
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
			ai_state = AS_ADVANTAGE;
		}
	}
}

#define TaskDone()
{
	task_state = 0;
	task = TSK_NONE;
}

#define SetTask(_task)
{
	if (task != _task)
	{
		task_state = 0;
		task = _task;
	}
}

#define NumOfPortals()
{
    var i = 0;
    with (asset_get("obj_article1")) if (player_id == other.id && !isDespawn) i++;
    return i;
}