//draw_hud - the x position of your HUD element is 48*(i-1)

if "blackout_timer" not in self blackout_timer = 0;

var temp_color_blaster = c_white;
if (move_cooldown[AT_NSPECIAL] > 0) temp_color_blaster = c_gray;
//draw_sprite_ext(sprite_get("bone_icon"), 0, temp_x+188, temp_y-18, 2, 2, 0, temp_color_blaster, 1);
draw_sprite_ext(sprite_get("gasterblaster_hud"), 0, temp_x+188, temp_y-18, 2, 2, 0, temp_color_blaster, 1);

var bone_color = c_white;
if (move_cooldown[AT_FSPECIAL] > 0) { bone_color = c_gray; }
draw_sprite_ext(sprite_get("bone_icon"), 0, temp_x+164, temp_y-18, 2, 2, 0, bone_color, 1);


if blackout_timer{
    draw_rectangle_color(0, 0, 1080, 540, c_black, c_black, c_black, c_black, false);
    blackout_timer--;
    if !blackout_on || !blackout_timer{
        blackout_on = !blackout_on;
        sound_play(sound_get("sfx_sans_click"));
    }
}

//draw_debug_text(temp_x, temp_y - 36, "window = " + string(window));

//draw_debug_text(temp_x + 162, temp_y - 36, string("400 - AVERAGE"));

//var ind_hud = get_local_setting(SET_HUD_SIZE);
/*
var ind_hud = get_local_setting(SET_MUSIC_VOLUME)
draw_debug_text(temp_x, temp_y - 36, string(ind_hud));
*/
//draw_debug_text(temp_x, temp_y - 36, string(ind_hud));

/*
if ("djump_accel_end_time" in oPlayer) {
    with oPlayer {
        draw_debug_text(x, y - 36, string(djump_accel_end_time));
        draw_debug_text(x, y - 24, string(djump_accel_start_time));
        draw_debug_text(x, y - 12, string(djump_accel));
    }
}
*/

/*
if ("sansKR" in oPlayer) {
    with oPlayer {
        draw_debug_text(x, y - 36, string(sansKR));
    }
}
*/

/*

var temp_color_bone = c_white;
if (blue_bone == true) temp_color_bone = c_aqua;
draw_sprite_ext(sprite_get("bone_icon"), 0, temp_x+188, temp_y-26, 2, 2, 0, temp_color_bone, 1);



var temp_color_banana = c_white;
if (move_cooldown[AT_DTILT] > 0) temp_color_banana = c_gray;
draw_sprite_ext(sprite_get("banana_icon"), 0, temp_x+110, temp_y-20, 2, 2, 0, temp_color_banana, 1);

*/
//var y_offset = 60;
//draw_debug_text(temp_x,temp_y - y_offset, string_lower(get_player_name(player)));

//string_lower