// states
#macro AS_NEUTRAL 0
#macro AS_ADVANTAGE 1
#macro AS_RECOVER 2

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
				//if (has_hit_player) DoAttack(AT_FTILT);
				break;
			case AT_FSTRONG:
				jump_pressed = true;
				break;
			case AT_USPECIAL:
				var stage_x = get_stage_data( SD_X_POS );
				var stage_y = get_stage_data( SD_Y_POS );
				if (cancelUSpec == -1)
				{
					if (has_hit_player && window == 2 && window_timer == 11) cancelUSpec = 1;
					else if (!has_hit_player && window == 2 && window_timer > 1) cancelUSpec = 2;
					if (cancelUSpec >= 1) shield_pressed = true;
				}
				else if (ai_state == AS_RECOVER) joy_dir = ((stage_y >= 800)?point_direction(x, y, ((x>room_width/2)?3:1)*floor(room_width/4), topcustom - 10):point_direction(x, y, (x>room_width/2?room_width-stage_x:stage_x), stage_y - 10));
				break;
			case AT_DSPECIAL:
				if (can_jump)
				{
					jump_pressed = true;
					if (!free)
					{
						shield_pressed = true;
						waveshine = has_hit_player+1;
					}
				}
				break;
		}
	}

	if (waveshine != 0)
	{
		if (state == PS_FIRST_JUMP)
		{
			shield_pressed = true;
			shield_down = true;
		}
		if (state == PS_AIR_DODGE)
		{
			if (attack != AT_DSPECIAL) waveshine = 0;
			else
			{
				joy_dir = ai_target.x>x?0:180;
				HoldTowardsTarget();
				if (waveshine==1) ReverseHold();
				joy_pad_idle = false;
				if (!free) waveshine = 0;
			}
		}
	}
	if (cancelUSpec==1 || cancelUSpec==2)
	{
		if (state == PS_AIR_DODGE)
		{
			if (!free || attack != AT_USPECIAL)
			{
				cancelUSpec = (cancelUSpec==1?3:0);
				ai_attack_timer = -20;
			}
			else
			{
				joy_dir = 270;
				joy_pad_idle = false;
			}
		}
	}
}

#define SetAttack()
{
	switch (ai_state)
	{
		case AS_RECOVER:
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack)
			{
				if (wall_bounces >= 5 && y > floor(2*room_height/3))
				{
					DoAttack(AT_FSPECIAL);
					move_cooldown[AT_USPECIAL] = max(2, move_cooldown[AT_USPECIAL]);
				}
			}
			break;

		case AS_NEUTRAL:
			if (get_training_cpu_action() != CPU_FIGHT)
				break;
			TryParry();

		case AS_ADVANTAGE:
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack && get_training_cpu_action() == CPU_FIGHT && temp_level == 9)
			{
				var xdist = abs((ai_target.x+ai_target.hsp*4)-x);
				var ydist = abs((ai_target.y+ai_target.vsp*4)-y);
				var dist = point_distance(0, 0, xdist, ydist);
				if (cancelUSpec == 3)
				{
					cancelUSpec = 0;
					DoAttack(xdist<10?AT_DSTRONG:AT_FSTRONG);
				}
				else if (dist < 50 && state != PS_FIRST_JUMP && !ai_target.was_parried)
				{
					DoAttack(AT_DSPECIAL);
				}
				else if (dist < 70 && !free)
				{
					cancelUSpec = -1;
					DoAttack(AT_USPECIAL);
				}
				else if (ydist < 40)
				{
					if (xdist < 70)
						DoAttack(free?xdist<30?AT_DAIR:AT_FAIR:AT_DTILT);
					else if (xdist < 110)
						DoAttack(free?AT_FSPECIAL:AT_DATTACK);
				}
				else if (ydist < 140)
				{
					if (xdist < 20 && !free) DoAttack(AT_USTRONG);
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

#define ReverseHold()
{
	left_down = !left_down;
	right_down = !right_down;
	joy_dir += 180;
	joy_dir %= 360;
}

#define DoAttack(attack)
{
	ai_attack_timer = 0;
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
				spr_dir = right_down?1:-1;
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
			if (can_attack)
			{
				set_attack(AT_FSPECIAL);
				spr_dir = right_down?1:-1;
			}
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
			HoldTowardsTarget();
			if (left_down)
			{
				left_strong_pressed = true;
				left_strong_down = true;
			}
			else
			{
				right_strong_pressed = true;
				right_strong_down = true;
			}
			break;
		case AT_DSTRONG:
			down_strong_pressed = true;
			down_strong_down = true;
			break;
		case AT_USTRONG:
			up_strong_pressed = true;
			up_strong_down = true;
			break;
	}
}

#define TryParry()
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