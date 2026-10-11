//draw_hug.gml

draw_sprite(sprite_get("hud_inktank"), 0, temp_x - 6, temp_y - 32)
var gauge_full = sprite_get("hud_inkfull");
var gauge_height = sprite_get_height(gauge_full);
var gauge_width = sprite_get_width(gauge_full);
var meter_percentage = ink_level / max_ink_level;

shader_start();
draw_sprite_part(gauge_full, 0, 0, 0, gauge_width * meter_percentage, gauge_height, temp_x + 20, temp_y - 26);

switch (bomb_type) {
    case 0: //20% for Splat Bomb
        draw_sprite(sprite_get("hud_indicator"), 0, temp_x + 12 + gauge_width * 0.2, temp_y - 42);
        draw_sprite(sprite_get("hud_splatbomb"), 0, temp_x + 172, temp_y - 32);
    break;
    case 1: //10% for Burst Bomb
        draw_sprite(sprite_get("hud_indicator"), 0, temp_x + 12 + gauge_width * 0.1, temp_y - 42);
        draw_sprite(sprite_get("hud_burstbomb"), 0, temp_x + 172, temp_y - 32);
    break;
    case 2: //50% for Sprinkler
        draw_sprite(sprite_get("hud_indicator"), 0, temp_x + 12 + gauge_width * 0.5, temp_y - 42);
        draw_sprite(sprite_get("hud_sprinkler"), 0, temp_x + 172, temp_y - 32);
    break;
}
shader_end();