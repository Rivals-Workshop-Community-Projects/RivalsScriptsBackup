muno_event_type = 1;
user_event(14);



if phone_cheats[CHEAT_STAMINA]{
	stamina = max(stamina, stamina_max - 1);
}

if cur_spear{
	if phone_cheats[CHEAT_SPEAR_DUR] == 1{
		spear_durability = spear_durability_max;
	}
	if phone_cheats[CHEAT_SPEAR_DUR] == 2{
		spear_durability = 1;
	}
}



if state == PS_IDLE || state == PS_WALK || state == PS_CROUCH || (phone_attacking && attack == AT_FTILT && window < 3) with pHitBox if !plasma_safe && player != other.player && type == 2{
	if place_meeting(x - other.spr_dir * 16, y, other.hurtboxID) && !place_meeting(x, y, other.hurtboxID) && sign(x - other.x) == other.spr_dir{
		destroyed = 1;
		with other{
			hsp = -3 * spr_dir;
			sound_play(sfx_minecraft_shield[clamp(random_func(0, 5, true), 0, 4) + 1]);
		}
	}
}

/*
if (state == PS_DASH_START || state == PS_DASH || state == PS_DASH_TURN){ // trolled!
	if stamina stamina--;
	else set_state(PS_IDLE);
}
*/



with asset_get("hit_fx_obj") if ("link_cryonis" in self && link_cryonis == other){
	x += hsp;
	y += vsp;
	draw_angle += asp;
	
	hsp = (hsp - sign(hsp) * 0.1);
	vsp = min(vsp + 0.5, 10);
}



has_walljump = (stamina > 0 && !(state == PS_WALL_JUMP));

if state == PS_WALL_JUMP && state_timer == 5{
	stamina = max(stamina - 30, 1);
	spr_dir *= -1;
	if prev_state == PS_ATTACK_AIR && attack == AT_DSPECIAL{
		var a = instance_create(x, y - 80, "obj_article1");
		a.vsp = -5;
		a.fake_image_angle = -360;
	}
}

if stamina == 1{
	sound_play(sfx_botw_low_health);
	stamina = 0;
}

if phone_landing && state != PS_WALL_JUMP && stamina < stamina_max /*&& !(state == PS_DASH_START || state == PS_DASH || state == PS_DASH_TURN)*/ stamina += 1 + (!free) + (stamina == 0);
stamina_alpha = lerp(stamina_alpha, (stamina < stamina_max), 0.3);

if !(phone_attacking && attack == AT_USPECIAL) && glide_sound != noone{
	sound_stop(glide_sound);
	glide_sound = noone;
}

if flying_spear != noone && (!instance_exists(flying_spear) || flying_spear.hitpause_timer){
	sound_stop(flying_spear_sound);
	flying_spear = noone;
	flying_spear_sound = noone;
}

phone_arrow_cooldown = !cur_spear;



if has_walljump && vsp > 0 &&
		(state_cat == SC_AIR_NEUTRAL || state == PS_PRATFALL || phone_attacking 
		&& can_wall_jump) && !((state == PS_DOUBLE_JUMP || 
		state == PS_FIRST_JUMP || state == PS_WALL_JUMP) && state_timer < 8) && 
		place_meeting(x + (right_down - left_down), y, asset_get("par_block"))
		&& jump_pressed && abs(right_down - left_down){
	attack_end();
	spr_dir = left_down - right_down;
	set_state(PS_WALL_JUMP);
}



if state == PS_RESPAWN move_cooldown[AT_TAUNT] = 2;



