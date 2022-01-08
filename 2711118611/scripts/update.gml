user_event(14);

rainbow_color_one = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
rainbow_color_two = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 1),
	get_color_profile_slot_g(get_player_color(player), 1),
	get_color_profile_slot_b(get_player_color(player), 1),
	);
set_character_color_slot(0, color_get_red(rainbow_color_one), color_get_green(rainbow_color_one), color_get_blue(rainbow_color_one));
set_character_color_slot(1, color_get_red(rainbow_color_two), color_get_green(rainbow_color_two), color_get_blue(rainbow_color_two));


max_djumps = phone_cheats[cheat_more_djumps];

if (phone_cheats[cheat_funny_jump] == 1) {
	jump_sound = sfx_alleyoop
}
else{
	jump_sound = sfx_quotejump
}

if(get_gameplay_time() <= 120){
	if(taunt_pressed && !bigiron){
		bigiron = true;
		sound_play(sfx_alleyoop);
	}
}

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;



if ((state == PS_IDLE || state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) && sword_one != noone) {
	if (abs(sword_one.x - x) < 25 && abs(sword_one.y - (y - 20)) < 35) {
		sword_one.caught = true;
		state = PS_ATTACK_GROUND;
		attack = AT_NSPECIAL;
		window = 3;
		sound_play(sfx_weaponswitch);
		move_cooldown[AT_NSPECIAL] = 0
	}
	//if (point_distance(x, y, sword_one.x, sword_one.y) < 25) {
	//	
	//}
}

// reset uair boost height to default
if (!free && uair_height != base_height) {
	uair_height = base_height;
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, uair_height);
} 

// WARNING: HACKY
if (djump_speed != djump_base) {
	djump_speed = djump_base;
}

if (sword_two != noone) {
	if (sword_two_timer = 9) {
		sword_two_timer = 0;
	}
	else {
		if (get_gameplay_time() % 4 == 0){
			sword_two_timer += 1;
		}
		
	}
}

// Check if a player is respawned. Then remove the reference of The sword ghost thingy
with oPlayer
{
    if(player != other.player && state == PS_RESPAWN && state_timer == 1 && last_player == other.player && get_player_team(player) != get_player_team(other.player))
    {
        other.sword_two = noone;
    }
}

if (!free && move_cooldown[AT_FSPECIAL] > 0) {
	move_cooldown[AT_FSPECIAL] = 0;
}