if (fspec_hsp == level_5_hsp && fspecial_charge > 0){
    shader_start();
    if (headspace_outline){
        draw_sprite( sprite_get("hud_small_fspec_headspace"), 1, x + 14, y - 82 - hud_offset);
    }
    else{
        draw_sprite( sprite_get("hud_small_fspec"), 1, x + 14, y - 82 - hud_offset);
    }
    shader_end();
}