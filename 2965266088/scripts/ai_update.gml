with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message

#macro CS_NEUTRAL 0	
#macro CS_ADVANTAGE 1
#macro CS_RECOVER 2

xdist = abs((ai_target.x+ai_target.hsp*6)-x);
ydist = abs((ai_target.y+ai_target.vsp*6)-y);
dist = point_distance(0, 0, xdist, ydist);
OwnAiAttackTimer ++;

facing_enemy = (x < ai_target.x && spr_dir == 1) || (x > ai_target.x && spr_dir == -1) ? true : false;
// print("///")
DoFunny = get_player_stocks(player) > get_player_stocks(ai_target.player) || was_reloaded;
if (DoFunny) Taunts();
ChangeStates();
CheckRecover();
AttackUpdate();
if temp_level == 1{
	// print(get_gameplay_time()%(3-temp_level))
	if random_func_2(player,2,true)==0{
		SetAttack();
	}
}
else{
	SetAttack();
}

// print(ai_attack_time)

// print(ai_attack_timer)
// print(OwnAiAttackTimer)
// print(ready_to_attack)
// print(ai_going_into_attack)

// print("State: " + string(ai_state))
// print("HoldLeft: " + string(left_down))
// print("HoldRight: " + string(right_down))
// print(game_time)
#define Taunts()
if(ai_target.state != PS_DEAD && ai_target != self){
	silly = 0;taunt_down = false;
}
else{
	if(silly == 0)silly = 1;
	if(!free){
		ready_to_attack = false;
		if(silly == 1){
			silly = 2+random_func(0,4,true);
		}
		else if(silly == 2){
			down_down = true;
		}
		else if(silly == 3){
			if(state == PS_IDLE){
				set_state(PS_WALK_TURN);
				if(spr_dir == 1){
					left_pressed = true;
				}
				else if(spr_dir == -1){
					right_pressed = true;
				}
			}
		}
		else if(silly == 4 || silly == 5){
			if(can_attack && attack != AT_TAUNT){
				set_attack(AT_TAUNT);
			}taunt_down = true;
		}
	}
}
#define ChangeStates()
{
	if (temp_level == 9) MaxDifficulty = true;
	if (state == PS_PRATFALL || state_cat == SC_HITSTUN || was_parried || ai_target.state == PS_DEAD || ai_target == self) ai_state = CS_RECOVER;
	// print(ai_state)
	switch (ai_state)
	{
		case CS_RECOVER:
			if ((!free && state != PS_PRATFALL && state_cat != SC_HITSTUN)) ai_state = CS_NEUTRAL;
			if (point_distance(x, y, ai_target.x, ai_target.y) <= 200 && state!=PS_PRATFALL
			&& (has_hit_player || ai_target.state_cat == SC_HITSTUN || ai_target.was_parried || (ai_target.state == PS_PARRY && ai_target.state_timer == 6)))
				ai_state = CS_ADVANTAGE;
			break;
		case CS_ADVANTAGE:
			if (!ai_target.was_parried && ai_target.state_cat != SC_HITSTUN && !has_hit_player) ai_state = CS_NEUTRAL;
			CanChangeDIDirection = true;
			if (!has_walljump) ai_state = CS_RECOVER;
			break;
		case CS_NEUTRAL:
			CanChangeDIDirection = true;
			if (point_distance(x, y, ai_target.x, ai_target.y) <= 200
			&& (has_hit_player || ai_target.state_cat == SC_HITSTUN || ai_target.was_parried || (ai_target.state == PS_PARRY && ai_target.state_timer == 6)))
				ai_state = CS_ADVANTAGE;
			if (!has_walljump) ai_state = CS_RECOVER;
			break;
	}
}
#define CheckRecover()
{
	if (!free && place_meeting(x, y+1, asset_get("par_block"))) topcustom = y;
	if (ai_state == CS_ADVANTAGE) ai_recovering = false;
	else
	{
		var ai_recovering2 = false;
		
		if (ai_state == CS_RECOVER)
		{
			ai_recovering2 = true;
		}
		else if (free && ((djumps==max_djumps && vsp>1 && (x > stage_right || x < stage_left)) || (point_distance(x,y,(x>room_width/2?room_width:0),room_height)<((stage_top >= 800)?point_distance((x>room_width/2?room_width:0),room_height, ((x>room_width/2)?3:1)*floor(room_width/4), topcustom):point_distance((x>room_width/2?room_width:0),room_height, (x>room_width/2?room_width-stage_left:stage_left), stage_top)))))
		{
			ai_recovering2 = true;
			ai_state = CS_RECOVER;
			// print("Recover")
		}
		
		ai_recovering = ai_recovering2;
	}
}

