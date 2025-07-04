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
			ai_attack_time = 5;
			FallThrough();
			break;
		case AS_RECOVER:
			ai_attack_time = 40;
			//if (state_cat != SC_HITSTUN) HoldTowardsStage();
			break;
		case AS_NEUTRAL:
			ai_attack_time = 10;//40
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
			case AT_UTILT:
				if (has_hit_player){ 
				//jump_pressed = true;
				DoAttack(AT_FSPECIAL);}
				if (!has_hit_player){ 
				DoAttack(AT_FTILT);}
				break;
			case AT_DATTACK:
				if (has_hit_player && free) DoAttack(AT_FSPECIAL);
				if (has_hit_player){ 
				jump_pressed = true;
				DoAttack(AT_FSPECIAL);}
				break;
			case AT_JAB:
				if (has_hit_player) DoAttack(AT_DTILT);
				break;
			case AT_DTILT:
				if (has_hit_player) DoAttack(AT_FSPECIAL);
				break;
			case AT_FSPECIAL:
				if (has_hit_player) {
					if (get_player_damage(hit_player_obj.player)>=100){
						left_pressed = true;}
				} else {
					if (get_player_damage(hit_player_obj.player)<100){
						down_pressed = true;}
				}
				//DoAttack(get_player_damage(hit_player_obj.player)>=100?AT_USTRONG:ydist>20?AT_USPECIAL:AT_DSPECIAL);
				break;
			case AT_DSPECIAL:
				if (ai_state == AS_RECOVER) {special_down = true; HoldTowardsStage();DoAttack(AT_FSPECIAL_AIR);}
				if (has_hit_player) DoAttack(AT_FAIR);
				break;
			case AT_FSPECIAL_AIR:
				special_pressed = true;
				if (ai_state == AS_RECOVER && window == 1) {jump_pressed = true; HoldTowardsStage();DoAttack(AT_DSPECIAL);}
				//if (window == 5) {HoldTowardsStage();DoAttack(AT_DSPECIAL);}
				if (has_hit_player) DoAttack(AT_FAIR);
				break;
			case AT_USPECIAL:
				if (ai_state != AS_RECOVER) {HoldTowardsStage();}
				break;
			case AT_NSPECIAL:
				if (has_hit_player) DoAttack(AT_USTRONG);
				if (!has_hit_player){ 
				DoAttack(AT_DATTACK);}
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
			if (state == PS_WALL_JUMP)
			{ DoAttack(AT_DSPECIAL);}
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
				
				if (xdist > 400 && ydist < 40) DoAttack(AT_NSPECIAL);
				else if (xdist < 20 && ydist < 80 && ai_target.y < y && free) DoAttack(AT_USPECIAL);
				else if (xdist < 20 && ydist < 50 && ai_target.y < y && free) DoAttack(AT_UAIR);
				else if (xdist > 30	&& xdist < 45 && ydist < 20) DoAttack(AT_FSTRONG);
				else if (xdist < 10 && ydist < 10) DoAttack(AT_DSTRONG);
				else if (xdist < 20 && ydist < 10) DoAttack(AT_DATTACK);
				else if (xdist < 15 && ydist < 30) DoAttack(AT_FTILT);
				else if (xdist < 5 && ydist < 40 && ydist > 20) DoAttack(AT_USTRONG);
				else if (xdist < 5 && ydist < 5 && state == PS_DASH) DoAttack(AT_FSPECIAL);
				else if (xdist < 10 && ydist > 20 && ai_target.y < y && free) DoAttack(AT_NAIR);
				else if (xdist < 80 && ydist < 30 && free) DoAttack(AT_FAIR);
				else if (xdist < 30 && ydist < 10 && free) DoAttack(AT_NAIR);
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

#define FallThrough()
{
	if (ai_target.y > y && !free && freemd)
		down_pressed = true;
}