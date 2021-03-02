var oldcolor = recolor;
recolor = 0;

var can_bake = bake_time == -1 && window_timer == 1 && get_window_value(attack,window,AG_WINDOW_TYPE) == 69

if bake_mode && !bake_strong {
	bake_strong = 1;
	//print_debug("Baking finished! bake_mode is now "+string(bake_mode));
}



var strong_walk_speed = 2

if attack == AT_BAIR /*&& has_rune("K") */&& attack_down && window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) {
			smash_charging = true;
			strong_down = 1;
}

if attack == AT_UTILT && get_window_value(attack, window, AG_WINDOW_CANCEL_TYPE) == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME) { 
if (window_attack_pressed or attack_down or up_stick_down) {
	window++;
	window_timer = 0;
} else if !up_down or window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) {
	window = 7;
	window_timer = 0;
}
}
if attack == AT_FSTRONG {
	if window == 5 && !hitpause {
		set_attack_value(attack, AG_CATEGORY, 2)
	//	x += 52*spr_dir;

	}

}
if attack == AT_USTRONG {
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 101 && get_window_value(attack,window,AG_WINDOW_LENGTH) == window_timer {
		spr_dir *= -1;
	}

}

if attack == AT_TAUNT {
	switch(get_window_value(attack,window,AG_WINDOW_TYPE)) {
		case 102:
			if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)-1 {
				window--;
				window_timer = 0;
			}
		case 101:
			if attack_pressed or special_pressed or down_strong_pressed or up_strong_pressed or left_strong_pressed or right_strong_pressed {
				window = 5;
				window_timer = 0;
				sound_play(asset_get("sfx_birdclap"), 0, noone, 0.7, 1.2)
			}
			if state_timer >= 60 && !taunt_down {
				window = 4;
				window_timer = 0;
			}
		break;
		case 103:
			if (attack_pressed or special_pressed or down_strong_pressed or up_strong_pressed or left_strong_pressed or right_strong_pressed) && bake_mode {
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_SPECIAL_PRESSED);
				window = 5;
				window_timer = 0;
				sound_play(asset_get("sfx_birdclap"), 0, noone, 0.7, 1.2)
			}
			if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH){
				if taunt_down {
				window = 3;
				window_timer = get_window_value(attack,window,AG_WINDOW_LENGTH)-2;
				} else {
				window = 4;
				window_timer = 0;
				}
			}			
		break;
	}
}


if attack == AT_FSTRONG_2 {
	if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
		attack = AT_FSTRONG;
	
		//if is_turning spr_dir *= -1;
		window = get_attack_value(attack,AG_STRONG_CHARGE_WINDOW);
		window_timer = get_window_value(attack,window,AG_WINDOW_LENGTH)-1;
		
	}
}

if attack == AT_NSPECIAL {
	
	if window_timer == 1 && !hitpause && get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
		self_effect = effect;
		user_event(0);
		vsp = min(vsp, 4)
		var h = spawn_hit_fx(x,y,hfx[18]);
		h.depth = depth-3;
	}
	if window_timer == 1 && get_window_value(attack,window,AG_WINDOW_TYPE) == 101 && self_effect > 0 {
			var h = spawn_hit_fx(x, y - (char_height/2), hfx[8+self_effect]);	
			h.depth = depth-3;
	}
	if window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) {
		strong_down = 0;
	}
}
if attack == AT_NSPECIAL_2 {
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
		if window_timer == 1 {
			switch(effect) {
				default: //fruit
				hsp = spr_dir * 12;
				vsp = -6;
				break;
				case 2: //flour
				vsp = -11;
				hsp = 0;
				break;
				case 3: //butter
				vsp = 13;
				hsp = 0;
				break;
				case 4: //sugar
				hsp = spr_dir * -12;
				vsp = -6;
				break;

			}
			self_effect = 0;
		}
		can_attack = 1;
	}
}

