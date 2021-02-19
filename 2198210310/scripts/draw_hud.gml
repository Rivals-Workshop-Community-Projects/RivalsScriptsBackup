//draw-hud
draw_set_font(asset_get("roaTFont"));
draw_set_halign(fa_center);

var iconX = temp_x + 200;
var iconY = temp_y - 4;

if compactTimer >= compactThreshhold {
    var colour = c_red;
} else {
    var colour = c_white;
}

draw_sprite_ext(sprite_get("cube_hud"), 0, iconX, iconY, 1, 1, 0, c_gray, 1);
draw_sprite_part_ext(sprite_get("cube_hud"), 0, 0, 16 - (compactTimer/compactMax)*16, 16, (compactTimer/compactMax)*16, iconX - 8, iconY + 8 - (compactTimer/compactMax)*16, 1, 1, colour, 1);
//draw_debug_text(temp_x, temp_y - 16, "compactTimer: " + string(compactTimer));

if fspecCooldown <= 0 {
    var fspecColour = c_white;
} else {
    var fspecColour = c_gray;
}

draw_sprite_ext(sprite_get("eve_hud"), 0, iconX - 28, iconY - 8, 1, 1, 0, fspecColour, 1);