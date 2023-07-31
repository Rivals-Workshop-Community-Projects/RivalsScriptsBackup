// states
#macro AS_NEUTRAL 0
#macro AS_ADVANTAGE 1
#macro AS_RECOVER 2
// tasks
#macro TSK_NONE 0
#macro TSK_STRONG 1
#macro TSK_GUNREC 2

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
			if (point_distance(x, y, ai_target.x, ai_target.y) > 200 && !ai_target.was_parried && ai_target.state_cat != SC_HITSTUN) ai_state = AS_NEUTRAL;
			break;
		case AS_NEUTRAL:
			if (ai_target.state_cat == SC_HITSTUN || ai_target.was_parried || (ai_target.state == PS_PARRY && ai_target.state_timer == 6)) ai_state = AS_ADVANTAGE;
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
			Movement()
			break;
		case AS_RECOVER:
			ai_attack_time = 20 + (9-temp_level) * 8;
			if (state_cat != SC_HITSTUN && state_cat != SC_GROUND_COMMITTED) HoldTowardsStage();
			break;
		case AS_NEUTRAL:
			ai_attack_time = 20 + (9-temp_level) * 8;
			Movement()
			break;
	}

	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case AT_UTHROW:
				if (has_hit_player) jump_pressed = true;
				break;

			case AT_JAB:
				if (has_hit_player) DoAttack(ai_target.free?AT_FTILT:abs(ai_target.x-x)>70?AT_DTILT:AT_FSTRONG);
				break;

			case AT_USPECIAL:
				if (ai_state == AS_RECOVER)
				{
					HoldTowardsStage();
					if (can_wall_jump) jump_pressed = true;
				}
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
						special_down = (ai_target.state == PS_PARRY_START || ai_target.state == PS_PARRY) && ai_target.state_timer <= 6 && !aura;
						var dist = point_distance(x,y,ai_target.x+ai_target.hsp,ai_target.y+ai_target.vsp);
						if (can_shield && has_airdodge && (dist > 260 || dist < 180))
						{
							special_down = false;
							shield_down = true;
							shield_pressed = true;
							joy_dir = 270;
						}
					}
					else joy_pad_idle = true;
					break;
				}
				break;

			case AT_FSPECIAL:
				if (window == 1)
				{
					down_down = true;
					if (ai_state == AS_RECOVER) HoldTowardsStage();
					else HoldTowardsTarget();
				}
				break;

			case AT_NSPECIAL:
				if (!aura)
				{
					var frameOffset = 4;
					var xdist = abs((ai_target.x+ai_target.hsp*frameOffset)-x);
					var ydist = abs((ai_target.y+ai_target.vsp*frameOffset)-y);
					var dist = point_distance(0, 0, xdist, ydist);
					special_down = true;
					if (ydist <= 32 && xdist < 150 && !((ai_target.state == PS_PARRY_START || ai_target.state == PS_PARRY) && ai_target.state_timer <= 6)) special_down = false;
					if (nspecCharge >= nspecMax-7 || ydist > 90 || spr_dir==(ai_target.x>x?-1:1))
					{
						shield_pressed = true;
						jump_pressed = true;
						jump_counter = 0;
					}
					TryParry();
				}
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

			case AT_TAUNT:
			case AT_TAUNT_2:
			case AT_EXTRA_1:
			case AT_EXTRA_2:
				taunt_down = (ai_target == self);
				taunt_pressed = taunt_down;
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
			TryParry();

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
						if (ai_target == self)
						{
							if (!free)
							{
								up_down = true;
								DoAttack(AT_TAUNT);
							}
							break;
						}
						if (ai_target.invincible) break;
						if (aura && ydist < 10 && xdist < 120 && xdist > 40 && get_player_damage(ai_target.player) >= 150)
						{
							DoAttack(AT_NSPECIAL);
						}
						else if (aura && ydist < 10 && xdist > 100 && attack != AT_FSPECIAL)
						{
							DoAttack(AT_FSPECIAL);
						}
						else if (!free && xdist < 80 && ydist < 10)
						{
							DoAttack(AT_JAB);
						}
						else if (!free && xdist < 100 && ydist < 10)
						{
							DoAttack(AT_DTILT);
						}
						else if (NumOfPortals() < 1 || dist < 100)
						{
							SetTask(TSK_STRONG);
						}
						else if (dist > 200 && dist < 250 && (collision_line(ai_target.x, ai_target.y, ai_target.x, room_height, asset_get("par_block"), 0, 1) && get_player_damage(ai_target.player) >= 110 || aura))
						{
							DoAttack(AT_USPECIAL);
						}
						else if (!free && xdist > 150 && !move_cooldown[AT_DSPECIAL])
						{
							HoldTowardsTarget();
							DoAttack(AT_DSPECIAL);
						}
						else if (!free && ai_state == AS_NEUTRAL && ydist < 90 && ai_target.temp_level>0)
						{
							DoAttack(AT_NSPECIAL);
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
	right_pressed = right_down;
	left_pressed = left_down;
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
	TryParry();
	switch (attack)
	{
		case AT_TAUNT:
			taunt_down = true;
			taunt_pressed = true;
			break;
		case AT_NAIR:
		case AT_JAB:
			HoldTowardsTarget();
			ForceSprDir();
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
			HoldTowardsTarget();
			ForceSprDir();
		case AT_FAIR:
			HoldTowardsTarget();
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_DTILT:
			HoldTowardsTarget();
			ForceSprDir();
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
			ForceSprDir();
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
		case 49:
			if (aura && can_attack)
			{
				HoldTowardsTarget();
				set_attack(49);
			}
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

#define ForceSprDir()
{
	if (left_down^^right_down) spr_dir = right_down-left_down;
}

#define DetectCheaters()
{
	if (aura) return;
	{
		with (oPlayer) if (id != other && temp_level!=0)
		{
			if (other.cheatTracker[player].isCheater)
				other.aura = true;
			else if (state == PS_PARRY)
			{
				if (state_timer > 0 && !(other.cheatTracker[player].nextParry || get_training_cpu_action() == CPU_PARRY))
				{
					other.cheatTracker[player].isCheater = true;
					other.aura = true;
				}
			}
			else
				other.cheatTracker[player].nextParry = state == PS_PARRY_START;
		}
	}
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
	}
}

#define Hitfall()
{
	if (free && hitpause && hitstop_full > 4 && hitstop <= 0 && has_hit_player && (collision_line(x, y, x, y+64, asset_get("par_block"), 1, 0) || collision_line(x, y, x, y+64, asset_get("par_jumpthrough"), 1, 0)))
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