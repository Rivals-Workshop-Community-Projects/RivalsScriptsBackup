//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
		// if(window == 1 && window_timer == 1){
		// 	clear_button_buffer(PC_ATTACK_PRESSED);
		// }
		break;
	case AT_FTILT:
		if(job == "clerk"){
			set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 2);
			set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 2);
			set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 0);
			set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 3);
			set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
			set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
		} else {
			reset_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH);
			reset_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH);
			reset_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME);
			reset_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH);
			reset_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH);
			reset_hitbox_value(AT_FTILT, 1, HG_ANGLE);
		}
	break;
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		if(job == "mechanic"){
			set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 10);
			set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .35);
			set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, .85);
			set_hitbox_value(AT_DTILT, 1, HG_DRIFT_MULTIPLIER, 1.5);
		} else {
			reset_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER);
			reset_hitbox_value(AT_DTILT, 1, HG_DRIFT_MULTIPLIER);
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		if(job == "chef"){
			if(has_hit){
				set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
			} else {
				reset_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH);
			}
		}
		if(window == 1 && window_timer == 1){
			if(job == "chef"){
				set_num_hitboxes(AT_UTILT, 5);
				set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 85);
				set_hitbox_value(AT_UTILT, 3, HG_TECHABLE, 2);
				set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.4);
			} else {
				reset_hitbox_value(AT_UTILT, 3, HG_ANGLE);
				reset_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING);
				reset_hitbox_value(AT_UTILT, 3, HG_HITSTUN_MULTIPLIER);
				reset_hitbox_value(AT_UTILT, 3, HG_TECHABLE);
				reset_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH);
				set_num_hitboxes(AT_UTILT, 3);
			}
		}
		break;
		
		case AT_DATTACK:
			if(window == 1 && window_timer == 1){
				attack_end();
			}
			if(job == "mechanic"){
				if(has_hit){
					can_attack = true;
					can_strong = true;
					can_jump = true;
				}
				set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 55);
				set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 5);
				set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .4);
				// set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
				// set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .7);
				// set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
				if(has_hit_player && up_strong_pressed){
					attack = AT_USTRONG;
					window = 2;
					window_timer = 0;
					destroy_hitboxes();
					reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
					reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
					reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
					
					reset_hitbox_value(AT_USTRONG, 2, HG_ANGLE);
					reset_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK);
					reset_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING);
				}
			} else {
				reset_hitbox_value(AT_DATTACK, 1, HG_ANGLE);
				reset_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING);
				reset_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX);
			}
			break;
			
	case AT_NAIR:
		if(window == 1 && window_timer == 1){
			if(job == "clerk"){
			} else {
			}
		}
		
	case AT_FAIR:
		if(window == 1 && window_timer == 1){
			if(job == "chef"){
				set_num_hitboxes(AT_FAIR, 4);
			} else {
				set_num_hitboxes(AT_FAIR, 3);
			}
		}
	case AT_UAIR:
		if(job == "office"){
			set_num_hitboxes(AT_UAIR, 5);
			set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 5);
		} else {
			set_num_hitboxes(AT_UAIR, 3);
			reset_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT);
		}
		break;
		
	case AT_BAIR:
		if(job == "mechanic"){
			set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .9);
			set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -45);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -27);
			set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 40);
			set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 40);
		} else {
			reset_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_BAIR, 2, HG_LIFETIME);
			reset_hitbox_value(AT_BAIR, 2, HG_HITBOX_X);
			reset_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y);
			reset_hitbox_value(AT_BAIR, 2, HG_WIDTH);
			reset_hitbox_value(AT_BAIR, 2, HG_HEIGHT);
		}
		break;
		
	case AT_DAIR:
		if(window == 1 && window_timer == 1){
			if(job == "chef"){
				set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
				set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
				set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 180);
			} else {
				reset_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR);
				reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
				reset_hitbox_value(AT_DAIR, 2, HG_LIFETIME);
			}
		}
		break;
	case AT_FSTRONG:
		//projectile goes farther by charging
		set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 7 + strong_charge/10);
		if(job == "office"){
			set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
		} else {
			reset_hitbox_value(AT_FSTRONG, 1, HG_ANGLE);
		}
		move_cooldown[AT_FSTRONG] = 30;
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	case AT_USTRONG:
		if(window == 1 && window_timer == 1){
			reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
			reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
			
			reset_hitbox_value(AT_USTRONG, 2, HG_ANGLE);
			reset_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING);
		}
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		if(job == "chef"){
			set_num_hitboxes(AT_USTRONG, 3);
		} else {
			set_num_hitboxes(AT_USTRONG, 2);
		}
		break;
	case AT_DSTRONG:
		if(window == 1 && window_timer == phone_window_end){
			soft_armor = 8;
		}
		if(window == 1 && window_timer == phone_window_end - 1){
			soft_armor += .05;
		}
		if(window == 3 && window_timer == 3){
			soft_armor = 0;
		}
		if(job == "clerk"){
			set_num_hitboxes(AT_DSTRONG, 3);
			if(window == 2 && window_timer == phone_window_end){
				spawn_hit_fx(x, y-30, 155);
				sound_play(asset_get("sfx_kragg_rock_shatter"));
			}
		} else {
			set_num_hitboxes(AT_DSTRONG, 2);
		}
		break;
	case AT_TAUNT:
	move_cooldown[AT_TAUNT] = 2;
	if(window_timer > 55){
		iasa_script();
	}
	break;

