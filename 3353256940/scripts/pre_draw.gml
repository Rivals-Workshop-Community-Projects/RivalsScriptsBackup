shader_start()

if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 2) {
    switch (bomb_angle) {
        case 45: //str8
            draw_sprite_ext(sprite_get("vfx_nspec_arrows"), 1, x+32*spr_dir, y-64, 1*spr_dir , 1 ,0, c_white, 1);
        break;
        case 90: //uppies
            draw_sprite_ext(sprite_get("vfx_nspec_arrows"), 0, x+16*spr_dir, y-96, 1*spr_dir , 1 ,0, c_white, 1);
        break;
        case 0: //downies
            draw_sprite_ext(sprite_get("vfx_nspec_arrows"), 2, x+42*spr_dir, y-44, 1*spr_dir , 1 ,0, c_white, 1);
        break;
    }
}

if (attack == AT_DSPECIAL && state == PS_ATTACK_GROUND && window == 2) {
    switch (latest_pipe_angle) {
        case 90: //str8
            draw_sprite_ext(sprite_get("pipe_blueprints"), 0, x+pipe_distance*spr_dir, y, 1*spr_dir, 1, 0, c_white, 1);
        break;
        case 45:
            draw_sprite_ext(sprite_get("pipe_blueprints"), 1, x+pipe_distance*spr_dir, y, 1*latest_pipe_dir , 1 ,0, c_white, 1);
        break;
    }
}

//Duplicated for window 2 in post_draw
if (attack == AT_EXTRA_3 && state == PS_ATTACK_AIR && window == 3) {
    var l_off = (spr_dir == -1) ? 2 : 0; // since we don't flip based on spr_dir, extra alignment is needed
    draw_sprite_stretched(sprite_get("uspec_claw_wire"), 0, claw_x-6+l_off, y-38, 10, claw_abs_y-y+36);
    draw_sprite(sprite_get("uspec_claw_tip"), 0, claw_x+l_off, claw_abs_y);
}

shader_end();