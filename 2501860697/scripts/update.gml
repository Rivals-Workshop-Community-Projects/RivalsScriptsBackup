
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


if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 29) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

if(introTimer == 1 && state == PS_SPAWN) {
 sound_play( asset_get( "sfx_absa_concentrate" ) );
}

if(introTimer == 9 && state == PS_SPAWN) {
 sound_play( asset_get( "sfx_absa_uair" ) );
}

if (charge > 0 && short = 0)
{charge -= charge_drain_rate;}



// current charge % for math
var charge_percent = (charge / charge_max);

//determine what bonus Venom gives

var venom_boost = (venom_timer / 100.0);
venom_boost *= venom1_boost + (venom_stack * 0.25);


if (venom >= 0)
{venom_timer -= venom_drain_rate;}

if venom_timer < 1 {
	venom_current = 0;
}

if venom < venom_min {
venom = venom_min;


}
if venom_timer < venom_timer_min && venom > -1 {
venom_timer = venom_timer_min;}

/*
if venom >= 0 && venom_timer = 1 {
	venom_stack = 0;

}
*/

if venom =  3 {
	venom_current = 3;
}
if venom_current = 3 {
venom_recharge_active = false;
}

if venom_timer = 0.1 {
	venom_recharge_active = true;
		short = 1;

}

if venom_recharge_active = true {
	venom_recharge += venom_recharge_rate;
}

if venom_recharge > venom_recharge_max {
	venom_recharge = 0;
}

if venom_recharge = 100 {
	venom_current += 1;
	venom += 1;
	venom_recharge = 0;
}

if venom_stack > 3 {
	venom_stack = 3;
}

if short = 1 {
	lasercharged = false;
    if (short_timer == 100)
        short_drain = lerp(short_drain_min, short_drain_max, venom_stack / 3);
    short_timer -= short_drain;
}

if short_timer < 0 {
    short_timer = 100;
    short = 0;
}


if short = 1 {
initial_dash_speed = initial_dash_speed_short;
dash_speed = dash_speed_short;
walk_speed = walk_speed_short;
moonwalk_accel = moonwalk_accel_short;
max_jump_hsp = max_jump_hsp_short;
air_max_speed = air_max_speed_short;
air_dodge_speed = air_dodge_speed_short;
roll_forward = roll_forward_max_short;
roll_backward = roll_backward_max_short;
} else {
	initial_dash_speed = initial_dash_speed_base + (charge_percent * initial_dash_speed_bonus) + venom_boost;
dash_speed = dash_speed_base + (charge_percent * dash_speed_bonus) + venom_boost;
walk_speed = walk_speed_base + (charge_percent * walk_speed_bonus) + venom_boost;
moonwalk_accel = moonwalk_accel_base + (charge_percent * moonwalk_accel_bonus) + venom_boost;
max_jump_hsp = max_jump_hsp_base + (charge_percent * max_jump_hsp_bonus) + venom_boost;
air_max_speed = air_max_speed_base + (charge_percent * air_max_speed_bonus) + venom_boost;
air_dodge_speed = air_dodge_speed_base + (charge_percent * air_dodge_speed_bonus) + venom_boost;
roll_forward_max = roll_forward_max_base + (charge_percent * roll_forward_max_bonus) + venom_boost;
roll_backward_max = roll_backward_max_base + (charge_percent * roll_backward_max_bonus) + venom_boost;
}

if attack == AT_DAIR && window == 4 {
move_cooldown[AT_DAIR] = 15;
}

if attack == AT_FSPECIAL && window == 2 {
move_cooldown[AT_FSPECIAL] = 10;
}

if attack == AT_FSPECIAL_AIR && window == 4 {
move_cooldown[AT_FSPECIAL_AIR] = 26;
}


if(free && attack == AT_USPECIAL || attack == AT_USPECIAL_2) && (state == PS_ATTACK_AIR){
    if (has_hit)
    	move_cooldown[AT_USPECIAL] = 0;
    else {
    	move_cooldown[AT_USPECIAL] = 999;
    }
}

if(!free || state == PS_WALL_JUMP || state == PS_HITSTUN){
    move_cooldown[AT_USPECIAL] = 0;
		uspecialtimer = 0;
}