/*
if attack == AT_NSPECIAL {


	strong_charge = floor(min(bake_time/bake_max, 1) * 150);
	
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
		if special_pressed {
			clear_button_buffer(PC_SPECIAL_PRESSED)
			effect++;
			sound_play(asset_get("sfx_shop_move"))
			if effect >= 5 {
				effect = 1;
			}
			window = 2;
			window_timer = 2;
		}
	}
	
	if window == 3 {
		if !bake_strong {
		char_height = 72;
		}
		can_move = 1;
		if left_hard_pressed spr_dir = -1;
		if right_hard_pressed spr_dir = 1;
		
		if !special_down or bake_time >= bake_max {
			window++;
			window_timer = 0;
		} else {
			window_timer = window_timer mod get_window_value(attack,window,AG_WINDOW_LENGTH)
		}
		
		//if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)-1 {
			
			if (up_strong_down or down_strong_down or left_strong_down or right_strong_down) {
					var d = floor((point_direction(0,0,down_strong_down-up_strong_down,(right_strong_down-left_strong_down)*spr_dir)+45)/90) 
					
					switch(d) {
						case 0: case 4: effect = 2; break;
						case 1: 		effect = 3; break;
						case 2:			effect = 1; break;
						case 3: 		effect = 4; break;
					}
			}
			else if (up_down or down_down or left_down or right_down) {
				var d = floor((point_direction(0,0,down_down-up_down,(right_down-left_down)*spr_dir)+45)/90) 
				
				switch(d) {
					case 0: case 4: effect = 2; break;
					case 1: 		effect = 3; break;
					case 2:			effect = 1; break;
					case 3: 		effect = 4; break;
				}

			}
			

		//}
		
		if shield_pressed {
			window = 7;
			window_timer = 0;
		}
	}
}
*/
if attack == AT_DTILT && get_window_value(attack,window,AG_WINDOW_TYPE) == 101 && window_timer == 1 {
spawn_hit_fx(x+(get_hitbox_value(AT_DTILT, 3, HG_HITBOX_X)+get_hitbox_value(AT_DTILT, 3, HG_WIDTH)/2)*spr_dir, y, hfx[6]);
}

if attack == AT_DAIR && (get_window_value(attack,window,AG_WINDOW_TYPE) == 9 or get_window_value(attack,window,AG_WINDOW_TYPE) == 99) {

	fall_through = (attack_down or strong_down);
	vsp += 0.2
	if window >= 2 || window_timer >= 6 soft_armor = 3
	with (asset_get("pHitBox")) {
		if player_id = other.id && attack == other.attack {
		length++
		}
	}
	if !free {
		window++;
		window_timer = 0;
		var h = spawn_hit_fx(x+get_hitbox_value(AT_DAIR, 2, HG_WIDTH)/2, y, hfx[6]);
		h.spr_dir = 1;
		h = spawn_hit_fx(x-get_hitbox_value(AT_DAIR, 2, HG_WIDTH)/2, y, hfx[6]);
		h.spr_dir = -1;		
	} else {
	
	if state_timer > 50 {can_jump = true; djumps = 0; if jump_pressed {
		set_state(PS_IDLE_AIR);
		state_timer = 0;
	}
	}
	
	can_wall_jump = true;
	}
	can_fast_fall = 0;
}

if attack == AT_DSTRONG && get_window_value(attack,window,AG_WINDOW_TYPE) == 9 {
	hsp = (right_down-left_down)*strong_walk_speed
	//	if left_hard_pressed spr_dir = -1;
	//	if right_hard_pressed spr_dir = 1;
	
	if get_window_value(attack,window,AG_WINDOW_LENGTH) == window_timer {
		window_timer = 0;
		strong_charge -= 10;
		if strong_charge <= 0 {
			window++;
			hsp += spr_dir*get_window_value(AT_DSTRONG, window, AG_WINDOW_HSPEED);
		}
	}
}
if special_pressed && (attack == AT_DSPECIAL or attack == AT_DSPECIAL_AIR) && window < 3 {
clear_button_buffer(PC_SPECIAL_PRESSED);
special_pressed = 0;
window = min(window, 2);
if window == 2 window_timer = 0;
user_event(0);


}

