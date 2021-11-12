// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);



if phone_game_over{
	if shield_down && taunt_down{
		set_victory_portrait(sprite_get("little_baby_man"));
	}
	else{
		set_victory_portrait(sprite_get("portrait"));
	}
}



if phone_cheats[CHEAT_NO_CD]{
	phone_arrow_cooldown = 0;
	move_cooldown[AT_FSPECIAL] = 0;
}

if phone_cheats[CHEAT_CHARGE] && !(phone_attacking && attack == AT_NSPECIAL && window > 1){
	nspecial_charge = nspecial_charge_max;
}



if state == PS_TUMBLE && (jump_down || up_down){
	set_state(PS_IDLE_AIR);
}

var banned_state = !free;

if (state == PS_TUMBLE || state_cat == SC_HITSTUN || state == PS_PRATFALL || (phone_attacking && was_parried)){
	banned_state = true;
}

if phone_attacking switch(attack){
	case AT_UTILT:
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_USPECIAL:
	case AT_DSPECIAL:
		banned_state = true;
		break;
}

var floating = (!banned_state && (jump_down || up_down) && (vsp > -2 && !(hitpause && old_vsp <= -2)));

if phone_attacking && attack == AT_UAIR && window > 5 && vsp != fast_fall && !was_parried floating = true;

gravity_speed = orig_gravity * (floating ? gravity_mult : 1);

if floating{
	vsp = min(vsp, max_fall * fall_mult);
	if vsp != 0 && get_gameplay_time() % 10 == 0{
		array_push(phone_dust_query, [x, y + 8, "walk", spr_dir]);
	}
	if wing_sound == noone{
		wing_sound = sound_play(sound_get("minecraft_elytra"), 1, noone, 0.5);
	}
}
else{
	if wing_sound != noone{
		sound_stop(wing_sound);
		wing_sound = noone;
	}
}



if !phone_fast{
	with asset_get("hit_fx_obj") if "prism_guy_mover" in self && prism_guy_mover == other{
		x += hsp;
		y += vsp;
		if abs(hsp) hsp -= 0.25 * sign(hsp);
		if vsp < 0 vsp += 0.25;
	}
	
	with asset_get("hit_fx_obj") if player_id == other && (hit_fx == other.vfx_hit_small || hit_fx == other.vfx_hit_med || hit_fx == other.vfx_hit_big){
		if "has_turned" not in self{
			has_turned = true;
			spr_dir = get_gameplay_time() % 2 ? 1 : -1;
			draw_angle += (get_gameplay_time() % 5) * 90;
		}
	}
}



if special_pressed && shield_pressed && phone_arrow_cooldown && joy_pad_idle && (state == PS_AIR_DODGE || state == PS_PARRY_START){
	var old_arrow_cd = phone_arrow_cooldown;
	phone_arrow_cooldown = 0;
	set_attack(AT_NSPECIAL);
	force_nspecial_store = 1;
	phone_arrow_cooldown = old_arrow_cd;
}



if ir_change_timer ir_change_timer--;



if phone_landing can_dspecial = 1;



if phone_attacking switch(attack){
	case AT_FSTRONG:
	case AT_USTRONG:
	case AT_DSTRONG:
	case AT_NSPECIAL:
	case AT_FSPECIAL:
		nspecial_pulse_timer = -1;
		nspecial_pulse_number = 0;
		break;
}

if nspecial_charge{
	var t_max = 30;
	
	if nspecial_pulse_number <= nspecial_charge - 1 && nspecial_pulse_timer > -1{
		nspecial_pulse_alpha = sin((3.14159 * nspecial_pulse_timer / (t_max)));
	}
	else{
		nspecial_pulse_alpha = 0;
	}
	
	init_shader();
	
	nspecial_pulse_timer++;
	if nspecial_pulse_timer > t_max{
		nspecial_pulse_timer = 0;
		nspecial_pulse_number = (nspecial_pulse_number + 1) % nspecial_charge_max;
	}
}
else{
	if nspecial_pulse_alpha > 0 init_shader();
	
	nspecial_pulse_timer = 0;
	nspecial_pulse_number = 0;
	nspecial_pulse_alpha = 0;
}



var hfx_spawners = [];

with oPlayer{
	if state != PS_HITSTUN{
		glare_status_id = noone;
		if "last_glare_id" not in self{
			last_glare_id = noone;
		}
	}
	if glare_status_id == other && state_timer % 3 == 0 && !hitpause{
		array_push(glare_afterimages, [x + draw_x, y + draw_y, spr_dir, 1, sprite_index, image_index]);
		array_push(hfx_spawners, self);
	}
	if last_glare_id != noone{
		for (var i = 0; i < array_length(glare_afterimages); i++){
			if glare_afterimages[i][3] > 0 glare_afterimages[i][@3] -= 0.1;
		}
	}
}

for (var i = 0; i < array_length(hfx_spawners); i++){
	var h = spawn_hit_fx(hfx_spawners[i].x + random_func(3, 32, true) - 16, hfx_spawners[i].y - hfx_spawners[i].char_height / 2 + random_func(4, 32, true) - 16, vfx_sparkle);
	h.prism_guy_mover = self;
	var angle = point_direction(0, 0, hfx_spawners[i].hsp, hfx_spawners[i].vsp)
	h.hsp = lengthdir_x(random_func(1, 4, true) + 2, angle);
	h.vsp = lengthdir_y(random_func(2, 4, true) + 2, angle);
}

