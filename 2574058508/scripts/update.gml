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


// Cooldown on the NSpecial when you're out of blocks
if (block_ammo >= 3){
	move_cooldown[AT_NSPECIAL] = 2;
}

if (place_meeting(x, y, block1) || place_meeting(x, y, block2) | place_meeting(x, y, block3)){
	not_on_block = false;
}

if (!place_meeting(x, y, block1) && !place_meeting(x, y, block2) && !place_meeting(x, y, block3)){
	not_on_block = true;
}

if (block_ammo_full >= 3){
	block_ammo_full = 2.9
}

if (block_ammo_full > 0 && block_ammo_full < 3.1 && block_despawn == true){
	if (!free && not_on_block == true){
		block_ammo_full -= .01;	//You can change the value to make it charge faster
	}
	
}

block_ammo = round(block_ammo_full);

