//update.gml

//phone
muno_event_type = 1;
user_event(14);

//Sleep Kirby Hat Offsets
if (free){
	//Air Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = -12; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
} else if (!free){
	//Grounded Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = -10; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
}

if (free){
	monkey_ball_spin_mult = 1.2;
	monkey_ball_air_offset_adjust = 6;
	
	nspecial_started_on_ground = false;
} else if (!free){
	monkey_ball_spin_mult = 1;
	monkey_ball_air_offset_adjust = 0;
}
//print("can tech: " + string(can_tech))
//print("can wall tech: " + string(can_wall_tech))

if (instance_exists(monkeyBall)){
	if (!has_rune("F")){
		monkeyBall.infinite_lifetime_rune = false;
	} else if (has_rune("F")){
		monkeyBall.infinite_lifetime_rune = true;
	}
}

if (inside_monkey_ball){

	if (has_rune("K")){
		soft_armor = 6;
	}

	//helltroll
	can_tech = false;
	can_wall_tech = false;

	monkey_ball_onstage = false;

	monkey_ball_can_be_rode = false;
	
	if (free){
		//can_fast_fall = false;
	}
	set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt_inside"));
	if (free){
		sprite_change_offset("monkey_ball_hurt", 43, 73);
	} else {
		sprite_change_offset("monkey_ball_hurt", 43, 79);
	}
	hurtbox_spr = sprite_get("monkey_ball_hurt");
	crouchbox_spr = sprite_get("monkey_ball_hurt");
	set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("monkey_ball_hurt"));
	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("monkey_ball_hurt"));
	set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("monkey_ball_hurt"));
	
	//movement values lol
	initial_dash_speed = 8;
	dash_speed = 7;
	max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
	leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
	air_friction = .04;
	
	hitstun_grav = .5;
	ground_friction = .25;
	dash_stop_percent = .75;
	moonwalk_accel = 1.5;
	
	wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	wave_friction = .0; //grounded deceleration when wavelanding
	
	uspecial_can_glide = true;
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -36);
	set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
	set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 80);
	set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

	set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 16);
	set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
	set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -36);
	set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 80);
	set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 80);
	set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
	set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 80);
	set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 0);
	set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
	
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -12.5);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
						
	set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 4);
} else {
	
	timer_for_dash_anim = 0;
	
	if (instance_exists(monkeyBall)){
		monkey_ball_onstage = true;
		if (!place_meeting(x, y, monkeyBall)){
			monkey_ball_can_be_rode = false;
		}
	}
	
	set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
	hurtbox_spr = sprite_get("aiai_hurtbox");
	crouchbox_spr = sprite_get("aiai_crouchbox");
	set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("aiai_hurtbox"));
	
	//movement values lol
	initial_dash_speed = 7;
	dash_speed = 6;
	max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
	leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
	air_friction = .02;
	
	hitstun_grav = .5;
	ground_friction = .5;
	dash_stop_percent = .35;
	moonwalk_accel = 1.4;
	
	wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	wave_friction = .05; //grounded deceleration when wavelanding
	
	uspecial_can_glide = false;
	
	set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("aiai_hurtbox"));
	
	//Rune H
	if (has_rune("H") && state_cat != SC_HITSTUN
	&& state != PS_ATTACK_AIR
	&& state != PS_ATTACK_GROUND
	&& state != PS_DEAD
	&& state != PS_SPAWN
	&& state != PS_RESPAWN){
		//print("has rune h")
		if(special_pressed && shield_down){
			//print("mario")
			if (instance_exists(monkeyBall)){
				monkey_ball_rune_did_teleport = true;
				monkey_ball_onstage = false;
				inside_monkey_ball = true;
				spawn_hit_fx(x,y - 24,304);
				x = monkeyBall.x
				y = monkeyBall.y + 30
				hsp = monkeyBall.hsp
				vsp = monkeyBall.vsp
				spawn_hit_fx(x,y,304);
				monkey_ball_tilt = monkeyBall.cur_rot/1.25
				clear_button_buffer(PC_SPECIAL_PRESSED);
				clear_button_buffer(PC_SHIELD_PRESSED);
				enterMonkeyBall(4);
				set_state(PS_IDLE_AIR);
				instance_destroy(monkeyBall);
				//sound_play(sfx_monkey_ball_2_pop);
				sound_play(sfx_monkey_ball_2_warp);
				monkey_ball_can_be_rode = false;
			}
		}
	}
}

