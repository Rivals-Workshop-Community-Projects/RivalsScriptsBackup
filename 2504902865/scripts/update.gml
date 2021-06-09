//user_event(14);

if holding_house_id == noone {
	holding_house_is = false;
} else {
	holding_house_is = true;
	holding_house_level = holding_house_id.house_level;
	holding_house_id.x = x + hsp;
	holding_house_id.y = y - 15;
}


/*
if (state == PS_AIR_DODGE or state == PS_PARRY_START) && holding_house_is {
	holding_house_id.state = 4;//zdrop
	holding_house_id.state_timer = 0;
	holding_house_id.thrown_hitbox_type = 4;
	holding_house_id = noone;
}*/

//uspecial bounces restore
if !free or state == PS_DEAD {
	uspecial_bounces_rn = 0
}


if boosting_minions {
	if !started_boosting_minions {
		sound_play(sound_get("may_woom"),false,0,0.85,1)
		started_boosting_minions = true
	}
	boosting_field_timer += 1;
	boosting_timer_rn += 1;
	with(obj_article2) {
		if player_id == other.id {
			if point_distance(x,y -15,other.x,other.y - 15) <= 150 {
				overworking_active = true;
			} else {
				overworking_active = false;
			}
		}
	}
} else {
	started_boosting_minions = false
	boosting_field_timer = 0;
	with(obj_article2) {
		if player_id == other.id {
			overworking_active = false;
		}
	}
}
if boosting_timer_rn >= boosting_timer_max {
	boosting_minions = false;
}

if state_cat == SC_HITSTUN {
	with(obj_article2) {
		if player_id == other.id { //minions can't attack while in hitstun
			attack_timer_rn = 0;
		}
	}
}

//kragg
if holding_house_is {
	has_rock = true;
} else {
	has_rock = false;
}

if house_cooldown_rn > 0 {
	house_cooldown_rn -= 1;
}

/*


//sandbert idk
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