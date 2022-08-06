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
		var stage_x = get_stage_data(SD_X_POS);
		var stage_y = get_stage_data(SD_Y_POS);
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
			FallThrough();
			break;
		case AS_RECOVER:
			ai_attack_time = 40;
			//if (state_cat != SC_HITSTUN) HoldTowardsStage();
			break;
		case AS_NEUTRAL:
			ai_attack_time = 20;//40
			FallThrough();
			break;
	}

	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		var xdist = abs((ai_target.x+ai_target.hsp*6)-x);
		var ydist = abs((ai_target.y+ai_target.vsp*6)-y);
		var dist = point_distance(0, 0, xdist, ydist);
		switch (attack)
		{
			case AT_DATTACK:
				if (has_hit_player) attack_down = true;
				break;
			case AT_JAB:
				if (has_hit_player) DoAttack(AT_DTILT);
				break;
			case AT_EXTRA_1:
				if (has_hit_player) DoAttack(get_player_damage(hit_player_obj.player)>=120?AT_USTRONG:ydist>20?AT_USPECIAL:AT_DSPECIAL);
				break;
			case AT_USPECIAL_2:
				HoldTowardsTarget();
				DoAttack(AT_DSPECIAL);
				break;
			case AT_DSPECIAL:
				if (ai_state == AS_RECOVER) {shield_pressed = true; HoldTowardsStage();}
				else
				{
					if (window == 1) HoldAwayTarget();
					if (has_hit_player && (get_player_damage(hit_player_obj.player) > 130 || xdist > 50)) attack_pressed = true;
					else
					{
						if (!free && ewgf_timer > 0 && dist < 40 && !was_parried) switch(ewgf_input)
						{
							case 0: joy_pad_idle = true; break;
							case 1: down_down = true; break;
							case 2: down_down = true; HoldSprDir(); if(random_func( 0, 10, true) >= 9-temp_level) attack_pressed = true; attack_down = true;  break;
							case 3: attack_pressed = true; attack_down = true;  HoldTowardsTarget();
							break;
						}
						else {special_pressed = true; HoldTowardsTargetOffset(spr_dir*10)}
					}
				}
				break;
			case AT_FSPECIAL:
				if (ai_state == AS_RECOVER && window == 2) {attack_pressed = true; HoldTowardsStage();}
				else if (get_training_cpu_action() == CPU_FIGHT && window == 2 && has_hit_player && get_player_damage(hit_player_obj.player) < 100) special_pressed = true;
				break;
			case AT_FSPECIAL_2:
				if (ai_state == AS_RECOVER) {DoAttack(AT_DAIR);}
				break;
			case AT_USPECIAL:
				if (ai_state != AS_RECOVER)
				{
					HoldTowardsTarget();
					if (has_hit_player && get_player_damage(hit_player_obj.player) < 120) attack_pressed = true;
					else {special_pressed = true; down_down = true; DoAttack(AT_FSPECIAL);}
				}
				else HoldTowardsStage();
				break;
		}
	}
}

#define SetAttack()
{
	switch (ai_state)
	{
		case AS_RECOVER:
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && state != PS_WALL_JUMP)
			{
				if (move_cooldown[AT_FSPECIAL] == 0 && (abs(room_width/2-x)>400 || y > room_height/3*2)) DoAttack(AT_FSPECIAL);
			}
			break;

		case AS_NEUTRAL:
			if (get_training_cpu_action() != CPU_FIGHT)
				break;
			TryParry();

		case AS_ADVANTAGE:
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack && get_training_cpu_action() == CPU_FIGHT)
			{
				var xdist = abs((ai_target.x+ai_target.hsp*6)-x);
				var ydist = abs((ai_target.y+ai_target.vsp*6)-y);
				var dist = point_distance(0, 0, xdist, ydist);
				if (ai_state == AS_ADVANTAGE && can_jump && ydist < 100 && ai_target.y < y) jump_true = true;
				if (ai_state == AS_ADVANTAGE && state == PS_FIRST_JUMP && dist < 150 && ydist < 80) jump_down = false;
				
				if (xdist > 250 && ydist < 20) DoAttack(AT_NSPECIAL);
				else if (xdist < 30 && ydist < 80 && ai_target.y < y && free) DoAttack(AT_USPECIAL);
				else if (xdist < 30 && ydist < 50 && ai_target.y < y && free) DoAttack(AT_UAIR);
				else if (dist < 40) DoAttack(free?AT_USPECIAL:AT_DSPECIAL);
				else if (xdist < 80 && ydist < 20) DoAttack(AT_DSPECIAL);
				else if (xdist < 110 && ydist < 30) DoAttack(AT_FSPECIAL);
				else if (xdist < 150 && ydist < 30 && !free) DoAttack(AT_DATTACK);
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

#define HoldTowardsTargetOffset(_offset)
{
	left_down = x + _offset > ai_target.x;
	right_down = !left_down;
	right_pressed = right_down;
	left_pressed = left_down;
}

#define HoldAwayTarget()
{
	left_down = x < ai_target.x;
	right_down = !left_down;
	right_pressed = right_down;
	left_pressed = left_down;
}

#define HoldSprDir()
{
	left_down = (spr_dir == -1);
	right_down = !left_down;
	right_pressed = right_down;
	left_pressed = left_down;
}

#define IsTargetBehind()
{
	return sign(x-ai_target.x) == spr_dir;
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
					var numWindows = get_num_hitboxes(attack);
					for (var i = 1; i <= numWindows; ++i)
					{
						if (get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1)
						{
							var firstwindow = get_hitbox_value(attack, i, HG_WINDOW);
							if (firstwindow == clamp(firstwindow, 1, numWindows))
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

#define FallThrough()
{
	if (ai_target.y > y && !free && freemd)
		down_pressed = true;
}