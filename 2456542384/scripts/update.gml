user_event(14);

rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));



max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;

//uspecial cooldown thing
if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
	can_use_uspecial = true;
}
if !can_use_uspecial {
	move_cooldown[AT_USPECIAL] = 2;
}
if state != PS_ATTACK_GROUND && instance_exists(bite_plat) {
	instance_destroy(bite_plat);
}

//dspecial stuff
if instance_exists(dros_flower) && (dros_flower.state == 1 || dros_flower.state == 6) { //dspecial cooldown only whne flower dies
	flower_on_cooldown = true;
	flower_cooldown_rn = dros_flower_cooldown;
}
if flower_cooldown_rn == 0 {
	flower_on_cooldown = false;
}
if instance_exists(dros_flower) {
	flower_on_cooldown = true;
}
if flower_cooldown_rn > 0 { //new flower cooldown variable to be able to do dspecial_2 while you can't use the regular dspecial
	flower_cooldown_rn -= 1;
}