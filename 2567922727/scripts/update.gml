user_event(14);

rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))



max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;

var alt = get_player_color(player);

if ("prev_alt" not in self){
    prev_alt = alt;
    selectiontime = 0;
}

if ("prev_alt" in self && prev_alt != alt){
     selectiontime = 0;
}

if (selectiontime == 0){
    switch(alt){
        case 3:
            sound_play(sound_get("example_sound"));
            selectiontime++;
        break;
        
        default:break;
    }
}

if (selectiontime == 0) // failsafe
    selectiontime = 1

prev_alt = alt