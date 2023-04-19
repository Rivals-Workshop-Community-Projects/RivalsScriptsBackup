if mob_spawning {
    maskHeader();
    for (var i = 0; i < 4; i += 1) {
        var xs = (i % 2 == 0) ? 2 : -2;
        draw_sprite_ext(spr_pipe_mask, 0, p_coords[i][0], p_coords[i][1], xs, 2, 0, c_white, 1);
    }
    maskMidder();
    with obj_stage_article if get_article_script(self) <= 3 {
        if state == PS_SPAWN { draw_sprite_ext(spr_spawn, subimg_spawn, x, y, spr_dir, 1, 0, c_white, 1); }
        else { draw_self(); }
    }
    maskFooter();
}

#define maskHeader
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

#define maskMidder
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
