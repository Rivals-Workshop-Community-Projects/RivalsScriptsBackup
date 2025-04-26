//ladder

if (state == 2){
    switch (extension_size){
    case 0:
        draw_sprite_part_ext(sprite_get("ladder_med"), 0, 0, 0, 16, 45 * (extend_timer/extend_timer_max), x - 14*spr_dir, y - lerp(26, 116, extend_timer/extend_timer_max), 2*spr_dir, 2, c_white, 1);
    break;
    case 1:
        draw_sprite_part_ext(sprite_get("ladder_big"), 0, 0, 0, 16, 65 * (extend_timer/extend_timer_max), x - 14*spr_dir, y - lerp(26, 156, extend_timer/extend_timer_max), 2*spr_dir, 2, c_white, 1);
    break;
    case 2:
        draw_sprite_part_ext(sprite_get("ladder_huge"), 0, 0, 0, 16, 85 * (extend_timer/extend_timer_max), x - 14*spr_dir, y - lerp(26, 196, extend_timer/extend_timer_max), 2*spr_dir, 2, c_white, 1);
    break;
    case 3:
        draw_sprite_part_ext(sprite_get("ladder_giganto"), 0, 0, 0, 16, 105 * (extend_timer/extend_timer_max), x - 14*spr_dir, y - lerp(26, 236, extend_timer/extend_timer_max), 2*spr_dir, 2, c_white, 1);
    break;
    }
}

if (state == 4 && is_collapsing){
    switch (extension_size){
    case 0:
        draw_sprite_part_ext(sprite_get("ladder_collapse_med"), 0, 0, 0, 45 * (collapse_timer/collapse_timer_max), 16, x + (116*spr_dir) - (lerp(90, 0, collapse_timer/collapse_timer_max))*spr_dir, y - 14, -2*spr_dir, 2, c_white, 1);
    break;
    case 1:
        draw_sprite_part_ext(sprite_get("ladder_collapse_big"), 0, 0, 0, 65 * (collapse_timer/collapse_timer_max), 16, x + (156*spr_dir) - (lerp(130, 0, collapse_timer/collapse_timer_max))*spr_dir, y - 14, -2*spr_dir, 2, c_white, 1);
    break;
    case 2:
        draw_sprite_part_ext(sprite_get("ladder_collapse_huge"), 0, 0, 0, 85 * (collapse_timer/collapse_timer_max), 16, x + (196*spr_dir) - (lerp(170, 0, collapse_timer/collapse_timer_max))*spr_dir, y - 14, -2*spr_dir, 2, c_white, 1);
    break;
    case 3:
        draw_sprite_part_ext(sprite_get("ladder_collapse_giganto"), 0, 0, 0, 105 * (collapse_timer/collapse_timer_max), 16, x + (236*spr_dir) - (lerp(210, 0, collapse_timer/collapse_timer_max))*spr_dir, y - 14, -2*spr_dir, 2, c_white, 1);
    break;
    }
}