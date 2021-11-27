// Shadow Engine
enum ST {
    NONE,
    GRASS,
    FIRE,
    WATER,
    EARTH,
    BF,
    KALOS,
    SV,
    RBF,
    BLAZING,
    FD
}

if (obj_stage_main.graphics_level < 4) {
    maskHeader();
    
    draw_sprite_ext(sprite_get("ground_shadowmask"), 0, 348, 450, 2, 2, 0, c_white, obj_stage_main.shadow_opacity);
    if (!obj_stage_main.transforming || obj_stage_main.transform_state != 1) {
        switch (obj_stage_main.stage) {
            case ST.EARTH:
                with (obj_stage_article) if (num == 7 && fg == 0) {
                    var rock_pos = [x, fake_y];
                    var rock_yscale = image_yscale;
                }
                draw_sprite_ext(sprite_get("earth_fg1"), 0, rock_pos[0], rock_pos[1], 2, rock_yscale, 0, c_white, obj_stage_main.shadow_opacity);
        }
    }
    
    maskMidder();
    
    with (oPlayer) {
        var y_size = -0.2
        draw_sprite_ext(sprite_index, image_index, x, y, spr_dir + (small_sprites * spr_dir), y_size + (y_size * small_sprites), 0, c_black, 1);
    }
    
    maskFooter();
}

#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);



#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);



#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);