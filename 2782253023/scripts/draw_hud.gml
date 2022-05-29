//draw_hud.gml

if (super_mode = true) {
    meter_mod = 17;
} else if (super_mode = false) {
    meter_mod = 0;
}
draw_sprite(sprite_get("gauge"), floor((super_gauge/(gauge_cap/16))+meter_mod), temp_x + 24, temp_y + 6);