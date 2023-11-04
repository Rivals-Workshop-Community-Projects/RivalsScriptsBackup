// states
#macro AS_NEUTRAL 0
#macro AS_ADVANTAGE 1
#macro AS_RECOVER 2

DetectCheaters();
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
			ai_attack_time = aura?0:(4 + (9-temp_level) * 4);
			if (upThrow > 0) HoldTowardsTarget();
			else Movement();
			break;
		case AS_RECOVER:
			ai_attack_time = 20 + (9-temp_level) * 8;
			if (state_cat != SC_HITSTUN) HoldTowardsStage();
			break;
		case AS_NEUTRAL:
			ai_attack_time = 20 + (9-temp_level) * 8;
			Movement();
			break;
	}

	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case 49:
				right_down = sign(angle_difference(point_direction(x,y,ai_target.x,ai_target.y), fSmashAngle))==1;
				left_down = !right_down;
				break;
			case AT_FTILT:
			case AT_DATTACK:
			case AT_FSPECIAL:
				if (has_hit_player && get_training_cpu_action()== CPU_FIGHT)
				{
					jump_pressed = true;
				}
				break;
			case AT_NAIR:
			case AT_DAIR:
			case AT_BAIR:
			case AT_FAIR:
				if (has_hit_player && aura) DoAttack(AT_USPECIAL);
				else if (hitpause && GroundBelow())
				{
					down_pressed = true;
					down_down = true;
				}
				break;
			case AT_JAB:
				if (has_hit_player) DoAttack(AT_FTILT);
				break;
			case AT_USPECIAL:
				var stage_x = get_stage_data( SD_X_POS );
				var stage_y = get_stage_data( SD_Y_POS );
				
				special_down = ai_state == AS_RECOVER;
				if (aura && ai_state != AS_RECOVER)
				{
					HoldTowardsTarget();
					HoldTowardsTargetY();
					special_down = !has_hit_player;
				}
				else if (state_timer < 20)
				{
					up_down = true;
					if ((x<room_width/2)?x<stage_x-140:x>room_width-stage_x+140)
						HoldTowardsStage();
					else
					{
						left_down = false;
						right_down = false;
					}
				}
				else
				{
					HoldTowardsStage();
					var topStage = ((stage_y >= 800)?topcustom:stage_y);
					if (!free)
					{
						up_down = false;
						down_down = false;
						left_down = false;
						right_down = false;
					}
					else if (((x<room_width/2)?x<stage_x-(topStage-y):x>room_width-stage_x+(topStage-y)) && ((x<room_width/2)?x<stage_x-100:x>room_width-stage_x+100))
					{
						up_down = false;
						down_down = false;
					}
					else
					{
						up_down = y > topStage;
						down_down = !up_down;
						if (up_down && uspecDir == 45 || uspecDir == 135) up_down = false;
					}
				}
				break;
			case AT_NSPECIAL:
				if (window == 1 && window_timer == 1 && CloseToAStar())
				{
					HoldTowardsTarget();
					spr_dir = right_down?1:-1;
				}
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
			case AT_UAIR:
				HoldTowardsTarget()
				break;
			case AT_TAUNT:
			case AT_TAUNT_2:
				taunt_down = (ai_target == self);
				taunt_pressed = taunt_down;
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
			if (attack != AT_NSPECIAL) waveshine = 0;
			else
			{
				joy_dir = ai_target.x>x?0:180;
				HoldTowardsTarget();
				if (waveshine==1&&(ai_state==AS_ADVANTAGE||random_func(0,2,1))) ReverseHold();
				joy_pad_idle = false;
				if (!free) waveshine = 0;
			}
		}
	}
}

#define SetAttack()
{
	switch (ai_state)
	{
		case AS_RECOVER:
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack && !aura && abs(x-room_width/2)>300)
			{
				var stage_y = get_stage_data( SD_Y_POS );
				if (y < ((stage_y >= 800)?topcustom:stage_y)+6)
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
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack && get_training_cpu_action() == CPU_FIGHT)
			{
				if (ai_target == self)
				{
					if (!free)
					{
						up_down = true;
						DoAttack(AT_TAUNT);
					}
					break;
				}
				var frameOffset = aura?1:5;
				var xdist = abs((ai_target.x+ai_target.hsp*frameOffset)-x);
				var ydist = abs((ai_target.y+ai_target.vsp*frameOffset)-y);
				var dist = point_distance(0, 0, xdist, ydist);
				if (upThrow > 70 && move_cooldown[AT_DSPECIAL] == 0)
					DoAttack(AT_DSPECIAL);
				else if (upThrow > 40)
					DoAttack(StarCount()>=4?AT_UAIR:AT_FSPECIAL);
				else if (ai_target.state_cat == SC_HITSTUN && dist < 300 && CloseToAStar())
					DoAttack(AT_NSPECIAL);
				else if (ai_state==AS_NEUTRAL && dist < 100 && !free && state != PS_FIRST_JUMP && !ai_target.was_parried)
					DoAttack(AT_NSPECIAL);
				else if (!free && ydist < 80 && xdist < 50)
					DoAttack(AT_USTRONG);
				else if (!free && ydist < 20 && xdist < 70)
					DoAttack(AT_DSTRONG);
				else if (dist < 70 && state != PS_FIRST_JUMP && !ai_target.was_parried)
					DoAttack(AT_NSPECIAL);
				else if (ydist < 40)
				{
					if (xdist < (sign(ai_target.x-x)!=spr_dir&&free?100:60))
						DoAttack(free?xdist<30?GroundBelow()?AT_DAIR:AT_NAIR:AT_FAIR:AT_DTILT);
					else if (xdist < 100)
						DoAttack(free?AT_FSPECIAL:AT_DATTACK);
				}
				else if (free && ydist < 60 && xdist < 40)
					DoAttack(ai_target.y>y?AT_DAIR:AT_UAIR);
				else if (attack != AT_DSPECIAL && ai_target.y<y-80) DoAttack(AT_DSPECIAL);
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

#define HoldTowardsTargetY()
{
	up_down = y > ai_target.y;
	down_down = !up_down;
	down_pressed = down_down;
	up_pressed = up_down;
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
			down_down = true;
			special_pressed = true;
			special_down = true;
			attack_down = false;
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

#define CloseToAStar()
{
	var close = false;
	with(asset_get("obj_article1")) if (player_id == other.id && state == 1 && !cracked && point_distance(x, y, other.x, other.y) < (isBig?128:96)) close = true;
	return close;
}

#define GroundBelow()
{
	return collision_line(x,y,x,room_height,asset_get("par_block"),0,1) > 0;
}

#define DetectCheaters()
{
	if (aura) return;
	with (oPlayer) if (id != other && temp_level!=0 && (clones_player_id == id || clones_player_id == noone))
	{
		if (other.cheatTracker[player].isCheater) other.aura = true;
		else if (state == PS_PARRY)
		{
			if (state_timer > 0 && !(other.cheatTracker[player].nextParry || get_training_cpu_action() == CPU_PARRY))
			{
				other.cheatTracker[player].isCheater = true;
				other.aura = true;
			}
		}
		else other.cheatTracker[player].nextParry = state == PS_PARRY_START;
	}
}

#define StarCount()
{
    var noOfStars = 0;
    with(asset_get("obj_article1")) if (player_id == other.id && state == 1)
    {
    	noOfStars += isBig+1;
    }
    return noOfStars;
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
		if ((ai_target.y < y-32)) jump_down = true;
		
		if (state == PS_JUMPSQUAT && state_timer == 0) spr_dir = (x < ai_target.x)?-1:1;
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