with rune_menu{
			
	scroll_x = lerp(scroll_x, -56 * p.cur_rune, 0.5);
	if p.taunt_pressed cooldown = 0;
	
	switch(state){
		case 0: // closed
			draw_alpha = lerp(draw_alpha, 0, 0.25);
			hint_alpha = lerp(hint_alpha, 0, 0.25);
			
			if p.taunt_down && (p.phone.state == 0 || p.phone.state == 5) && !cooldown && !(p.phone_attacking && p.attack == AT_TAUNT_2){
				state = 1;
				state_timer = 0;
				with p sound_play(sfx_botw_rune_menu_open);
			}
			break;
		case 1: // open
			draw_alpha = lerp(draw_alpha, 1, 0.5);
			hint_alpha = lerp(hint_alpha, state_timer > 90, 0.25);
			
			var in_h = sign(p.right_pressed + p.right_strong_pressed + p.right_stick_pressed - p.left_pressed - p.left_strong_pressed - p.left_stick_pressed);
			
			if abs(in_h){
				p.cur_rune = (array_length(p.runes) + p.cur_rune + in_h) % array_length(p.runes);
				with p{
					sound_play(sfx_botw_rune_menu_scroll);
					clear_button_buffer(PC_LEFT_STICK_PRESSED);
					clear_button_buffer(PC_LEFT_STRONG_PRESSED);
					clear_button_buffer(PC_RIGHT_STICK_PRESSED);
					clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
				}
			}
			
			if !(p.taunt_down || p.taunt_pressed){
				state = 0;
				state_timer = 0;
			}
			
			else if p.attack_pressed{
				p.cur_rune = p.RUNE_BOMB;
				with p clear_button_buffer(PC_ATTACK_PRESSED);
				state = 0;
				state_timer = 0;
				cooldown = 1;
			}
			
			else if p.special_pressed{
				p.cur_rune = p.RUNE_MAGNESIS;
				with p clear_button_buffer(PC_SPECIAL_PRESSED);
				state = 0;
				state_timer = 0;
				cooldown = 1;
			}
			
			else if p.jump_pressed{
				p.cur_rune = p.RUNE_STASIS;
				with p clear_button_buffer(PC_JUMP_PRESSED);
				state = 0;
				state_timer = 0;
				cooldown = 1;
			}
			
			else if p.shield_pressed{
				p.cur_rune = p.RUNE_CRYONIS;
				with p clear_button_buffer(PC_SHIELD_PRESSED);
				state = 0;
				state_timer = 0;
				cooldown = 1;
			}
			
			else if p.phone_attacking && p.attack == AT_TAUNT{
				// cancel into phone or camera
				
				var in_v = sign(p.down_pressed + p.down_strong_pressed + p.down_stick_pressed - p.up_pressed - p.up_strong_pressed - p.up_stick_pressed);
				
				if in_v == -1 && in_h == 0{
					with p{
						attack_end();
						set_attack(AT_TAUNT_2);
					}
					state = 0;
					state_timer = 0;
				}
				
				else if in_v == 1 && in_h == 0 && p.phone_practice{
					state = 0;
					state_timer = 0;
					with p{
						set_attack(AT_PHONE);
						sound_play(phone.has_opened_yet ? sfx_pho_open : sfx_pho_power_on);
						phone.state = (phone.state == 0) ? 1 : 6;
						phone.state_timer = 0;
						clear_button_buffer(PC_UP_STICK_PRESSED);
						clear_button_buffer(PC_UP_STRONG_PRESSED);
						clear_button_buffer(PC_DOWN_STICK_PRESSED);
						clear_button_buffer(PC_DOWN_STRONG_PRESSED);
					}
				}
			}
			
			else with p{
			
				var allowed_state = (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || state == PS_DASH || state == PS_DASH_START || ((state == PS_WALL_JUMP || state == PS_WALL_TECH) && image_index > 1));
				
				if state == PS_RESPAWN{
					allowed_state = false;
					move_cooldown[AT_TAUNT] = 2;
				}
				
				if allowed_state && !((state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) && state_timer == 0){
				    set_attack(AT_TAUNT);
				}
				
			}
			
			if state == 0 with p{
				if !phone.state sound_play(sfx_botw_rune_menu_select);
				clear_button_buffer(PC_TAUNT_PRESSED);
			}
			break;
	}
	
	state_timer++;
}



if bomb_cooldown{
	if bomb_cooldown == 12{
		sound_play(sound_get("botw_ui_cancel_1"));
	}
	bomb_cooldown--;
	phone_invis_cooldown = 2;
}



// rivals of aether is a well-coded video game.

if phone_attacking respawn_taunt = 0;