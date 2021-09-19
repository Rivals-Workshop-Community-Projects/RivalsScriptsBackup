if("armorpoints" in self){
    shader_start();
    draw_sprite_ext(sprite_get("armorHUD"), armorpoints > 0 ? 1 : 0, temp_x+195, temp_y-5, 1, 1, 0, c_white, 1);
    
    draw_sprite_ext(sprite_get("armorHUD"), armorpoints > 1 ? 1 : 0, temp_x+175, temp_y-5, 1, 1, 0, c_white, 1);
    
    draw_sprite_ext(sprite_get("armorHUD"), armorpoints > 2 ? 1 : 0, temp_x+155, temp_y-5, 1, 1, 0, c_white, 1);
    shader_end();
}