if (monkey_ball_tilt > 287.5 || monkey_ball_tilt < -287.5){//>
	monkey_ball_tilt = 0;
}

if (inside_monkey_ball){
	if (free){
		monkey_ball_wear_old_vsp = vsp
	}
	if (state == PS_DASH_START){
		if (spr_dir == 1){
			if (hsp < 0){
				monkey_ball_tilt = monkey_ball_tilt - 10;
				if (monkey_ball_tilt_counter < 10){
					monkey_ball_tilt_counter++;
				} else {
					monkey_ball_tilt_counter = 10;
				}
			}
		}
		if (spr_dir == -1){
			if (hsp > 0){
				monkey_ball_tilt = monkey_ball_tilt + 10;
				if (monkey_ball_tilt_counter > -10){
					monkey_ball_tilt_counter--;
				} else {
					monkey_ball_tilt_counter = -10;
				}
			}
		}
	}
		if (right_down && spr_dir == 1 && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_CROUCH){
			if (monkey_ball_tilt_counter < 10){//>
				monkey_ball_tilt_counter++;
			}
			monkey_ball_tilt = monkey_ball_tilt - (((0.5 * monkey_ball_tilt_counter) * monkey_ball_spin_mult * monkey_ball_spin_dash_mult) * monkey_ball_spin_dash_mult)
			//Turning the ball during dash turn.
			if (monkey_ball_tilt_counter < 0){
				if (monkey_ball_tilt_counter < -10){//>
					monkey_ball_tilt_counter = monkey_ball_tilt_counter + 2
				}
				monkey_ball_tilt = monkey_ball_tilt + (((1 * monkey_ball_tilt_counter) * monkey_ball_spin_mult) * monkey_ball_spin_dash_mult)
			}			
		} else if (left_down && spr_dir == -1 && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_CROUCH){
			if (monkey_ball_tilt_counter > -10){//>
				monkey_ball_tilt_counter--;
			}
			monkey_ball_tilt = monkey_ball_tilt - (((0.5 * monkey_ball_tilt_counter) * monkey_ball_spin_mult * monkey_ball_spin_dash_mult) * monkey_ball_spin_dash_mult)
			//Turning the ball during dash turn.
			if (monkey_ball_tilt_counter > 0){
				if (monkey_ball_tilt_counter > -10){//>
					monkey_ball_tilt_counter = monkey_ball_tilt_counter - 2
				}
				monkey_ball_tilt = monkey_ball_tilt - (((1 * monkey_ball_tilt_counter) * monkey_ball_spin_mult * monkey_ball_spin_dash_mult) * monkey_ball_spin_dash_mult)
			}
		}
	

	if (joy_pad_idle == true || (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
		if (monkey_ball_tilt_counter != 0){
			if (monkey_ball_tilt_counter > 0){
				monkey_ball_tilt_counter = monkey_ball_tilt_counter - 0.25
				monkey_ball_tilt = monkey_ball_tilt - (((0.125/0.25) * monkey_ball_tilt_counter) * monkey_ball_spin_mult)
			} else if (monkey_ball_tilt_counter < 0){//>
				monkey_ball_tilt_counter = monkey_ball_tilt_counter + 0.25
				monkey_ball_tilt = monkey_ball_tilt + (((0.125/0.25) * monkey_ball_tilt_counter*-1) * monkey_ball_spin_mult)
			}
		}
	}
}

if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP || state == PS_DASH_TURN){
	monkey_ball_spin_dash_mult = 1.5;
} else {
	monkey_ball_spin_dash_mult = 1;
}

