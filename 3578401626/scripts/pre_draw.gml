//Drawing below

if (ground_timer == 1 || state == PS_DOUBLE_JUMP && state_timer == 0 || strong_flashing == true || hooped == hooped_max - 1 || attack == AT_FSPECIAL && attacking_now == 3){
    if (dust_shade == 2){
        dust_shade = 3;
    } else{
        dust_shade = 2;
    }
}
init_shader();

if (get_player_color(player) != 7){
if (spr_dir == 1){
    set_character_color_slot(2, clothl_colr, clothl_colg ,clothl_colb);
    set_character_color_slot(3, clothr_colr, clothr_colg ,clothr_colb);
}

if (spr_dir == -1){
    set_character_color_slot(2, clothr_colr, clothr_colg ,clothr_colb);
    set_character_color_slot(3, clothl_colr, clothl_colg ,clothl_colb);
}
}

if (state == PS_RESPAWN){
    if (spr_dir == -1){
        draw_sprite_ext(sprite_get("-1plat_back"), 0, x, y, -1, 1, 0, c_white, 1);
    } else{
        draw_sprite(sprite_get("1plat_back"), 0, x, y);
    }
}

if (fspecial_charge > 0){
    gpu_set_fog(true, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir, image_yscale, spr_angle, c_white, fspecial_charge / fspecial_charge_max)
    gpu_set_fog(false, c_white, 1, 0);
}