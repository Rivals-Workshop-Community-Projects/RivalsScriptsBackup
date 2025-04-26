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
	if (!free && place_meeting(x, y+1, asset_get("par_block"))) topcustom = y;
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
			ai_attack_time = 0 + (9-temp_level) * 4;
			Movement();
			break;
		case AS_RECOVER:
			ai_attack_time = 0 + (9-temp_level) * 10;
			if (state_cat != SC_HITSTUN) HoldTowardsStage();
			break;
		case AS_NEUTRAL:
			ai_attack_time = 0 + (9-temp_level) * 10;
			Movement();
			break;
	}

	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case AT_NAIR:
			case AT_UAIR:
			case AT_DAIR:
			case AT_USTRONG:
				HoldTowardsTarget();
				break;
			case AT_JAB:
				if (has_hit_player && window < 4) DoAttack(AT_JAB);
				break;
			case AT_USPECIAL:
				ai_state = AS_RECOVER;

				if (vsp >= 0 && (GroundBelow(254) || PlatBelow(254) || (abs(ai_target.x-x) < 40 && ai_target.y > y && ai_target.y < y+254))) special_pressed = true;
				break;
			case AT_EXTRA_3:
				ai_state = AS_RECOVER;
				special_pressed = false;
				break;
			case AT_FSPECIAL:
				if (ai_state == AS_RECOVER)
				{
					HoldTowardsStage();
					special_down = true;
				}
				else if (sign(ai_target.x-x)==spr_dir)
				{
					HoldTowardsTarget();
					special_down = true;
				}
				else
					special_down = false;
				if (can_wall_jump) jump_pressed = true;
				break;
			case AT_NSPECIAL:
				if (window == 2)
				{
					var xdist = abs(ai_target.x-x);
					if (xdist > 130 && (xdist < 180 || xdist > 240)) special_down = true;
					else special_down = false;

					if (ai_target.y > y-48 && abs(ai_target.x-x)<150)
					{
						up_down = false;
						down_down = true;
					}
					else if (ai_target.y < y-128 && abs(ai_target.x-x)<45)
					{
						up_down = true;
						down_down = false;
					}
					else
					{
						up_down = false;
						down_down = false;
					}

					HoldTowardsTarget();
					joy_pad_idle = false;
				}
				break;
			case AT_TAUNT:
				taunt_down = false;
				taunt_pressed = false;
				break;
		}
	}
}

