//article2_pre_draw.gml

gpu_set_fog(1, c_yellow, 0, 1);
draw_sprite_ext( spriteUsed, animFrame, x, y+4, currDir, 1, 0, c_yellow, sprAlpha );
gpu_set_fog(0, c_white, 0, 0);