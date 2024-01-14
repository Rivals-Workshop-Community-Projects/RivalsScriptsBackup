if get_player_color(player_id.player) == 26{
    gpu_push_state();
    gpu_set_blendmode(bm_add);
    switch(state){
        case 0:
        case 1:
            draw_sprite_ext(spr_wave_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
        case 2:
        case 3:
        case 4:
        case 6:
            draw_sprite_ext(spr_wave_final_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
        case 5:
            draw_sprite_ext(spr_wave_death_gen, image_index, x, y, spr_dir, 1, 0, c_red, 1);
            break;
    }
    gpu_pop_state();
}