#define SetAttack()
{
	switch (ai_state)
	{
		case AS_RECOVER:
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack && attack != AT_FSPECIAL && move_cooldown[AT_FSPECIAL]==0 && y > topcustom)
			{
				DoAttack(AT_FSPECIAL);
				move_cooldown[AT_USPECIAL] = max(2, move_cooldown[AT_USPECIAL]);
			}
			break;

		case AS_NEUTRAL:
			if (get_training_cpu_action() != CPU_FIGHT)
				break;
			TryParry();

		case AS_ADVANTAGE:
			if (ready_to_attack && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack && get_training_cpu_action() == CPU_FIGHT && (!ai_target.invincible||ai_target.invince_time<7))
			{
				if (ai_target == self)
				{
					if (!free) DoAttack(AT_TAUNT);
					break;
				}
				var frameOffset = 3;
				var xdist = abs((ai_target.x+ai_target.hsp*frameOffset)-x);
				var ydist = abs((ai_target.y+ai_target.vsp*frameOffset)-y);
				var dist = point_distance(0, 0, xdist, ydist);
				var highDamage = get_player_damage(ai_target.player)>110;
				// pov the entire ai is just if else if else if
				if (free)
				{
					if (ydist < 90 && xdist < 90 && xdist > 30 && sign(ai_target.x-x)==spr_dir) DoAttack(AT_FAIR);
					else if (ydist < 75 && xdist < 110 && xdist > 40 && ai_target.y<y+16 && sign(ai_target.x-x)==-spr_dir) DoAttack(AT_FAIR); // bair
					else if (ydist < 65 && xdist < 105) DoAttack(AT_NAIR);
					else if (ydist < 95 && xdist < 50 && ai_target.y>y) DoAttack(AT_DAIR);
					else if (ydist < 150 && xdist < 35 && ai_target.y<y-32) DoAttack(AT_UAIR);
					else if (ydist < 30 && xdist < 150 && move_cooldown[AT_FSPECIAL]==0) DoAttack(AT_FSPECIAL);
					else if (dist > 180 && move_cooldown[AT_NSPECIAL]==0) DoAttack(AT_NSPECIAL);
				}
				else
				{
					if (ydist < 200 && xdist < 90 && ai_target.y<y-40 && highDamage) DoAttack(AT_USTRONG);
					else if (ydist < 90 && xdist < 135 && xdist > 40 && highDamage) DoAttack(AT_FSTRONG);
					else if (ydist < 125 && xdist < 105 && highDamage) DoAttack(AT_DSTRONG);
					else if (ydist < 55 && xdist < 80) DoAttack(AT_DTILT);
					else if (ydist < 55 && xdist < 95 && attack != AT_JAB) DoAttack(AT_JAB);
					else if (ydist < 50 && xdist < 95) DoAttack(AT_FTILT);
					else if (ydist < 105 && xdist < 100) DoAttack(AT_UTILT);
					else if (ydist < 45 && xdist < 140) DoAttack(AT_DATTACK);
					else if (ydist < 45 && xdist < 180 && move_cooldown[AT_FSPECIAL]==0) DoAttack(AT_FSPECIAL);
					else if (dist > 200 && move_cooldown[AT_NSPECIAL]==0) DoAttack(AT_NSPECIAL);
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
	//joy_dir += 180;
	//joy_dir %= 360;
}

#define DoAttack(attack)
{
	ai_attack_timer = 0;
	switch (attack)
	{
		case AT_TAUNT:
			taunt_down = true;
			taunt_pressed = true;
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
			up_down = false;
			down_down = true;
			special_pressed = true;
			special_down = true;
			attack_down = false;
			break;
		case AT_USPECIAL:
			down_down = false;
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

#define TryParry
{
	var _frameAdvance = argument_count > 0 ? argument[0] : 3;
	if (state == PS_PARRY_START) // no rolls
	{
		left_down = false;
		right_down = false;
		joy_pad_idle = true;
	}
	else if (!free)
	{
		var doParry = false;
		if (!ai_target.was_parried)
		{
			with (pHitBox) if (player != other.player && type == 2 && place_meeting(x+hsp*(_frameAdvance+1),y+vsp*(_frameAdvance+1),other)) // proj
			{
				doParry = true;
				break;
			}
			with (oPlayer) if (!doParry && player != other.player && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) // phys
			{
				var numHitboxes = get_num_hitboxes(attack);
				var numWindows = get_attack_value(attack, AG_NUM_WINDOWS);
				for (var i = 1; i <= numHitboxes; ++i) if (get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1)
				{
					var firstwindow = get_hitbox_value(attack, i, HG_WINDOW);
					if (firstwindow == clamp(firstwindow, 1, numWindows))
					{
						var firstwindowframe = get_hitbox_value(attack, i, HG_WINDOW_CREATION_FRAME);
						if (abs((x+get_hitbox_value(attack,i,HG_HITBOX_X)*spr_dir)-other.x)<get_hitbox_value(attack,i,HG_WIDTH)
							&& abs((y+get_hitbox_value(attack,i,HG_HITBOX_Y))-other.y)<get_hitbox_value(attack,i,HG_HEIGHT)
							&& (firstwindowframe<2)?firstwindow==window+1&&get_window_value(attack,firstwindow-1,AG_WINDOW_LENGTH)==window_timer+_frameAdvance:firstwindow==window&&firstwindowframe==window_timer+_frameAdvance)
						{
							doParry = true;
							break;
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
			return true;
		}
		return false;
	}
}

#define GroundBelow
{
	var dist = argument_count > 0 ? y+argument[0] : room_height;
	return collision_line(x,y,x,dist,asset_get("par_block"),0,1) > 0;
}

#define PlatBelow
{
	var dist = argument_count > 0 ? y+argument[0] : room_height;
	return collision_line(x,y,x,dist,asset_get("par_jumpthrough"),0,1) > 0;
}

#define Movement()
{
	if (get_training_cpu_action() == CPU_FIGHT)
	{
		Hitfall();
		Waveland();
		FallThrough();
		JumpEnemy();
	}
}

#define JumpEnemy()
{
	if (ai_target.y < y-64)
	{
		if (vsp > -1) jump_pressed = true;
		if ((ai_target.y < y-160)) jump_down = true;
	}
}

#define Hitfall()
{
	if (free && hitpause && hitstop_full > 3 && hitstop <= 0 && has_hit_player && (collision_line(x, y, x, y+160, asset_get("par_block"), 1, 0) || collision_line(x, y, x, y+160, asset_get("par_jumpthrough"), 1, 0)))
	{
		do_a_fast_fall = true;
	}
}

#define FallThrough()
{
	if (state_cat == SC_GROUND_NEUTRAL && !freemd && ai_target.y > y)
	{
		free = true;
		y+=max_fall;
	}
}

#define Waveland()
{
	if (free && can_shield && has_airdodge && vsp < 0 && abs(ai_target.x-x)>80 && position_meeting(x,y-1,asset_get("par_jumpthrough")) && position_meeting(x,y,asset_get("par_jumpthrough")))
	{
		shield_pressed = true;
		waveland = true;
	}
	else if (waveland)
	{
		waveland = false;
		joy_pad_idle = false;
		joy_dir = 270+sign(ai_target.x-x)*90;
		left_down = true;
		right_down = true;
	}
}