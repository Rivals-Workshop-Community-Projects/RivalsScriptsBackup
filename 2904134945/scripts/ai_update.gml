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
	if ((state == PS_RESPAWN && temp_level == 9) || aura) tryhard = true;
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
		else if (free && ((djumps==max_djumps && vsp>6) || (point_distance(x,y,(x>room_width/2?room_width:0),room_height)<((stage_y >= 800)?point_distance((x>room_width/2?room_width:0),room_height, ((x>room_width/2)?3:1)*floor(room_width/4), topcustom):point_distance((x>room_width/2?room_width:0),room_height, (x>room_width/2?room_width-stage_x:stage_x), stage_y)))))
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
			ai_attack_time = 4 + (9-temp_level) * 4;
			Movement();
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
		var xdist = abs((ai_target.x+ai_target.hsp*6)-x);
		var ydist = abs((ai_target.y+ai_target.vsp*6)-y);
		var dist = point_distance(0, 0, xdist, ydist);
		switch (attack)
		{
			case AT_JAB:
				if (has_hit_player)
				{
					attack_pressed = true;
					jump_pressed = true;
				}
				break;
			case AT_NSPECIAL:
				if (window <= 2)
				{
					if (window == 1 && window_timer == 1)
					{
						HoldTowardsTarget();
						spr_dir = right_down?1:-1;
					}
					TryParry(7);
					if (xdist < 180 || window_timer >= 94 || has_rune("N") || aura) special_down = true;
					else if (ydist > 100) shield_pressed = true;
				}
				break;
			case AT_FSPECIAL:
				if (fspecMeter.charge > 80 && has_hit_player) special_down = true;
				break;
			case AT_DSPECIAL:
				if (window < 3)
				{
					if (ai_state == AS_RECOVER) special_down = true;
					shield_pressed = false;
					if (dist < 150) shield_pressed = true;
					else if (!special_down || state_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)+36)
					{
						var hasCrystal = false;
						if (!has_rune("B")) with(obj_article1)if(player_id==other){hasCrystal=true;break;}
						if (hasCrystal)
							shield_pressed = true;
					}
					TryParry(5);
				}
				break;
			case AT_USPECIAL:
				if (window == 2)
				{
					left_down = true;
					right_down = true;
					shield_pressed = false;
					if ((has_rune("I")||aura) && ai_target != self && (ai_state != AS_RECOVER || !aura))
					{
						joy_dir = point_direction(x,y,ai_target.x,ai_target.y-48);
						joy_pad_idle = false;
						if (has_hit_player&&aura) shield_pressed = true;
					}
					else
					{
						ai_state = AS_RECOVER;
						if (y < topcustom-4)
						{
							joy_dir = 270 + sign(room_width/2-x)*70;
							joy_pad_idle = false;
							if (aura||!free) shield_pressed = true;
						}
					}
				}
				break;
			case AT_UAIR:
			case AT_DAIR:
				if (xdist < 200) HoldTowardsTarget();
				break;
			case AT_TAUNT:
			case AT_TAUNT_2:
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
			if (ai_recovering)
			{
				if (!aura && attack != AT_DSPECIAL && free && vsp > 0 && move_cooldown[AT_DSPECIAL]==0 && point_distance(x, y, ai_target.x, ai_target.y) > 250 && !collision_line(x, y, x, room_height, asset_get("par_block"), 1, 0) && !collision_line(x, y, x, room_height, asset_get("par_jumpthrough"), 1, 0))
					DoAttack(AT_DSPECIAL);
			}
			break;

		case AS_NEUTRAL:
			if (get_training_cpu_action() != CPU_FIGHT) break;
			TryParry();

		case AS_ADVANTAGE:
			if ((ready_to_attack || tryhard) && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && can_attack && get_training_cpu_action() == CPU_FIGHT && (!ai_target.invincible||ai_target.invince_time<7))
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
				var xdist = abs((ai_target.x+ai_target.hsp*6)-x);
				var ydist = abs((ai_target.y+ai_target.vsp*6)-y);
				var dist = point_distance(0, 0, xdist, ydist);
				var hasCrystal = false;
				if (!has_rune("B"))with(obj_article1)if(player_id==other){hasCrystal=true;break;}
				if (ydist < 50)
				{
					if (free)
					{
						if (xdist < 40)
							DoAttack(AT_NAIR);
						else if (xdist < 100)
							DoAttack(AT_FAIR);
						else if (xdist < ((has_rune("J")||aura)?200:130) && fspecMeter.charge > 90)
							DoAttack(AT_FSPECIAL);
						else if (dist >= 250 && aura)
							DoAttack(AT_USPECIAL);
						else if (xdist > 200 && move_cooldown[AT_NSPECIAL]==0)
							DoAttack(AT_NSPECIAL);
					}
					else
					{
						if (xdist < 50)
						{
							if (ai_target.noelleFrostbite==frostbiteMax||get_player_damage(ai_target.player)>90)
								DoAttack(AT_USTRONG);
							else
								DoAttack(attack==AT_JAB?AT_DTILT:AT_JAB);
						}
						else if (xdist < 70 && (ai_target.noelleFrostbite==frostbiteMax||get_player_damage(ai_target.player)>90))
							DoAttack(AT_DSTRONG);
						else if (xdist < 100)
						{
							if (xdist < 90 && fspecMeter.charge > ((has_rune("J")||aura)?200:90) && ai_target.noelleFrostbite!=frostbiteMax)
								DoAttack(AT_FSPECIAL);
							else
								DoAttack(AT_FTILT);
						}
						else if (xdist < 150)
							DoAttack((ai_target.noelleFrostbite==frostbiteMax||get_player_damage(ai_target.player)>90)&&xdist<130?AT_FSTRONG:AT_DTILT);
						else if (xdist < 200 && move_cooldown[AT_NSPECIAL]==0 && attack!=AT_NSPECIAL)
							DoAttack(AT_NSPECIAL);
						else if (dist >= 250 && aura)
							DoAttack(AT_USPECIAL);
						else if (xdist >= 300 && !hasCrystal)
							DoAttack(AT_DSPECIAL);
					}
				}
				else if (ydist < 80)
				{
					if (free)
					{
						if (ai_target.y>y && (vsp < 0 || collision_line(x, y, x, room_height, asset_get("par_block"), 1, 0) || collision_line(x, y, x, room_height, asset_get("par_jumpthrough"), 1, 0)))
							DoAttack(AT_DAIR);
						else if (xdist < 40)
							DoAttack(AT_NAIR);
						else if (xdist < 120)
							DoAttack(AT_FAIR);
						else if (dist >= 250 && aura)
							DoAttack(AT_USPECIAL);
						else if (xdist > 200 && move_cooldown[AT_NSPECIAL]==0)
							DoAttack(AT_NSPECIAL);
					}
					else
					{
						if (xdist < 50 && ai_target.y<y)
							DoAttack(AT_USTRONG);
						else if (xdist < 100 && ai_target.y<y)
							DoAttack(AT_UTILT);
						else if (dist >= 250 && aura)
							DoAttack(AT_USPECIAL);
						else if (xdist >= 300 && !hasCrystal)
							DoAttack(AT_DSPECIAL);
					}
				}
				else if (ydist < 120)
				{
					if (free)
					{
						if (xdist < 70)
						{
							if (ai_target.y<y-16)
								DoAttack(AT_UAIR);
							else if (vsp < 0 || collision_line(x, y, x, room_height, asset_get("par_block"), 1, 0) || collision_line(x, y, x, room_height, asset_get("par_jumpthrough"), 1, 0))
								DoAttack(AT_DAIR);
						}
						else if (dist >= 250 && aura)
							DoAttack(AT_USPECIAL);
					}
					else
					{
						if (xdist < 80 && ai_target.y<y)
							DoAttack(AT_USTRONG);
						else if (dist >= 250 && aura)
							DoAttack(AT_USPECIAL);
						else if (xdist >= 300 && !hasCrystal)
							DoAttack(AT_DSPECIAL);
					}
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

#define DoAttack(attack)
{
	ai_attack_timer = 0;
	switch (attack)
	{
		case AT_TAUNT:
			taunt_down = true;
			taunt_pressed = true;
			break;
		case AT_JAB:
			spr_dir = x<ai_target.x?1:-1;
		case AT_NAIR:
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
		else
			other.cheatTracker[player].nextParry = state == PS_PARRY_START;
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
		//if (ai_target.y < y-112) jump_down = true;
		if ((ai_target.y+ai_target.vsp*4 < y-160)) jump_down = true;
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