#define AttackUpdate()
{
	switch (ai_state)
	{
		case CS_RECOVER:
			DI();
			ai_attack_time = 20 + (9-temp_level) * 8;
			if (state_cat != SC_HITSTUN) HoldTowardsStage();
			break;
		case CS_NEUTRAL:
			
			ai_attack_time = 10 + (9-temp_level) * 3;
			// print(ai_attack_time)
			// print("Neutral")
			if (get_training_cpu_action() == CPU_FIGHT){
				if !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
					if (ai_target.x < stage_right && ai_target.x > stage_left) && (temp_level > 3) {
						KeepDistance();
					}
					if random_func_2(player+4,19-(temp_level*2),true)==0 && temp_level > 5{
						Movement();
						WaveDash(false,false,false);
					}
				}
			}
			break;
		case CS_ADVANTAGE:
			ai_attack_time = 0 + (9-temp_level) * 4;
			// print(ai_attack_time)
			// print("Advantage")
			shield_down = false;
			shield_pressed = false;
			if (get_training_cpu_action() == CPU_FIGHT){
				if !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
					if temp_level > 3{
						RunTowardsTarget(true);
					}
					if random_func_2(player+4,19-(temp_level*2),true)==0 && temp_level > 5{
						Movement();
						WaveDash(false,false,true);
					}
				}
			}
			break;
	}
	ready_to_attack = (OwnAiAttackTimer >= ai_attack_time)
	
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case AT_DSPECIAL:
				special_down = true;
				if dist < 300 || (xdist < 300 && ydist < 150) || dark_hp_temp >= dark_hp_max || gets_hit_by_projectile_in_x_frames != 1000{
					special_down = false;
				}
				break;
			case AT_DSTRONG:
				strong_down = !(dist < 40 || (xdist < 100 && ydist < 20)) && random_func(10, 100, true) <= 90;
				break;
			case AT_USTRONG:
				strong_down = !(dist < 40 || (xdist < 50 && ydist < 150)) && random_func(10, 100, true) <= 90;	
				break;
			case AT_FSTRONG:
				if (window == 1 && window_timer < 2) FaceTarget();
				strong_down = !(dist < 40 || !facing_enemy || (xdist < 170 && ydist < 50)) && random_func(10, 100, true) <= 90;	
				break;
			case AT_NSPECIAL:
				if !ai_recovering && x < stage_right + 100 && x > stage_left - 100{
					HoldTowardsTarget();
				}
				else{
					HoldTowardsStage();
				}
				break;
			case AT_UAIR:
			case AT_DAIR:
			case AT_FAIR:
				HoldTowardsTarget();
				break;
			case AT_BAIR:
				if x>ai_target.x{
					left_down = x > ai_target.x + 20
					right_down = !left_down
				}
				else{
					left_down = x > ai_target.x - 20
					right_down = !left_down
				}
				break;
			case AT_FTILT:
			case AT_UTILT:
			case AT_DTILT:
			case AT_DATTACK:
			case AT_FSPECIAL:
				if (window == 1 && window_timer < 2) FaceTarget();
				break;
			case AT_JAB:
				if (window == 1 && window_timer < 2) FaceTarget();
				if has_hit{
					DoAttack(random_func_2(2+player,2,true)==0?AT_UTILT:AT_FTILT);
				}
				break;
		}
	}
}
#define SetAttack()
{
	// print(xdist)
	switch (ai_state)
	{
		case CS_RECOVER:
			if !free{
				TryParry();
			}
			if (ai_recovering)
			{
				
				var CanWallJump = position_meeting(x+(sprite_width/2)+3,y-1,asset_get("par_block")) || position_meeting(x-(sprite_width/2)-3,y-1,asset_get("par_block"))
				if  temp_level > 3 && has_airdodge && can_shield && (x <= stage_left || x >= stage_right) && random_func_2(player+52,10,true)==0 {
					shield_pressed = true;
					joy_pad_idle = false;
					joy_dir = (x>stage_mid?point_direction(x,y,stage_left,stage_top-20):point_direction(x,y,stage_right,stage_top-20))
				}
				if y < stage_top+350 && temp_level > 2 && (x < stage_left - 200 || x > stage_right + 200) DoAttack(AT_NSPECIAL);
				if has_walljump && CanWallJump && (state==PS_PRATFALL){
					jump_pressed = true;
				}
				else if !(djumps == max_djumps) && (y > stage_top + 50) {
					if vsp >= 0 {
						jump_pressed = true;
					}
				}
				else if (djumps == max_djumps) && (y > stage_top + 50) && !((x > stage_right + 100 || x < stage_left - 100)){
					if vsp >= 0 && move_cooldown[AT_USPECIAL] <= 2 {
						DoAttack(AT_USPECIAL);
					}
				}
			}
			break;

		case CS_NEUTRAL:
			if(ai_target.state == PS_DEAD || ai_target == self) break;
			if (get_training_cpu_action() != CPU_FIGHT) break;
			TryParry();
			
			if random_func_2(player,25 + ((9-temp_level) * 10),true)==0 && xdist > 100 && xdist < 600 && ydist < 60 && !(ai_target.dark_owner == self || dark_hp_cur>0){
				CrouchToGraze = true;
			}
			
			if ((ready_to_attack || ai_going_into_attack || MaxDifficulty) && ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || can_attack ||(window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME) && get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE)==1)) && get_training_cpu_action() == CPU_FIGHT)
			{
				if x > stage_left && x < stage_right && random_func_2(player,10,true)==0{
					if xdist > 250 && ydist > 200 && dark_hp_cur == 0 {
						DoAttack(AT_DSPECIAL);
					}
				}
			}
			// break;

		case CS_ADVANTAGE:
			if(ai_target.state == PS_DEAD || ai_target == self) break;
			TryParry();
			// print((ready_to_attack || MaxDifficulty))
			
			if (!CrouchToGraze||random_func_2(player+7,30,true)==0) && ((ready_to_attack || ai_going_into_attack || MaxDifficulty) && ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || can_attack ||(window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME) && get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE)==1)) && get_training_cpu_action() == CPU_FIGHT)
			{
				if ((free||state_cat==SC_AIR_NEUTRAL||state=PS_JUMPSQUAT) && y < stage_top + 200) {
					// Aerial attacks
					if xdist < 120 && ydist < 120{
						DoAttack(AT_FAIR);
					}
					else if xdist < 60 && ydist < 80 && ydist > 10 && ai_target.y > y{
						DoAttack(AT_DAIR);
					}
					else if xdist < 60 && ydist < 170 && ydist > 70 && ai_target.y < y{
						DoAttack(AT_UAIR);
					}
					else if dist < 100{
						DoAttack(AT_NAIR);
					}
					else if xdist < 300 && ydist < 40 && xdist > 80 && move_cooldown[AT_FSPECIAL] <= 1{
					  	DoAttack(AT_FSPECIAL);
					}
				}
				else
				{
					var High_Damage_Branch = clamp((get_player_damage(ai_target.player) - 15) / 130, 0, 0.4) * 100
					if (self == ai_target.dark_owner) High_Damage_Branch += 45;
					High_Damage_Branch -= (9-temp_level)*7
					if (random_func_2(3+player, 100, true) < High_Damage_Branch || ai_target.was_parried){
						// Attacks when grounded and target at high damage, or target was parried
						// print("DoFunny: " + string(DoFunny))
						// print("Random: " + string(random_func_2(player+64,25,true)==0))
						// print("Distance: " + string(xdist > 100 && xdist < 500 && ydist < 200))
						if (DoFunny || random_func_2(player+10,get_player_stocks(player),true)==1) && random_func_2(player+64,10,true)==0 && xdist > 100 && xdist < 500 && ((ydist < 200 && ai_target.y<=y) || (ydist < 500 && ai_target.y>y)){
							DoAttack(AT_NSPECIAL);
						}
						else if dist > 40 || ai_target.state == PS_HITSTUN{
							if xdist > 90 && xdist < 250 && ((ydist < 300 && ai_target.y > y && ai_target.free) || (ydist < 60 && ai_target.y <= y)) && (random_func_2(player,3,true)==0 || (self == ai_target.dark_owner)){
								DoAttack(AT_FSTRONG);
							}
							else if xdist < 100 && ((ydist < 300 && ai_target.y > y && ai_target.free) || (ydist < 40 && ai_target.y <= y)){
								DoAttack(AT_DSTRONG);
							}
							else if xdist < 100 && ydist < 350 && ydist >= 70 && ai_target.y < y && (random_func_2(1+player,3,true)==0 || (self == ai_target.dark_owner)){
								DoAttack(AT_USTRONG);
							}
							else if xdist < 110 && ydist < 200 && ai_target.y < y + 40 && (random_func_2(player+4,3,true)==0 || (self == ai_target.dark_owner)){
								DoAttack(AT_USPECIAL);
							}
						}
						else { // Same as normal grounded attacks
							var KeepOrb = (dark_owner == self && get_player_damage(player) > get_player_damage(ai_target.player) && (x>stage_left&&x<stage_right));
							if xdist < 60 && ydist < 40 && random_func_2(player+35,2,true)==0{
						    	DoAttack(AT_DTILT);
						    }
						    else if xdist < 100 && ydist < 40 && random_func_2(player+1,2,true)==0{
						    	DoAttack(AT_FTILT);
						    }
						    else if xdist < 80 && ydist < 180 && ai_target.y < y + 40 && random_func_2(player,2,true)==0{
						    	DoAttack(AT_UTILT);
						    }
						    else if xdist < 325 && ydist < 60 && xdist > 50 && move_cooldown[AT_FSPECIAL] <= 1 && (!KeepOrb || random_func_2(player,20,true)==0){
						    	DoAttack(AT_FSPECIAL);
						    }
						    else if xdist < 150 && ydist < 70{
						    	DoAttack(AT_DATTACK);
							}
						    else if xdist > 60 && xdist < 200 && ydist < 50 && random_func_2(2+player,25,true)==0 {
						    	HoldAwayTarget(); // Attempt to backwards jump for BAIR??? I don't know if it works, but she does Bair pretty frequently, so I guess it does?
						    	jump_pressed = true; 
						    }
						}
					}
					else {
						var KeepOrb = (dark_owner == self && get_player_damage(player) > get_player_damage(ai_target.player) && (x>stage_left&&x<stage_right));
					    // Attacks when grounded
					    if xdist < 60 && ydist < 40{
					    	DoAttack(AT_DTILT);
					    }
					    else if xdist < 100 && ydist < 40 && random_func_2(player+1,2,true)==0{
					    	DoAttack(AT_FTILT);
					    }
					    else if xdist < 60 && ydist < 80 && random_func_2(player,2,true)==0{
					    	DoAttack(AT_UTILT);
					    }
					    else if xdist < 325 && ydist < 60 && xdist > 50 && move_cooldown[AT_FSPECIAL] <= 1 && (!KeepOrb || random_func_2(player,20,true)==0){
					    	DoAttack(AT_FSPECIAL);
					    }
					    else if xdist < 150 && ydist < 70{
					    	DoAttack(AT_DATTACK);
						}
					    else if xdist > 60 && xdist < 200 && ydist < 50 && random_func_2(2+player,25,true)==0 {
					    	HoldAwayTarget(); // Attempt to backwards jump for BAIR??? I don't know if it works, but she does Bair pretty frequently, so I guess it does?
					    	jump_pressed = true;
					    }
					}
				}
			}
			break;
	}
}
#define DI()
{
	if (ai_state == CS_RECOVER) || (state == PS_HITSTUN || state == PS_TUMBLE){
		if state==PS_PRATFALL{
			left_down = x>stage_mid;
			right_down = x<stage_mid;
		}
		else if get_player_damage(player) < 70 {
			if (x < stage_left + adjusted_recovery_offset)
			{
				left_down = false
				left_pressed = false;
				left_hard_down = false;
				right_down = true;
				right_pressed = true;
				right_hard_down = true;
				up_down = true;
				up_pressed = true;
			}
			else if (x > stage_right - adjusted_recovery_offset)
			{
				left_down = true
				left_pressed = true
				right_down = false;
				right_pressed = false;
				right_hard_down = false;
				up_down = true;
				up_pressed = true;
			}
			else {
				if ai_target.x > x {
					left_down = true
					left_pressed = true
					right_down = false;
					right_pressed = false;
					right_hard_down = false;
					up_down = true;
					up_pressed = true;
				}
				else {
					left_down = false
					left_pressed = false;
					left_hard_down = false;
					right_down = true;
					right_pressed = true;
					right_hard_down = true;
					up_down = true;
					up_pressed = true;
				}
			}
		}
		else {
		   // print("oldHSP: " + string(old_hsp))
		   // print("HSP: " + string(hsp))
			if (state == PS_HITSTUN && old_hsp == 0 && hsp == 0) {
				if x < stage_left - 150 || x > stage_right + 150 {
					CanChangeDIDirection = false;
					DIDirection = true;
				}
				if CanChangeDIDirection{
					CanChangeDIDirection = false;
					DIDirection = random_func_2(2+player,2,true)==0;
				}
				// print(DIDirection);
				if DIDirection{
					HoldTowardsStage();
				}
				else{
					HoldAwayTarget();
				}
			}
			else if (old_hsp > 0 && state == PS_HITSTUN) || (state == PS_HITSTUN && old_hsp == 0 && hsp >= 0) || (hsp >= 0 && state == PS_TUMBLE) {
			  //  print("sentright")
				
				left_down = true
				left_pressed = true
				right_down = false;
				right_pressed = false;
				up_down = true;
				up_pressed = true;
			}
			else if (old_hsp < 0 && state == PS_HITSTUN) || (state == PS_HITSTUN && old_hsp == 0 && hsp <= 0) || (hsp <= 0 && state == PS_TUMBLE) {
			  //  print("sentleft")
				left_down = false
				left_pressed = false;
				right_down = true;
				right_pressed = true;
				up_down = true;
				up_pressed = true;
			}
		}
	}
}
#define TryParry() // Made by Karu
var react = temp_level <= 8 ? round(temp_level/2)+random_func(10,round(temp_level*2),true) : 7+random_func(10,temp_level,true);
var reacting = react > 8; //try scale the reaction time with CPU level
if(ai_target.temp_level > 0 && temp_level > 6)reacting = true;
if(reacting && ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || window == 1)){
	with(ai_target){ //physical hitboxes
		if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
			var hb_window = 100;var hb_window_timer = 900;var hb_pos_x = 0;var hb_pos_y = 0;var hb_width = 0;var hb_height = 0;var hb_distance = 0;
			var above = y < other.y;var right = x > other.x;
// 			print_debug("Num Hitboxes: " + string(get_num_hitboxes(attack)))
// 			print_debug("Max Windows: " + string(get_attack_value(attack, AG_NUM_WINDOWS)))
			for (var hb=1; hb <= get_num_hitboxes(attack); hb+=1;) {
			 //   print_debug("Hitbox Value Window?: " + string(get_hitbox_value(attack, hb, HG_WINDOW)))
				if(get_hitbox_value(attack, hb, HG_WINDOW) <= hb_window && get_hitbox_value(attack, hb, HG_WINDOW) <= get_attack_value(attack, AG_NUM_WINDOWS)) && get_hitbox_value(attack, hb, HG_WINDOW_CREATION_FRAME) <= hb_window_timer{
					//check if you should actually care about this hitbox
					if(get_hitbox_value(attack, hb, HG_PRIORITY) > 0 && (get_hitbox_value(attack, hb, HG_DAMAGE) > 1 || get_hitbox_value(attack, hb, HG_HITSTUN_MULTIPLIER) >= 0
					|| get_hitbox_value(attack, hb, HG_BASE_KNOCKBACK) > 0 || get_hitbox_value(attack, hb, HG_KNOCKBACK_SCALING) > 0)){
						hb_window = get_hitbox_value(attack, hb, HG_WINDOW);
						hb_window_timer = get_hitbox_value(attack, hb, HG_WINDOW_CREATION_FRAME);
						hb_pos_x = x+(get_hitbox_value(attack, hb, HG_HITBOX_X)*spr_dir)+(right?(get_hitbox_value(attack, hb, HG_WIDTH)/2):-(get_hitbox_value(attack, hb, HG_WIDTH)/2));
						hb_pos_y = y+get_hitbox_value(attack, hb, HG_HITBOX_Y)+(above?(get_hitbox_value(attack, hb, HG_HEIGHT)/2):(-get_hitbox_value(attack, hb, HG_HEIGHT)/2));
						hb_width = get_hitbox_value(attack, hb, HG_WIDTH)
						hb_height = get_hitbox_value(attack, hb, HG_HEIGHT)
						hb_distance = ((hb_width + hb_height) / 2) + 10
					}
				}
			}
			// compensate?
			if(hb_window_timer <= 0 && hb_window <= get_attack_value(attack, AG_NUM_WINDOWS)){
			 //   print_debug("Compensate!")
				hb_window -= 1;
				if(hb_window > get_attack_value(attack, AG_NUM_WINDOWS) || hb_window >= 100 || hb_window < 1)hb_window = 1; //failsafe
				hb_window_timer = get_window_value(attack, hb_window, AG_WINDOW_LENGTH);
			}
// 			print_debug(hb_distance)
			var Cond1 = (window == hb_window && window_timer < hb_window_timer && window_timer > hb_window_timer-9)
			var Cond2 = (window == hb_window-1 && hb_window_timer < 5 && window_timer > get_window_value(attack, hb_window, AG_WINDOW_LENGTH)-round(hb_window_timer*1.5))
			var Cond3 = point_distance(hb_pos_x, hb_pos_y, other.x, other.y) < hb_distance
			var Cond4 = !smash_charging
			// print_debug("window: " + string(window))
			// print_debug("window_timer: " + string(window_timer))
			// print_debug("hb_window_timer: " + string(hb_window_timer))
// 			print_debug("---")
// 			print_debug("hb_window_timer-2: " + string(hb_window_timer-2))
// 			print_debug("hb_window_timer-8: " + string(hb_window_timer-8))
// 			print_debug("---")
			// print_debug("Condition1: " + string(Cond1))
			// print_debug("Condition2: " + string(Cond2))
			// print_debug("Condition3: " + string(Cond3))
			// print_debug("Condition4: " + string(Cond4))
			// print_debug("FullConditions: " + string((Cond1 || Cond2) && Cond3 && Cond4))
			// print_debug("-------")
			
// 			if((((window == hb_window && window_timer < hb_window_timer-2 && window_timer > hb_window_timer-8)
// 			|| (window == hb_window-1 && hb_window_timer < 5 && window_timer > get_window_value(attack, hb_window, AG_WINDOW_LENGTH)-round(hb_window_timer*1.5)))
// 			&& point_distance(hb_pos_x, hb_pos_y, other.x, other.y) < hb_distance) && !smash_charging){
			shield_pressed = false;
			if (Cond1 || Cond2) && Cond3 && Cond4{
				with(other){
					if(state != PS_JUMPSQUAT){
						shield_pressed = true;right_pressed = false;left_pressed = false;right_down = false;left_down = false;
						if parry_cooldown <= 0 && can_shield {
							set_state(PS_PARRY);
						}
						if(parry_cooldown > 0 && !free){right_down = random_func(1+player,2,true) == 0;left_down = !right_down;}
					}
				}
			}
		}
	}
	gets_hit_by_projectile_in_x_frames = 1000; // Made by Sanoi
	with(pHitBox)
	{
		// print_debug("???")
		if (player != other.player || (player == other.player && can_hit_self))
		{
			var enemy_projectile_exists = (player != other.player && type == 2) ? true : false;
		}	
		if (enemy_projectile_exists)
		{
			//print_debug("Projectile exists!");
			//var predicted_projectile_distance = point_distance(x + (hsp*3), y + (vsp*3), other.x + hsp, other.y-(other.char_height/2));
			//var projectile_distance = point_distance(x, y, other.x, other.y-(other.char_height/2));
			var y_distance = abs(y - other.y-(other.char_height/2));
			var x_distance = abs(x - other.x-(other.char_height/2));
			//print_debug("PROJECTILE Speed:(" + string(hsp) + "/" + string(vsp) + ")");
			if ((other.x < x && hsp < 0) || (other.x > x && hsp > 0))
			{
				var will_hit = false;
				for (var i = 0; i < 30; i += 1)
				{
					if (place_meeting(x + hsp * i * 1, y + vsp * i * 1, other))
					{
						will_hit = true;
						other.gets_hit_by_projectile_in_x_frames = other.gets_hit_by_projectile_in_x_frames > i ? i : other.gets_hit_by_projectile_in_x_frames;				
					}
				}
				if(will_hit && ((other.state_cat == SC_AIR_NEUTRAL || other.state_cat == SC_GROUND_NEUTRAL || other.state == PS_DASH || other.state == PS_DASH_START)))
				{
					with(other)
					{
						//print_debug("Blocking projectile hit in " + string(gets_hit_by_projectile_in_x_frames) + " frames.");
						up_down = false;
						up_pressed = false;
						left_down = false;
						left_pressed = false;
						right_down = false;
						right_pressed = false;
						jump_down = false;
						jump_pressed = false;				
						attack_down = false;			
						attack_pressed = false;			
						strong_pressed = false;			
						left_strong_pressed = false;			
						right_strong_pressed = false;			
						up_strong_pressed = false;			
						down_strong_pressed = false;
						
						if (gets_hit_by_projectile_in_x_frames < 10 && gets_hit_by_projectile_in_x_frames >= 6) && random_func_2(0+player,3,true) == 0
						{
							set_state(PS_ROLL_FORWARD)
							shield_pressed = true;
							// print_debug("Parry2.Roll")
						}
						else if (gets_hit_by_projectile_in_x_frames < 5)
						{
							set_state(PS_PARRY)
							shield_pressed = true;
							// print_debug("Parry2")
						}					
					}
				}
			}
		}
	}
}
#define Movement()
{
	if (get_training_cpu_action() == CPU_FIGHT)
	{
		target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2);
		joy_pad_idle = false;
		joy_dir = target_angle;
		Hitfall();
		Waveland();
		FallThrough();
		JumpEnemy();
	}
}
#define HoldTowardsStage()
{
	left_down = x > floor(room_width/2);
	right_down = !left_down;
}
#define KeepDistance()
if (x > stage_left + 40) && (x < stage_right - 40){
	if !CrouchToGraze{
		if (dist < 150 - clamp(get_player_damage(ai_target.player)*1.5,0,115)) RunTowardsTarget(false);
		if random_func_2(player+2,19-(temp_level*2),true)==0 && temp_level > 5{
			if (dist < 120 - clamp(get_player_damage(ai_target.player)*1.5,0,115)) WaveDash(false,false,true);
		}
		else if (dist > 400 - clamp(get_player_damage(ai_target.player)*1.5,0,115)) RunTowardsTarget(true);
	}
	else {
		down_down = true;
		if xdist > 200 HoldTowardsTarget();
		else if xdist < 150 HoldAwayTarget();
		if random_func_2(player+5,30 + ((9-temp_level)*3),true)==0 || xdist < 60 || gets_hit_by_projectile_in_x_frames != 1000{
			CrouchToGraze = false;
		}
	}
}
#define RunTowardsTarget(Towards)
if !ai_recovering && (ai_target.state != PS_DEAD && ai_target != self) {
	if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN) {
		Running = true;
	}
	else {
		Running = false;
	}
	// Running = true;
	if (ai_target.x < x && Towards) || (ai_target.x > x && !Towards){
		left_down = true;
		if (Running == false) {
			left_hard_pressed = true;
			// print("Dash")
		}
	}
	else{
		right_down = true;
		if (Running == false) {
			right_hard_pressed = true;
			// print("Dash")
		}
	}
}
#define HoldTowardsTarget()
{
	left_down = x > ai_target.x;
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
#define FaceTarget()
{
	if ai_target.x > x {
		spr_dir = 1;
	}
	else {
		spr_dir = -1;
	}
}
#define DoAttack(attack)
{
	NoInputs();
	print(attack)
	OwnAiAttackTimer = 0;
	switch (attack)
	{
		case AT_TAUNT:
			taunt_down = true;
			taunt_pressed = true;
			break;
		case AT_JAB:
			up_down = false;
			down_down = false;
			left_down = false;
			right_down = false;
			attack_pressed = true;
			attack_down = true;
			break;
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
			HoldTowardsTarget();
			Running = false;
			right_hard_pressed = false;
			left_hard_pressed = false;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_FAIR:
			HoldTowardsTarget(); //Does both Fair and Bair for simplicity
			down_down = false;
			up_down = false;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_BAIR:
			right_down = (spr_dir==-1);
			left_down = (spr_dir==1);
			down_down = false;
			up_down = false;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_DTILT:
			HoldTowardsTarget();
			down_down = true;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_DAIR:
			down_down = true;
			attack_pressed = true;
			attack_down = true;
			break;
		case AT_UTILT:
			HoldTowardsTarget();
			up_down = true;
			attack_pressed = true;
			attack_down = true;
			break;
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
			attack_down = false;
			attack_pressed = false;
			special_pressed = true;
			special_down = true;
			break;
		case AT_FSPECIAL:
			HoldTowardsTarget();
			up_down = false;
			down_down = false;
			special_pressed = true;
			special_down = true;
			break;
		case AT_DSPECIAL:
			down_down = true;
			up_down = false;
			special_pressed = true;
			special_down = true;
			break;
		case AT_USPECIAL:
			up_down = true;
			down_down = false;
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
	ai_attack_timer = 0;
}
#define JumpEnemy()
{
	if (ai_target.y < y-68)
	{
		if (vsp > -1) jump_pressed = true;
		if ((ai_target.y < y-90)) jump_down = true;
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
#define WaveDash(RandomDir,Toward,Always)
{
	if !free && (state_cat == SC_GROUND_NEUTRAL || state == PS_WALK || state == PS_WALK_TURN || state == PS_DASH || state == PS_DASH_START) && !(state == PS_AIR_DODGE || state == PS_WAVELAND) && (random_func_2(0+player,180 - (temp_level * 12) - (RandomDir * 50),true) == 0 || Always) && (!free && can_shield && abs(ai_target.x-x)>10 && (position_meeting(x,y+1,asset_get("par_block")) || position_meeting(x,y+1,asset_get("par_jumpthrough"))))
	{
		joy_pad_idle = false;
		if RandomDir{
			joy_dir = 270+sign((random_func_2(50+player,2,true) *2) -1)*90;
			if joy_dir == 180{
				left_down = true;
				right_down = false;
			}
			else{
				left_down = false;
				right_down = true;
			}
			joy_pad_idle = false;
			// print(random_func_2(50,2,true))
			// print(sign((random_func_2(50,2,true) *2) -1)*90)
		}
		else{
			
			var LorR = 1
			if (ai_target.x < x) LorR = -1;
			joy_dir = 270-sign(LorR)*(Toward?90:-90);
			
			if joy_dir == 180{
				left_down = true;
				right_down = false;
			}
			else{
				left_down = false;
				right_down = true;
			}
			joy_pad_idle = false;
		}
		// print(joy_dir)
		set_state(PS_AIR_DODGE);
		// print(joy_dir)
	}
}
#define Waveland()
{
	if (free && can_shield && has_airdodge && vsp < 0 && abs(ai_target.x-x)>80 && (position_meeting(x,y-1,asset_get("par_jumpthrough")) || position_meeting(x,y,asset_get("par_jumpthrough"))))
	{
		shield_pressed = true;
		waveland = true;
	}
	else if (waveland)
	{
		waveland = false;
		shield_pressed = true;
		joy_pad_idle = false;
		joy_dir = 270+sign(ai_target.x-x)*90;
		left_down = true;
		right_down = true;
	}
}
#define cpu_attack(attack, turn_to_target)
	set_attack(attack);
	draw_y = 0;
	if(turn_to_target && ai_target != self)spr_dir = x < ai_target.x ? 1 : -1;
#define NoInputs()
	// Nothing Held
	up_down = false;
	down_down = false;
	right_down = false;
	left_down = false;
	up_hard_down = false;
	down_hard_down = false;
	right_hard_down = false;
	left_hard_down = false;
	jump_down = false;
	attack_down = false;
	special_down = false;
	shield_down = false;
	taunt_down = false;
	strong_down = false;
	tap_jump_down = false;
	up_strong_down = false;
	right_strong_down = false;
	down_strong_down = false;
	left_strong_down = false;
	up_stick_down = false;
	right_stick_down = false;
	down_stick_down = false;
	left_stick_down = false;
	// Nothing Pressed
	up_pressed = false;
	down_pressed = false;
	right_pressed = false;
	left_pressed = false;
	up_hard_pressed = false;
	down_hard_pressed = false;
	right_hard_pressed = false;
	left_hard_pressed = false;
	jump_pressed = false;
	attack_pressed = false;
	special_pressed = false;
	shield_pressed = false;
	taunt_pressed = false;
	strong_pressed = false;
	tap_jump_pressed = false;
	up_strong_pressed = false;
	right_strong_pressed = false;
	down_strong_pressed = false;
	left_strong_pressed = false;
	up_stick_pressed = false;
	right_stick_pressed = false;
	down_stick_pressed = false;
	left_stick_pressed = false;