//post draw
shader_start();
if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
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

draw_sprite_ext(sprite_get("arrow"), 0, x, y - char_height - 22, 1, 1, 0, col_arrow, 1);
draw_sprite_ext(sprite_get("chargemeter"), charge, x - 22, y - char_height - 30, 2, 2, 0, c_white, 1);

user_event(12);