

var lanternhud_full = sprite_get("lanternhud_full");
var lanternhud_height = sprite_get_height(lanternhud_full);
var lanternhud_width = sprite_get_width(lanternhud_full);

var meter_percentage = lanternhud_CURRENT / lanternhud_MAX;

draw_sprite(sprite_get("lanternhud_empty"),0, temp_x + 155, temp_y + -18);
draw_sprite_part(lanternhud_full,0, 0, lanternhud_height * (1 - meter_percentage), lanternhud_width, lanternhud_height * meter_percentage, temp_x + 155, temp_y + -18);