// if (attack == AT_FSTRONG)
// {
// 	var temp_distance = (strong_charge * 2);
// 	temp_distance = (strong_charge - temp_distance);
// 	var plan_distance = (temp_distance / 4.4);
	
// 	if (plan_distance >= 8)
// 	{
		
// 		set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 8);
// 	}
// 	else
// 	{
// 		if (plan_distance <= 15)
// 		{
			
// 			set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 15);
// 		}
// 		else
// 		{
			
// 			set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_VSPEED, plan_distance);
// 		}
// 	}
// }

	
	case AT_FSPECIAL:
		if(job == "mechanic"){
			set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 60);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
			set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .02);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.2);
			set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
		} else {
			reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT);
		}
		
		move_cooldown[AT_FSPECIAL] = 120;//500
		can_move = false;
		can_fast_fall = false;
		switch(window){
			case 1:
				hsp *= 0.5;
				vsp *= 0.5;
				if window_timer == phone_window_end{
					hsp = 0.5 * spr_dir;
				}
				break;
			case 2:
				vsp = 0;
				can_wall_jump = true;
				if (special_pressed){
					window = 3;
					window_timer = 0;
					destroy_hitboxes();
				}
				break;
			case 3:
				hsp *= 0.5;
				// vsp *= 0.5;
				can_wall_jump = true;
				break;
		}
		break;
	
	case AT_NSPECIAL:
		if(window == 1 && window_timer == 1 && job_timer > 1){
			job_timer = 0;
			current_job = 1;
			sound_play(asset_get("sfx_abyss_despawn"));
		}
		if(window == 4 && window_timer == 1){
			if(current_job != 1){
				current_job = 1
			} else {
				current_job = previous_job + 1;
				job_timer = 720;
			}
		}		
		if(current_job > 5){
			current_job = 2;
		}
		break;
	
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		switch(window){
			case 1: // startup
				hsp = 0;
				vsp = 0;
				if window_timer == phone_window_end{
					vsp = -5;
				}
				break;
			case 2: // flight
				if (!joy_pad_idle){
					hsp += lengthdir_x(1, joy_dir);
					vsp += lengthdir_y(1, joy_dir);
				} else {
					hsp *= .6;
					vsp *= .6;
				}
				var fly_dir = point_direction(0,0,hsp,vsp);
				var fly_dist = point_distance(0,0,hsp,vsp);
				var max_speed = 10; // 12
				if (fly_dist > max_speed){
					hsp = lengthdir_x(max_speed, fly_dir);
					vsp = lengthdir_y(max_speed, fly_dir);
				}
				break;
			case 3: // atk startup
			case 4: // atk active
			case 5: // endlag
				// hsp = 0;
				// vsp = 0;
				break;
				
		}
		
		if(job == "clerk"){
			set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 17);
			set_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .85);
			set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
			set_num_hitboxes(AT_USPECIAL, 6);
		} else {
			reset_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME);
			reset_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK);
			reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME);
			reset_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING);
			set_num_hitboxes(AT_USPECIAL, 2);
		}
		break;
		
		case AT_DSPECIAL:
			can_fast_fall = false;
			if(window == 1 && window_timer == phone_window_end - 3){
				invincible = true;
                invince_time = 23;
                set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
                counter_was_reset = false;
			}
			if(window == 2 && invincible){
				can_move = false;
				if(vsp > 2){
					vsp = 1;
				}
				if(place_meeting(x, y, asset_get("pHitBox"))){
	                var trig_hbox = instance_place(x,y, asset_get("pHitBox"));
	                counter_target = trig_hbox.player_id;
 if((trig_hbox.type == 1 && trig_hbox.kb_scale <= .2 && trig_hbox.kb_value <= 6) || (trig_hbox.type == 2 && trig_hbox.kb_scale <= .1 && trig_hbox.kb_value < 4)){
	                	var counter_reset = true;
	                } else {
	                	var counter_reset = false;
	                }
	                if(trig_hbox.player != player && !counter_reset){
	                	if(x > counter_target.x){
	                		spr_dir = -1;
	                	} else {
	                		spr_dir = 1;
	                	}
	                	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
	                	window = 3;
	                	window_timer = 0;
	                	create_hitbox(AT_DSPECIAL, 2, counter_target.x, counter_target.y-20);
						if(job == "office"){
							set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, trig_hbox.damage * 2);
							set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, trig_hbox.kb_value + 3);
							set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, trig_hbox.kb_scale + .3);
						} else {
							set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, trig_hbox.damage * 1.5);
							set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, trig_hbox.kb_value + 2);
							set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, trig_hbox.kb_scale + .2);
						}
						set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, trig_hbox.hitpause);
						set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, trig_hbox.hitpause_growth);
						if(trig_hbox.hit_effect < 350){
							set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, trig_hbox.hit_effect);
						} else {
							set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 197);
						}
						if(trig_hbox.effect <= 16 && trig_hbox.effect != 14 && trig_hbox.effect != 2 && trig_hbox.effect != 3){
							set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, trig_hbox.effect);
						} else {
							set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 0);
						}
						set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, trig_hbox.kb_angle);
						var temp_flipper = trig_hbox.hit_flipper;
						if(temp_flipper == 6 || temp_flipper == 3 || temp_flipper == 10){
							temp_flipper = 0;
						}
						if(temp_flipper == 7 || temp_flipper == 4){
							temp_flipper = 5;
						}
						if(temp_flipper == 9){
							temp_flipper = 2;
						}
						if(temp_flipper == 8){
							temp_flipper = 1;
						}
						set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, temp_flipper);
						set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, trig_hbox.extra_hitpause);
						set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, trig_hbox.camera_shake);
						set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, trig_hbox.can_tech);
						set_hitbox_value(AT_DSPECIAL, 1, HG_FORCE_FLINCH, trig_hbox.force_flinch);
					}
					if(counter_reset && !counter_was_reset){
						window_timer = 0;
						invince_time = 20;
						counter_was_reset = true;
					}
				}
			}
			if(window == 3){
				can_move = false;
				fall_through = true;
				hsp = lengthdir_x(point_distance(x,y,counter_target.x,counter_target.y)/20,point_direction(x,y,counter_target.x,counter_target.y));
				vsp = lengthdir_y(point_distance(x,y,counter_target.x,counter_target.y)/10,point_direction(x,y,counter_target.x,counter_target.y));
				x+=hsp;
				y+=vsp;
				if(point_distance(x,y,counter_target.x,counter_target.y) < 20 && abs(y) - abs(counter_target.y) < 10){
					window = 4;
					window_timer = 0;
				}
			}
			if(window > 2 && has_hit_player == false){
				invincible = true;
				invince_time++;
			}
			if(window == 4){
				vsp = 0;
				hsp = 0;
			}
		if(window == 2 && window_timer == phone_window_end){
			move_cooldown[AT_DSPECIAL] = 30;//500
		}
		if(window == 4 && window_timer == phone_window_end){
			move_cooldown[AT_DSPECIAL] = 60;//500
		}
		break;

}