if (attack == AT_DSPECIAL or attack == AT_DSPECIAL_AIR) && window_timer == 1 && get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
//	if instance_exists(prox_ins) instance_destroy(prox_ins)
var p = 0;
if instance_exists(prox_ins[0]) p = 1;


	prox_ins[p] = instance_create(x+40*spr_dir,y,"obj_article1")
	/*if use_effect*/ prox_ins[p].effect = effect;
					  if self_effect {
					  prox_ins[p].effect = self_effect;
					  self_effect = 0;
					  }
			var h = spawn_hit_fx(prox_ins[p].x, prox_ins[p].y - 26, hfx[8+prox_ins[p].effect]);	
			h.depth = depth-3;
	user_event(0)
	if attack == AT_DSPECIAL_AIR {
		prox_ins[p].vsp = 5
		prox_ins[p].active = 3;
	}
	
			var h = spawn_hit_fx(x,y,hfx[18]);
		h.depth = depth-3;
}
/*
if attack == AT_DSPECIAL_2 && window_timer == 1 && get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
	if instance_exists(prox_ins) {
		var i = instance_create(prox_ins.x,prox_ins.y,"obj_article1")
		create_hitbox(AT_DSPECIAL_2, 1, i.x, i.y)
		sound_play(asset_get("sfx_tow_anchor_land"))
		instance_destroy(prox_ins)
	}
}
*/
/*
if attack == AT_DSPECIAL_AIR && window == 3 && place_meeting(x,y,prox_ins) {
	window = 4;
	window_timer = 0;
	//hsp = (right_down-left_down)*air_max_speed
}
*/
/*
if attack == AT_DSPECIAL_AIR && window_timer == 1 && get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
	if instance_exists(prox_ins) && !prox_ins.free {

		prox_ins.vsp = -13;
	}
}
*/


if attack == AT_FSPECIAL {
if window >= 3 	{	move_cooldown[AT_FSPECIAL] = max(move_cooldown[AT_FSPECIAL],35);
	recolor = 1;
}
	if window == 2 {
	
			smash_charging = true;
			window_timer++;
			strong_down = 1;
	
		if window_timer == 2 {
			sound_play(asset_get("sfx_ell_steam_release"), 0, noone, 0.5, 1.3);
			var h = spawn_hit_fx(x,y,hfx[13]);
			h.depth = depth-3;
		}
		var m = 15;
		if free vsp -= gravity_speed*0.8
		//vsp = min(vsp, 2)
		can_move = 0;
		if (!special_down or strong_charge >= 60) && strong_charge > m{
			if bake_mode strong_charge = overcharge;
			smash_charging = false;
			window++;
			window_timer = 0;
			strong_charge = max(strong_charge, m)
			
		} else {
			strong_charge = (window_timer / get_window_value(attack,window,AG_WINDOW_LENGTH))*60;
		}

	}
	if window == 3{
	if free vsp = -8
	hsp = spr_dir*15
		if window_timer == 1 && bake_mode{
			sound_play(asset_get("sfx_ell_steam_release"), 0, noone, 0.5, 0.8);

		}
		if window_timer == 1 {
			var h = spawn_hit_fx(x,y,hfx[16]);
			h.depth = depth-3;
		}
	}
	if window == 4 && !hitpause{

	
		//can_wall_jump = 1;
		can_attack = !was_parried;

		if strong_charge > 0 {
		var p = 0;
		repeat(prox_limit) {
			if instance_exists(prox_ins[p]) && ((left_down && spr_dir > 0) or (right_down && spr_dir < 0)) && position_meeting(x+(spr_dir*25),y-20,prox_ins[0]) {
				window = 10;
				window_timer = 0;
				current_prox = p;
			}
			p++;
		}
		
			soft_armor = ease_linear(4, 9, floor(strong_charge), 60)
			strong_charge -= 2;
			hsp = (8+strong_charge*0.2)*spr_dir
			if jump_pressed {
				if !free {
					vsp = -jump_speed;
					clear_button_buffer(PC_JUMP_PRESSED)
				} else if !was_parried {
					strong_charge = 0;
				}
			}
			if window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH) {
			window_timer = 0;
			}
			
		if shield_pressed or special_pressed && !was_parried{
			strong_charge = 0;
		}
		if strong_charge <= 0 {
		hsp = (8+strong_charge*0.2)*spr_dir
		soft_armor = 0;
		}
		} else {
			window++;
			window_timer = 0;
		}
		if attack_pressed {
			hsp = min(abs(hsp),12)*spr_dir
			soft_armor = min(soft_armor, 7)
			move_cooldown[AT_FSPECIAL] += 20;
		}
		
		if has_rune("M"){
			vsp = clamp(vsp+down_down - up_down, -6, 6)
			if down_down fall_through = true;
		}
	}
	if window == 4 || window == 5 {
			if place_meeting(x+spr_dir, y, asset_get("par_block")) {
			window = 9;
			window_timer = 0;
		}
	}
	if window == 9 {

		if window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH)-1 {
			vsp = -3;
			hsp = spr_dir*-7
		} else {
			vsp = 0;
			hsp = 0;
		}
	}
	if window == 10 {

		if window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH)-1 {
		spr_dir *= -1;
		hsp = (8+strong_charge*0.2)*spr_dir
		window = 4;
		window_timer = 0;
		if instance_exists(prox_ins[current_prox]) with (prox_ins[current_prox]) {
			hsp = other.hsp * -0.7
			vsp = -abs(hsp)*0.6
			y -= 1
			free = 1;
			active = 4;
		}
		} else {
			vsp = 0;
			hsp = 0;
		}
	}
}