switch (state){
	case PS_SPAWN:
		//
		break;
	case PS_IDLE:
		//
		break;
	case PS_CROUCH:
		//
		break;
	case PS_WALK:
		//
		break;
	case PS_DASH_START:
		//
		break;
	case PS_DASH_STOP:
		//
		break;
	case PS_DASH_TURN:
		//
		break;
	case PS_JUMPSQUAT:
		//
		break;
	case PS_FIRST_JUMP:
		//
		break;
	case PS_DOUBLE_JUMP:
		//
		break;
	case PS_WALL_JUMP:
		//
		break;
	case PS_LAND:
		/*
		if (inside_monkey_ball){
			if (monkey_ball_wear_old_vsp > 7.5){
				clear_button_buffer( PC_JUMP_PRESSED );
				set_state( PS_IDLE_AIR );
				y = y - 2
				vsp = monkey_ball_wear_old_vsp*-0.6
				sound_play(sfx_monkey_ball_2_ball_bounce);
			}
		}
		*/
		break;
	case PS_LANDING_LAG:
		//
		break;
	case PS_AIR_DODGE:
		//	
		break;
	case PS_WAVELAND:
		//
		break;
	case PS_PARRY:
		//
		break;
}

//--------------------------------------------
//Entering Monkey Ball Function
#define enterMonkeyBall(type)
if (monkey_ball_onstage == false){
	if (type == 1){
		//nspec
		inside_monkey_ball = true;
		window = 3
		window_timer = 0
		sound_play(sfx_monkey_ball_2_ball_open);
	} else if (type == 2){
		//getting into the ball from an attack, like fspec or uspec
		inside_monkey_ball = true;
		sound_play(sfx_monkey_ball_2_ball_open);
	}
} else if (monkey_ball_onstage == true){//i hate coding
	if (type == 3){
		//getting into the ball by holding nspecial when next to it. copies ball vsp and what not.
		monkey_ball_onstage = false;
		vsp = monkeyBall.vsp*0.5
		hsp = monkeyBall.hsp
		monkey_ball_tilt = monkeyBall.cur_rot/1.25
		//print(monkeyBall.cur_rot/1.25)
		/*
		with (monkeyBall){
			player_id.hsp = hsp
			player_id.vsp = vsp
			player_id.monkey_ball_onstage = false;
			player_id.monkeyBall = noone;
			instance_destroy();
		}
		*/
		monkeyBall.monkey_ball_hit_cooldown = 0;
		instance_destroy(monkeyBall);
		inside_monkey_ball = true;
		window = 3
		window_timer = 0
		sound_play(sfx_monkey_ball_2_ball_open);
	}
	if (type == 4){
		//specials
		monkey_ball_onstage = false;
		spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
		/*
		with (monkeyBall){
			player_id.hsp = hsp
			player_id.vsp = vsp
			player_id.monkey_ball_onstage = false;
			player_id.monkeyBall = noone;
			instance_destroy();
		}
		*/
		monkeyBall.monkey_ball_hit_cooldown = 0;
		instance_destroy(monkeyBall);
		inside_monkey_ball = true;
		sound_play(sfx_monkey_ball_2_pop);
	}
	if (type == 5){
		//specials
		monkey_ball_onstage = false;
		//spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
		/*
		with (monkeyBall){
			player_id.hsp = hsp
			player_id.vsp = vsp
			player_id.monkey_ball_onstage = false;
			player_id.monkeyBall = noone;
			instance_destroy();
		}
		*/
		monkeyBall.monkey_ball_hit_cooldown = 0;
		instance_destroy(monkeyBall);
		inside_monkey_ball = true;
		//sound_play(sfx_monkey_ball_2_pop);
	}
}