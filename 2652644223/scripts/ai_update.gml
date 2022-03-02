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
			if(state_cat == SC_HITSTUN) exit;
			if (point_distance(x, y, ai_target.x, ai_target.y) <= 60 && (state == PS_IDLE || state == PS_IDLE_AIR)
			|| point_distance(x, y, ai_target.x, ai_target.y) <= 200 && (has_hit_player || ai_target.state_cat == SC_HITSTUN || ai_target.was_parried || (ai_target.state == PS_PARRY && ai_target.state_timer == 6)))
				ai_state = AS_ADVANTAGE;
			//Panic Jab
			if (point_distance(x, y, ai_target.x, ai_target.y) <= 50 && (state == PS_IDLE || state == PS_IDLE_AIR)) DoAttack(free?AT_NAIR:AT_JAB);
			//Reload
			if (bullets < 3 && point_distance(x, y, ai_target.x, ai_target.y) >= 350 && !free) {tac_reload = true; DoAttack(AT_TAUNT_2)};
			//Falco Laser
			if(random_func(6,20,false) < 2 && !free)
			{
				jump_pressed = true;
				HoldTowardsTarget();
			}
			//Platdrop
			if(random_func(12,10,false) <= 6 && ai_target.y < y)
				FallThrough();
			//Dashdance
			if(state == PS_DASH)
			{
				if(point_distance(x, y, ai_target.x, ai_target.y) <= 60 && random_func(10,50,false) < temp_level*5)
					HoldAwayTarget();
			}
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
			ai_attack_time = 8;
			FallThrough();
			break;
		case AS_RECOVER:
			ai_attack_time = 50;
			//if (state_cat != SC_HITSTUN) HoldTowardsStage();
			break;
		case AS_NEUTRAL:
			ai_attack_time = 45;
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
			//Combo Routes
			case AT_JAB:
				if (has_hit_player) { DoAttack(bullets < 3?AT_FTILT:AT_UTILT);}
				else if (window == 3 || window == 6) attack_pressed = true;
				break;
			case AT_DAIR:
			case AT_BAIR:
			case AT_UAIR:
				if(window == 2 && has_hit) up_strong_pressed = true;
				break;
			case AT_UTILT:
				if(window == 3 && window_timer == 12 && has_hit) jump_pressed = true;
				break;
			case AT_DSPECIAL:
				if(window == 1) { ai_dspec = clamp(random_func(4, 3, true),1, bullets)}
				if (window == 2 && (dspec_held != ai_dspec || dist > 70)) special_down = true;
				break;
			case AT_FSPECIAL:
				if (ai_state == AS_RECOVER && window == 2) {attack_pressed = true; HoldTowardsStage();}
				break;
			case AT_TAUNT_2:
				if(window == 2 && window_timer == 12 && random_func(6,45,false) <= temp_level*5)
					special_pressed = true;
		}
	}
}

#define SetAttack()
{
	if(state_cat == SC_HITSTUN) exit;
	switch (ai_state)
	{
		case AS_RECOVER:
			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && random_func(8,25,false) < 20)
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
				if(state_cat == SC_HITSTUN) exit;
				var xdist = abs((ai_target.x+ai_target.hsp*6)-x);
				var ydist = abs((ai_target.y+ai_target.vsp*6)-y);
				var dist = point_distance(0, 0, xdist, ydist);
				if (ai_state == AS_ADVANTAGE && can_jump && ydist < 100 && ai_target.y < y) jump_true = true;
				if (ai_state == AS_ADVANTAGE && state == PS_FIRST_JUMP && dist < 150 && ydist < 80) jump_down = false;
				
				if (IsTargetBehind && xdist < 80 && ydist < 20) DoAttack(free?AT_BAIR:AT_FTILT);
				else if (ai_target.was_parried && xdist < 80 && ydist < 10) DoAttack(free?AT_FAIR:AT_FSTRONG);
				//KILLS PLS
				else if(get_player_damage(ai_target.player) > 90 && xdist < 80  && ydist < 20) if(ai_target.y < y && xdist < 40) DoAttack(!free?AT_USTRONG:AT_UAIR) else DoAttack(!free?AT_FSTRONG:AT_FAIR)
				//Neutral Adv
				else if (xdist < 100 && ydist < 20) DoAttack(!free?(random_func(6,50,false) <40 ?AT_JAB:AT_DATTACK):(get_player_damage(ai_target.player)< 80 ?AT_NAIR:AT_FAIR));
				else if (xdist < 30 && ydist < 50 && ai_target.y < y && free) DoAttack(AT_UAIR);
				else if (xdist < 300 && ydist < 20 && random_func(8,25,false) < 20 && bullets != 0) DoAttack(bullets<=2?AT_TAUNT_2:AT_NSPECIAL);
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
		case AT_DAIR:
			HoldTowardsTarget();
			down_down = true;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_UTILT:
		case AT_UAIR:
			HoldTowardsTarget();
			up_down = true;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_BAIR:
			HoldTowardsTarget();
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
			if (ai_state == AS_RECOVER)
				HoldTowardsStage();
			up_down = true;
			special_pressed = true;
			special_down = true;
			break;
		case AT_FSTRONG:
			HoldTowardsTarget();
			left_strong_pressed = true;
			left_strong_down = true;
			right_strong_pressed = true;
			right_strong_down = true;
			break;
		case AT_DSTRONG:
			down_strong_pressed = true;
			down_strong_down = true;
			break;
		case AT_USTRONG:
			up_strong_pressed = true;
			up_strong_down = true;
			break;
		case AT_TAUNT_2:
			tac_reload = true;
			attack_pressed = true;
			attack_down = true;
			special_pressed = true;
			special_down = true;
			break;
		//A lil cheating
		if(attack != AT_BAIR && (state == PS_ATTACK_AIR && state == PS_ATTACK_GROUND) && state_timer == 1)
			spr_dir = (x > ai_target.x? -1:1);
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

#define FallThrough()
{
	if (ai_target.y > y && !free && freemd)
		down_pressed = true;
}