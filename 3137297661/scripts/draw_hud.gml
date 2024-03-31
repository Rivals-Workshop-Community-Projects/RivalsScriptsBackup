//draw hud.gml
if(variable_instance_exists(self, "k_combo") && k_combo){
    draw_sprite_ext(sprite_get("combo_mark"), k_combo_anim_timer/k_combo_anim_speed, temp_x, temp_y, 2, 2, 0, c_white, 1);
}