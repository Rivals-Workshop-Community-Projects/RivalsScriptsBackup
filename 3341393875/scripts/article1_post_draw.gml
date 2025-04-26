if state == "FALL" && spawn_invincibility{
    draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, 0, c_gray, 1);
}

if get_match_setting(SET_HITBOX_VIS) && state != "DEATH"{
    draw_sprite_ext(sprite_get("summon_mask"), 0, x, y, 2 * spr_dir, 2, 0, c_white, 0.5);
}

switch minion_name{
    case "banditochicken":
        if (get_match_setting(SET_HITBOX_VIS) && state == "WALK"){
            draw_sprite_ext(sprite_get("summon_mask"), 0, x + 185 * spr_dir, y + 10, 2 * spr_dir, 2, 0, c_blue, 1);
        }
    break;
    case "cheeseslime":
        if slime_level != -999 && !(state == "DEATH" && state_timer > 4){
            for (var s = slime_left_bound; s <= slime_right_bound; s += 32;){
                draw_sprite_ext(sprite_get("stickyslime"), state == "WALK"? s == slime_left_bound || s == slime_right_bound? 0:1:2, s, slime_level, 1, 1, 0, c_white, 1);
            }
        }
    break;
    case "badrat":
        if (get_match_setting(SET_HITBOX_VIS) && state == "WALK"){
            draw_rectangle_color(x, y, x + (150 * spr_dir), y, c_red, c_red, c_red, c_red, false);
            draw_rectangle_color(x + (150 * spr_dir), y, x + (150 * spr_dir), y - 50, c_red, c_red, c_red, c_red, false);
            draw_rectangle_color(x, y - 50, x + (150 * spr_dir), y - 50, c_red, c_red, c_red, c_red, false);
            draw_rectangle_color(x, y, x, y - 50, c_red, c_red, c_red, c_red, false);
        }
    break;
    case "ninjaslice":
        if (get_match_setting(SET_HITBOX_VIS) && state == "WALK"){
            draw_rectangle_color(x, y, x + (150 * spr_dir), y, c_red, c_red, c_red, c_red, false);
            draw_rectangle_color(x + (150 * spr_dir), y, x + (150 * spr_dir), y - 30, c_red, c_red, c_red, c_red, false);
            draw_rectangle_color(x, y - 30, x + (150 * spr_dir), y - 30, c_red, c_red, c_red, c_red, false);
            draw_rectangle_color(x, y, x, y - 30, c_red, c_red, c_red, c_red, false);
            
            draw_rectangle_color(x, y, x + (50 * spr_dir), y, c_blue, c_blue, c_blue, c_blue, false);
            draw_rectangle_color(x + (50 * spr_dir), y, x + (50 * spr_dir), y - 150, c_blue, c_blue, c_blue, c_blue, false);
            draw_rectangle_color(x, y - 150, x + (50 * spr_dir), y - 150, c_blue, c_blue, c_blue, c_blue, false);
            draw_rectangle_color(x, y, x, y - 150, c_blue, c_blue, c_blue, c_blue, false);
        }
    break;
    case "minijohn":
        if (get_match_setting(SET_HITBOX_VIS) && state == "WALK"){
            draw_rectangle_color(x, y, x + (150 * spr_dir), y, c_red, c_red, c_red, c_red, false);
            draw_rectangle_color(x + (150 * spr_dir), y, x + (150 * spr_dir), y - 50, c_red, c_red, c_red, c_red, false);
            draw_rectangle_color(x, y - 50, x + (150 * spr_dir), y - 50, c_red, c_red, c_red, c_red, false);
            draw_rectangle_color(x, y, x, y - 50, c_red, c_red, c_red, c_red, false);
        }
    break;
}

