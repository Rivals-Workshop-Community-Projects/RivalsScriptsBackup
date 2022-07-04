// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if state_timer < 2 && (state != PS_ATTACK_GROUND) sound_stop(sound_get("boom"));


if !free uspecial_used = false;
if state == PS_WALL_JUMP || state == PS_WALL_TECH uspecial_used = false;
if uspecial_used move_cooldown[AT_USPECIAL] = 2;

var offset = 0;
if state == PS_SPAWN && state_timer < 53 offset = ease_cubeIn(-40, 0, state_timer, 70) - 38;

wing_x = lerp(wing_x, x, .35);
wing_y = lerp(wing_y, y + offset, .35);

with oPlayer if "bubble_hitpause_timer" in self && bubble_hitpause_timer == 1 {
	bubble_hitpause_timer = 0;
	if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
		//hitpause = false;
		hitstop = 0;
		hitstop_full = 0;
	}
}

// "poggers" alt
if (poggers_alt) {
    colorSet(get_player_color(player), 0, make_color_hsv(get_gameplay_time() % 256, 255, 255));
	colorSet(get_player_color(player), 3, make_color_hsv(get_gameplay_time() % 256, 255, 255));
	colorSet(get_player_color(player), 4, make_color_hsv(get_gameplay_time() % 256, 255, 170));
	colorSet(get_player_color(player), 5, make_color_hsv(get_gameplay_time() % 256, 255, 255));
    init_shader();
    draw_color = make_color_rgb(get_color_profile_slot_r(get_player_color(player) ,0), get_color_profile_slot_g(get_player_color(player) ,0), get_color_profile_slot_b(get_player_color(player) ,0));
    // how do u check if the game is over
    var alive_players = 0;
    for (var i = 1; i < 5; i++) {
        if is_player_on(i) && get_player_stocks(i) != 0 alive_players++;
    }
    if (get_game_timer() == 0 && is_timed) || (alive_players == 1 && !get_match_setting(SET_PRACTICE)) {
        colorSet(get_player_color(player), 0, $828282);
        colorSet(get_player_color(player), 3, $828282);
        colorSet(get_player_color(player), 4, $5e5e5e);
        colorSet(get_player_color(player), 5, $828282);
    }
} else draw_color = c_white;

#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));