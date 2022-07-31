//Ice Axe Icon

var temp_color = c_gray;
if (move_cooldown[AT_TAUNT] > 99999) temp_color = c_white;
draw_sprite_ext(sprite_get("hud_axe"), 0, temp_x+178, temp_y+28, 2, 2, 0, temp_color, 1);


//Ice Clone Cooldown

var temp_color = c_white;
if (move_cooldown[AT_FSPECIAL] > 0) temp_color = image_blend;
draw_sprite_ext(sprite_get("hud_icon"), 0, temp_x+178, temp_y+28, 2, 2, 0, temp_color, 1);


//Ice Clone HUD Gauge
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 5) temp_color = image_blend;
draw_sprite_ext(sprite_get("gauge_empty"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 10) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_2"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 20) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_3"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 30) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_4"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 40) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_5"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 50) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_6"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 60) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_7"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 70) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_8"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 80) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_9"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 90) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_10"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 100) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_11"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 110) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_12"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

if (move_cooldown[AT_FSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("gauge_full"), 0, temp_x+178, temp_y+30, 2, 2, 0, temp_color, 1);

