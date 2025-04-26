//magic hud
if "magic" in self {
    if (get_training_cpu_action() != CPU_FIGHT && !("is_ai" in self) && practice_notice == true) {
    draw_set_alpha(0.7)
    draw_rectangle_color(temp_x+2, temp_y-8, temp_x+136, temp_y-20, c_black,c_black,c_black,c_black,false)
    draw_set_alpha(1)
    }
shader_start();
draw_sprite_ext(sprite_get("magic_meter"), magic, temp_x+24, temp_y-9, 2, 2, 0, c_white, 1);
shader_end();
    draw_set_font(asset_get("tinyFont"));
    draw_set_colour(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_right);
    if (get_training_cpu_action() != CPU_FIGHT && !("is_ai" in self) && practice_notice == true) {
        draw_text_transformed_color(temp_x+4, temp_y - 12, "PARRY + ATTACK TO INSTAFILL MAGIC", 1, 1, 0, c_white,c_white,c_white,c_white, 100);
    }
}