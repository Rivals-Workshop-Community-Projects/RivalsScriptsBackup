//post draw
shader_start();
if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
    if attack == AT_FSTRONG{
        var clone_distx;
        var clone_disty = 16;
        draw_sprite_ext(sprite_get("cloneindicator"), 0, x + (126 * spr_dir + round(strong_charge * 2.5) * spr_dir), y - clone_disty, 2 * spr_dir, 2, 0, c_white, clonevis_indicator);
    }
    if !free{
        if attack == AT_NSPECIAL and window == 2{
            switch(charge){
                case 0:
                    draw_sprite_ext(sprite_get("vfx_nspecialcharge"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
                    draw_sprite_ext(sprite_get("nspecial_charging1"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
                    break;
                case 1:
                    draw_sprite_ext(sprite_get("vfx_nspecialcharge1"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
                    draw_sprite_ext(sprite_get("nspecial_charging2"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
                    break;
                case 2:
                    draw_sprite_ext(sprite_get("vfx_nspecialcharge2"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
                    draw_sprite_ext(sprite_get("nspecial_charging3"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
                    break;
                case 3:
                    draw_sprite_ext(sprite_get("vfx_nspecialcharge3"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
                    draw_sprite_ext(sprite_get("nspecial_charging4"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
                    break;
            }
        }
    } else {
        if attack == AT_NSPECIAL and window == 2{
            switch(charge){
                case 0:
                    draw_sprite_ext(sprite_get("nspecial_charging1"), image_index, x, y - 2, spr_dir, 1, 0, c_white, 1);
                    break;
                case 1:
                    draw_sprite_ext(sprite_get("nspecial_charging2"), image_index, x, y - 2, spr_dir, 1, 0, c_white, 1);
                    break;
                case 2:
                    draw_sprite_ext(sprite_get("nspecial_charging3"), image_index, x, y - 2, spr_dir, 1, 0, c_white, 1);
                    break;
                case 3:
                    draw_sprite_ext(sprite_get("nspecial_charging4"), image_index, x, y - 2, spr_dir, 1, 0, c_white, 1);
                    break;
            }
        }
    }
}

shader_end();

if attack != AT_TAUNT_2 && (state != 5 || state != 6) && window != 6{
    draw_sprite_ext(sprite_get("arrow"), 0, x, y - char_height - 22, 1, 1, 0, col_arrow, 1);
    draw_sprite_ext(sprite_get("chargemeter"), charge, x - 22, y - char_height - 30, 2, 2, 0, c_white, 1);
}

// Hat
if get_player_color(player) == 29{
    if wearing_hat && sprite_index == sprite_get("idle"){
      draw_sprite_ext(sprite_get("crown"), image_index, x, y, 2 * spr_dir, 2, 0, -1, 1);
    }
}