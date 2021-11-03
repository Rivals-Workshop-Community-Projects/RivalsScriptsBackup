user_event(14);

rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));



if cooldownstart = true {
	burststop -= 1;
}

if burststop = 0 {
	cooldownstart = false;
}

if (burststop = 0 && usingspecial == false && burst && (danmoment % 11) == 1) {
   take_damage( player, -1, 1 );
}	

//made it not go down if it's at 0 (krankees)
if (bloodmeter > bloodmetermin)
bloodmeter -= bloodmeterdec;


if burstmeter > 0 && usingspecial == false && burststop = 0 {
	burstmeter -= burstmeterdec;
	danmoment += 1;
}
if burstmeter <= 0 {
	burstmeter = burstmetermin;
	burst = 0;
	danmoment = 0;
	burststop = 0;
}


if burst = 1 && !hitpause{
	if (attack == AT_DSTRONG && state == PS_ATTACK_GROUND && window == 1 && window_timer == 1) {
	window = 5;
	window_timer = 0;
	set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
	set_num_hitboxes(AT_DSTRONG, 6);
	set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 6);
	}
	if (attack == AT_USTRONG && state == PS_ATTACK_GROUND && window == 1 && window_timer == 1) {
	window = 5;
	window_timer = 0;
	set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 8);
	set_num_hitboxes(AT_USTRONG, 3);
	set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 6);
	}
	} else if (burst = 0) {
	reset_attack_value(AT_DSTRONG, AG_NUM_WINDOWS);
	reset_num_hitboxes(AT_DSTRONG);
	reset_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW);
	reset_attack_value(AT_USTRONG, AG_NUM_WINDOWS);
	reset_num_hitboxes(AT_USTRONG);
	reset_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW);
}

if (burst == 1)
{
	if (hit_player_obj != -4 and hit_player_obj.state == PS_RESPAWN)
	{
		hit_player_obj = noone;
		cooldownstart = true;
		burststop = 240;
	}
}
max_djumps = phone_cheats[cheat_more_djumps];


if(attack == AT_USPECIAL && state == PS_ATTACK_AIR){
    move_cooldown[AT_USPECIAL] = 999;
} else if !free || state == PS_HITSTUN || state == PS_WALL_JUMP {
	move_cooldown[AT_USPECIAL] = 0;
}

if (attack == AT_FSPECIAL && window == 4 && window_timer == 31) {
	move_cooldown[AT_FSPECIAL] = 25;
}

if ( (attack == AT_DSPECIAL && window == 2 && window_timer == 19) 
|| (attack == AT_DSPECIAL_AIR && window == 3 && window_timer == 13) 
|| (attack == AT_DSPECIAL_AIR && window == 4 && window_timer == 19) ) {
	    move_cooldown[AT_DSPECIAL] = 40;
	    move_cooldown[AT_DSPECIAL_AIR] = 40;
}
//print_debug(string(bloodmeter))