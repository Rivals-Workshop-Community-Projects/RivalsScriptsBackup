// FStrong Smear
//draw_sprite_ext(sprite_get("soul"), image_index, x + lengthdir_x(uspec_soul_length,joy_dir) + (4 * spr_dir), y - 34 + lengthdir_y(uspec_soul_length,joy_dir), spr_dir, 1, 0, soul_col, 1);

// FSpecial Soul
if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR{
    switch(attack){
        case AT_FSTRONG_2:
            if get_player_color(player) != 19{
                draw_sprite_ext(sprite_get("fstrong_2_smear"), image_index, x, y, spr_dir * 2, 2, 0, stronghit_col, 1);
            }
            break;
        case AT_DSTRONG:
            draw_sprite_ext(sprite_get("dstrong_ralsei"), image_index, x, y, spr_dir * 2, 2, 0, c_white, 1);
            break;
        case AT_FSPECIAL:
            draw_sprite_ext(sprite_get("fspecial_soul"), image_index, x, y, spr_dir * 2, 2, 0, soul_col, 1);
            break;
        case AT_USPECIAL:
            if (window <= 2 && state_timer > 0) {
                draw_line_width_color(x, y-34, x+lengthdir_x(temp_soul_dist, uspec_dir), y - 34 + lengthdir_y(temp_soul_dist, uspec_dir), 4, soul_col, soul_col)
                draw_sprite_ext(
                    sprite_get("soul"), 
                    image_index, 
                    x + lengthdir_x(temp_soul_dist, uspec_dir) + (4 * spr_dir), 
                    y - 34 + lengthdir_y(temp_soul_dist, uspec_dir), 
                    spr_dir, 
                    1, 
                    0, 
                    soul_col, 
                    1
                    );
                
            }
            break;
    }
}

/*
draw_debug_text(x, y+16, "x: " + string(x));
draw_debug_text(x, y+32, "y: " + string(y));
draw_debug_text(x, y+48, "hsp: " + string(hsp));
draw_debug_text(x, y+64, "vsp: " + string(vsp));
if soul != noone{
    draw_debug_text(x, y+80, "dist: " + string(point_distance(x, y, soul.x, soul.y)));
}*/