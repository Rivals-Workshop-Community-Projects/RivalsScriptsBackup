//css_init

alt_cur = get_player_color(player);
default_alt = 0;
alt_checker = get_player_color(player);
num_alts = 19;
offset = 0;
temp_x = x + 8;
temp_y = y + 9;
voicebutton = get_synced_var(player) * 3;
voicebuttoncurrent = get_synced_var(player) *3;
cssframes = 0;
css_timer = 0;
drawing = 0;
drawtime = 0;
alttime = 0;
col = c_white;
thin = num_alts > 16;
is_css = true;

txt = "#" + string(alt_cur);

voice_button_position_x = 0;
voice_button_position_y = 0;

bike = sprite_get("bike_smokeH");
scale = 4;
anim_speed = 1.4; //the bigger the number, the slower the animation

//bike sprite showcase
sprite_change_offset("bike_smokeH", 18, 32);
