//draw_hud.gml
draw_debug_text(temp_x + 70, temp_y - 16, string(waterLevel) + "%");

draw_sprite(waterHudbub_sprite, waterCharges, temp_x - 4, temp_y - 56);
draw_sprite(waterHud_sprite, waterLevel / 5, temp_x - 4, temp_y - 56);
