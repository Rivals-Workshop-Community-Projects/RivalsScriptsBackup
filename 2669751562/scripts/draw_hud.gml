//draw_hud - the x position of your HUD element is 48*(i-1)

var web_cool_percent = 15 * web_cooldown_current/web_cooldown;

// draw_debug_text(5, 435, "tj_counter: " + string(tj_counter));
// draw_debug_text(5, 450, "air_friction: " + string(air_friction));
// draw_debug_text(5, 465, "stage: " + string(get_stage_data(SD_ID)));
// draw_debug_text(5, 480, "web cooldown: " + string(web_cooldown_current div 60) + ":" + string_format(web_cooldown_current % 60, 2, 0));

//Draw greyed out cooldown icon.
draw_sprite_ext(sprite_get("web_cooldown_icon"), 0, temp_x+176, temp_y, 2, 2, 0, c_gray, 1);

//Fill upwards with colored in icon.
draw_sprite_part_ext(sprite_get("web_cooldown_icon"), 0, 0, web_cool_percent, 16, 15, temp_x+160, temp_y - 14 + 2 * web_cool_percent, 2, 2, c_white, 1);