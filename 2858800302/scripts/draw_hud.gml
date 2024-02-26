if (fspec_hsp == level_5_hsp && fspecial_charge > 0){
    shader_start();
    if (headspace_outline){
        draw_sprite( sprite_get("fspecial_hud_headspace"), 0, temp_x + 182, temp_y - 12);
    }
    else{
        draw_sprite( sprite_get("fspecial_hud"), 0, temp_x + 182, temp_y - 12);
    }
    shader_end();
}