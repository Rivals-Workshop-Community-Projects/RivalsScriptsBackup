//rip glow effects ;~;

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
    fstrong_charge,
    bad_load
}
if(fx_type == FX.install_bg and tenshi.state == PS_ATTACK_GROUND and tenshi.attack == AT_NSPECIAL_2 and tenshi.window < 2 and tenshi.state_cat != SC_HITSTUN){
    draw_sprite_ext(sprite_get("flash"), 0, 0, 0, room_width/10, room_height/10, 0, c_white, 1-max((tenshi.window_timer/8), .8));
} else if(fx_type == FX.iku){
    shader_end();
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, 1);
}