//counter code	
// if (attack == AT_DSPECIAL){
//     if (window == 2){
//         if (special_pressed){
//             window = 3;
//             window_timer = 0;
//             destroy_hitboxes();
//         }
//     }
    
// }

if(current_job != 1){
	previous_job = current_job;
}


#define beam_clash_logic

if !beam_clash_buddy.doing_goku_beam{
	beam_clash_buddy.beam_clash_buddy = noone;
	beam_clash_buddy = noone;
}
else{
	if beam_clash_timer >= beam_clash_timer_max{
		var winner = noone;
		if beam_length > beam_clash_buddy.beam_length{
			winner = self;
		}
		if beam_length < beam_clash_buddy.beam_length{
			winner = beam_clash_buddy;
		}
		if winner == self{
			window = 5;
			window_timer = 0;
		}
		else{
			beam_juice = 0;
		}
		if winner == beam_clash_buddy{
			
		}
		else{
			beam_clash_buddy.beam_juice = 0;
		}
	}
	else{
		beam_clash_timer++;
		if special_pressed{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			beam_length += 32;
			beam_clash_buddy.beam_length -= 32;
			beam_juice = min(beam_juice + 20, beam_juice_max);
			beam_clash_buddy.beam_juice = max(beam_clash_buddy.beam_juice - 10, 10);
			sound_play(sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
		}
	}
}



#define spawn_nspecial_hitbox(num)

if hitpause && num == 1 return;

attack_end();

var x1 = 72;
var y1 = -20 + lengthdir_y(32, beam_angle);

switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle))){
	case 1: // down
		x1 = 74;
		y1 = -6;
		break;
	case -1: // up
		x1 = 60;
		y1 = -72;
		break;
}

