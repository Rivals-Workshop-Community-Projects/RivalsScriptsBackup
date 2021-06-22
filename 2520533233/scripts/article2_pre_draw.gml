//predraw article 2
enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    dstrong_charge,
    ustrong_charge,
    dstrong_hitbox,
    iku,
    bad_load
}
if(fx_type == FX.install){
    var temp_col = seed ? tenshi.rainbow_color2 : tenshi.rainbow_color;
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, temp_col, sub_alpha);
} else if (fx_type == FX.install_cloud){
    var temp_col = seed ? tenshi.rainbow_dark2 : tenshi.rainbow_dark;
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, temp_col, sub_alpha);
    
}