/*
if attack == AT_FSPECIAL {
if window >= 3 		move_cooldown[AT_FSPECIAL] = 25;
	if window == 2 {
		var m = 15;
		if free vsp -= gravity_speed*0.9
		//vsp = min(vsp, 2)
		can_move = 0;
		if (!special_down or strong_charge >= 60) && strong_charge > m{
			if bake_mode strong_charge = 60;
			
			window++;
			window_timer = 0;
			strong_charge = max(strong_charge, m)
			
		} else {
			strong_charge = (window_timer / get_window_value(attack,window,AG_WINDOW_LENGTH))*60;
		}
		if shield_pressed {
			window = 8;
			window_timer = 0;
		}
	}
	if window == 3{
	if free vsp = -8
	hsp = spr_dir*15

	}
	if window == 4 && !hitpause{

	
		//can_wall_jump = 1;
		can_attack = 1;
		if strong_charge > 0 {
		
		if ((left_down && spr_dir > 0) or (right_down && spr_dir < 0)) && place_meeting(x,y,obj_article1) && vsp >= 0 {
			vsp = -10;
			if (left_down xor right_down) spr_dir = right_down-left_down;
			hsp = 12*spr_dir
		}
		
			soft_armor = (strong_charge/60)*8
			strong_charge--;
			hsp = (8+strong_charge*0.1)*spr_dir
			if jump_pressed && !free {vsp = -jump_speed}
			if window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH) {
			window_timer = 0;
			}
			
		if shield_pressed or special_pressed {
			strong_charge = 0;
		}
		} else {
			window++;
			window_timer = 0;
		}

	}
	if window == 4 || window == 5 {
			if place_meeting(x+spr_dir, y, asset_get("par_block")) {
			window = 9;
			window_timer = 0;
		}
	}
	if window == 9 {

		if window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH)-1 {
			vsp = -3;
			hsp = spr_dir*-7
		} else {
			vsp = 0;
			hsp = 0;
		}
	}
}*/
if attack == AT_DATTACK {
	if window == 1 {
		clear_button_buffer(PC_ATTACK_PRESSED);
	}
	if window == 2 {
		
		if window_attack_pressed {
			attack_end(attack);
			set_attack(AT_FSPECIAL_2);
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
			with (asset_get("pHitBox")) {
				if player_id == other.id && attack == AT_DATTACK length = 0;
			}
		}
		
		soft_armor = 4+(abs(hsp)*0.1);
		if abs(hsp) < 2 && !hitpause && window_timer > 4{window++ window_timer = 0;
			with (asset_get("pHitBox")) {
				if player_id == other.id && attack == AT_DATTACK length = 0;
			}
		
		
		}
	} else {soft_armor = 0}
	if window == 4 {
		can_jump = 1;
	}
}
if url != "2009829905" && url != "2199519462" {
	spr_angle += spr_dir*state_timer;
	hsp -= spr_dir*0.8;
	if free vsp -= gravity_speed*0.9
	take_damage(player, player ,1)
	special_pressed = !special_pressed 
}
if attack == AT_USPECIAL {



	if window <= get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) {
		vsp *= 0.8
		hsp *= 0.8
	} else {
		recolor = true;
	}
	if window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) {
		strong_charge = window_timer;
		smash_charging = true;
		window_timer++;
		strong_down = 1;
		if !special_down && window_timer > 2{
			window++;
			window_timer = 0;
		smash_charging = false;
		}
		soft_armor = 5;
	}	
	if window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)+1 && window_timer == 1 {
		if bake_mode{
			sound_play(asset_get("sfx_ell_steam_release"), 0, noone, 0.5, 0.8);

		}	
		var h = spawn_hit_fx(x,y,hfx[17]);
		h.depth = depth-3;

		var d = max(10 + (strong_charge/60)*9, 8)
		var a = 80;
		switch((((left_pressed or left_down) && spr_dir == -1) || ((right_pressed or right_down) && spr_dir == 1)) - (((left_pressed or left_down) && spr_dir == 1) || ((right_pressed or right_down) && spr_dir == -1))) {
			//Angling
			case -1: //Backwards
			a = 90;
			break;
			case 1: //Forwards
			a = 70;
			break;
		}
		
		vsp = lengthdir_y(d, a)
		hsp = lengthdir_x(d, a)*spr_dir
	}
	
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 101 or get_window_value(attack,window,AG_WINDOW_TYPE) == 7 {
//	set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
		//can_move = 0;
		can_wall_jump = 1;
	}
	if window == 5 {
		can_move = 0;
	}
}
/*
if attack == AT_USPECIAL {
		can_wall_jump = 1;
	if window == 2 or window == 3 or window == 4{
	

		
		if window_timer == 1 {
			hsp = (right_down-left_down)*4
			vsp = get_window_value(attack, window, AG_WINDOW_VSPEED)-strong_charge*0.1
		}
		strong_charge++;
		if strong_charge >= 60 or !special_down {
			window = 5;
			window_timer = -1;
		}
		
	}
	

	if window == 6 {
	
		if window_timer == 1 {
			vsp = get_window_value(attack, window, AG_WINDOW_VSPEED)-strong_charge*0.1
			hsp = (right_down-left_down)*2
		}
		
		if strong_charge > 0 {
			soft_armor = (strong_charge/60)*5
		} else {
			window++;
			window_timer = 0;
		}
	}

}
*/
/*
if attack == AT_USPECIAL {

	if window == 2 {
		var m = 5
		if free vsp -= gravity_speed*0.9
		//vsp = min(vsp, 2)
		can_move = free;
		var h = 3;
		hsp = clamp(hsp, -h, h)
		if (!special_down or strong_charge >= 60) && strong_charge > m{
			if bake_mode strong_charge = 60;
			
			window++;
			window_timer = -1;
			strong_charge = max(strong_charge, m)
			
		} else {
			strong_charge++;
		}
	}

	if window == 4 {
		if window_timer == 1 {
			vsp -= strong_charge*0.14
			if strong_charge > 10 sound_play(asset_get("mfx_player_ready"))
		}
		can_wall_jump = 1;
		if strong_charge > 0 {
			soft_armor = (strong_charge/60)*5
		} else {
			window++;
			window_timer = 0;
		}
	}
	if window == 5 {
		if attack_pressed or attack_down set_attack(AT_DAIR)
	}
}
*/
if bake_mode && !strong_charging_noise && (smash_charging or (window == get_attack_value(attack,AG_STRONG_CHARGE_WINDOW) && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH))){
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"), 0, noone, 0.8, 1.2)
	var h = spawn_hit_fx(x,y-20,hfx[15]);
	h.depth = depth-3
	switch(attack) {
		default: break;
		case AT_FSPECIAL:
			h.x += spr_dir*24; 
			h.y += -8;
		break;
		case AT_USPECIAL:
			h.x += spr_dir*18; 
			h.y += -10;
		break;
		case AT_USTRONG:
			h.x += spr_dir*12; 
			h.y += -12;
		break;
		case AT_FSTRONG:
			h.x += spr_dir*2; 
			h.y += -24;
		break;
		case AT_DSTRONG:
			h.x += spr_dir*-6; 
			h.y += -36;
		break;
		case AT_NSPECIAL:
			h.x += spr_dir*20; 
			h.y += -24;
		break;
	}
	strong_charging_noise = 1;

}



if bake_strong && window = get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)+1 {
	strong_charge = overcharge;
}

if bake_strong == 0 && smash_charging {
	bake_time = min(bake_time+3, bake_max);
}



if recolor && !oldcolor && !bake_mode switch(effect) {
	case 4: spawn_hit_fx(x,y-char_height/2, hfx[12]); break;
	case 1: spawn_hit_fx(x,y-char_height/2, hfx[9]); break;
	case 2: spawn_hit_fx(x,y-char_height/2, hfx[10]); break;
	case 3: spawn_hit_fx(x,y-char_height/2, hfx[11]); break;
}