// x1 += lengthdir_x(beam_length - 32 * !has_hit, beam_angle) * spr_dir;
// y1 += lengthdir_y(beam_length - 32 * !has_hit, beam_angle);

var cur_x = x1;
var cur_y = y1;

set_hitbox_value(attack, num, HG_WIDTH, 64 + 16 * has_hit);
set_hitbox_value(attack, num, HG_HEIGHT, 64 + 16 * has_hit);

var ld_x = lengthdir_x(32, beam_angle) * spr_dir;
var ld_y = lengthdir_y(32, beam_angle);

for (var i = 0; i * 32 < beam_length && i < 32 && cur_x == clamp(cur_x, phone_blastzone_l, phone_blastzone_r); i++){
	if i % 3 == 0 || (i+1) * 32 >= beam_length{
		if (i+1) * 32 >= beam_length{
			set_hitbox_value(attack, num, HG_WIDTH, 64 + 64 * has_hit);
			set_hitbox_value(attack, num, HG_HEIGHT, 64 + 64 * has_hit);
		}
		beam_newest_hbox = create_hitbox(attack, num, round(x + cur_x * spr_dir), round(y + cur_y));
		beam_newest_hbox.x_pos = round(cur_x * spr_dir);
		beam_newest_hbox.y_pos = round(cur_y);
	}
	cur_x += ld_x;
	cur_y += ld_y;
}



#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


