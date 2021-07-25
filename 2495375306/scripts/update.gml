user_event(14);

rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));

if (instance_exists(diamond)){
	diamond.hitfxowner = id;
}

if (last_choice_timer == 0){
	last_choice = 0;
}

if (last_choice_timer > 0){
	last_choice_timer --;
}

max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if (attack != AT_TAUNT || state != PS_ATTACK_GROUND){
	sound_stop(sound_get("mus_dance_short"));
}

if (instance_exists(diamond)){
	move_cooldown[AT_DSPECIAL] = 2;
}

if (state_cat == SC_HITSTUN || free == false || state == PS_WALL_JUMP){
	if (move_cooldown[AT_USPECIAL] > 0){
	move_cooldown[AT_USPECIAL] = 0;
	}
}

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;

if (fail_timer < 400){
	fail_timer ++;
	if (fail_timer < 300 && fail_alpha < 1){
		fail_alpha += .1;
	}
	if (fail_timer >= 300 && fail_alpha > 0){
		fail_alpha -= .1;
	}
}
with asset_get("oPlayer"){
	if (variable_instance_exists(id, "fail_text") && variable_instance_exists(id, "has_fail") && id != other.id){
		other.other_has_fail = true;
		other.fail_text = fail_text;
	}
}