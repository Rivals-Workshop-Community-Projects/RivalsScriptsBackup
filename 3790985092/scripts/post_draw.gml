//post-draw

shader_start();
/*
if (attack == AT_USPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) ) {
    if (window == 3 || window == 4) {
        switch (uspecial_loops) {
            case -1:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, x+1*spr_dir, y-48, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 0:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, x+18*spr_dir+10*spr_dir, y-68-20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir, y-68, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 1:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, x+18*spr_dir+20*spr_dir, y-68-40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+10*spr_dir, y-68-20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir, y-68, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 2:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, x+18*spr_dir+30*spr_dir, y-68-60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+20*spr_dir, y-68-40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+10*spr_dir, y-68-20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir, y-68, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 3:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, x+18*spr_dir+40*spr_dir, y-68-80, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+30*spr_dir, y-68-60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+20*spr_dir, y-68-40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+10*spr_dir, y-68-20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir, y-68, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 4:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, x+18*spr_dir+50*spr_dir, y-68-100, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+40*spr_dir, y-68-80, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+30*spr_dir, y-68-60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+20*spr_dir, y-68-40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+10*spr_dir, y-68-20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir, y-68, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 5:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, x+18*spr_dir+60*spr_dir, y-68-120, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+50*spr_dir, y-68-100, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+40*spr_dir, y-68-80, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+30*spr_dir, y-68-60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+20*spr_dir, y-68-40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+10*spr_dir, y-68-20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir, y-68, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 6:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, x+18*spr_dir+70*spr_dir, y-68-140, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+60*spr_dir, y-68-120, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+50*spr_dir, y-68-100, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+40*spr_dir, y-68-80, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+30*spr_dir, y-68-60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+20*spr_dir, y-68-40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+10*spr_dir, y-68-20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir, y-68, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 7:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, x+18*spr_dir+80*spr_dir, y-68-160, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+70*spr_dir, y-68-140, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+60*spr_dir, y-68-120, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+50*spr_dir, y-68-100, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+40*spr_dir, y-68-80, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+30*spr_dir, y-68-60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+20*spr_dir, y-68-40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir+10*spr_dir, y-68-20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, x+18*spr_dir, y-68, 2*spr_dir, 2, 0, c_white, 1);
            break;
        }
    }
    if (window == 5 || window == 7) {
        switch (uspecial_loops) {
            case -1:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, saved_hand_pos_x, saved_hand_pos_y, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 0:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, saved_hand_pos_x, saved_hand_pos_y, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-10*spr_dir, saved_hand_pos_y+20, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 1:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, saved_hand_pos_x, saved_hand_pos_y, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-10*spr_dir, saved_hand_pos_y+20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-20*spr_dir, saved_hand_pos_y+40, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 2:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, saved_hand_pos_x, saved_hand_pos_y, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-10*spr_dir, saved_hand_pos_y+20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-20*spr_dir, saved_hand_pos_y+40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-30*spr_dir, saved_hand_pos_y+60, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 3:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, saved_hand_pos_x, saved_hand_pos_y, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-10*spr_dir, saved_hand_pos_y+20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-20*spr_dir, saved_hand_pos_y+40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-30*spr_dir, saved_hand_pos_y+60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-40*spr_dir, saved_hand_pos_y+80, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 4:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, saved_hand_pos_x, saved_hand_pos_y, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-10*spr_dir, saved_hand_pos_y+20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-20*spr_dir, saved_hand_pos_y+40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-30*spr_dir, saved_hand_pos_y+60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-40*spr_dir, saved_hand_pos_y+80, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-50*spr_dir, saved_hand_pos_y+100, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 5:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, saved_hand_pos_x, saved_hand_pos_y, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-10*spr_dir, saved_hand_pos_y+20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-20*spr_dir, saved_hand_pos_y+40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-30*spr_dir, saved_hand_pos_y+60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-40*spr_dir, saved_hand_pos_y+80, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-50*spr_dir, saved_hand_pos_y+100, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-60*spr_dir, saved_hand_pos_y+120, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 6:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, saved_hand_pos_x, saved_hand_pos_y, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-10*spr_dir, saved_hand_pos_y+20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-20*spr_dir, saved_hand_pos_y+40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-30*spr_dir, saved_hand_pos_y+60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-40*spr_dir, saved_hand_pos_y+80, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-50*spr_dir, saved_hand_pos_y+100, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-60*spr_dir, saved_hand_pos_y+120, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-70*spr_dir, saved_hand_pos_y+140, 2*spr_dir, 2, 0, c_white, 1);
            break;
            case 7:
            draw_sprite_ext(sprite_get("uspecial_hand"), 0, saved_hand_pos_x, saved_hand_pos_y, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-10*spr_dir, saved_hand_pos_y+20, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-20*spr_dir, saved_hand_pos_y+40, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-30*spr_dir, saved_hand_pos_y+60, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-40*spr_dir, saved_hand_pos_y+80, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-50*spr_dir, saved_hand_pos_y+100, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-60*spr_dir, saved_hand_pos_y+120, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-70*spr_dir, saved_hand_pos_y+140, 2*spr_dir, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("uspecial_arm"), 0, saved_hand_pos_x-80*spr_dir, saved_hand_pos_y+160, 2*spr_dir, 2, 0, c_white, 1);
        }
    }
}
*/

if (ink_boost) {
    draw_sprite_ext(sprite_get("buff_fx_front"), get_gameplay_time()/4, x, y, 2, 2, 0, c_white, 1);
}
shader_end();


if (get_match_setting(SET_HITBOX_VIS) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && window == 4) {
    draw_set_alpha(.5);
    draw_ellipse_color(x + (uspec_grabs[0][0] * spr_dir) - uspec_grabs[0][2], y - uspec_grabs[0][1] - uspec_grabs[0][3], x + (uspec_grabs[0][0] * spr_dir) + uspec_grabs[0][2], y - uspec_grabs[0][1] + uspec_grabs[0][3], c_gray, c_gray, false);
    draw_ellipse_color(x + (uspec_grabs[1][0] * spr_dir) - uspec_grabs[1][2], y - uspec_grabs[1][1] - uspec_grabs[1][3], x + (uspec_grabs[1][0] * spr_dir) + uspec_grabs[1][2], y - uspec_grabs[1][1] + uspec_grabs[1][3], c_gray, c_gray, false);
    draw_ellipse_color(x + (uspec_grabs[2][0] * spr_dir) - uspec_grabs[2][2], y - uspec_grabs[2][1] - uspec_grabs[2][3], x + (uspec_grabs[2][0] * spr_dir) + uspec_grabs[2][2], y - uspec_grabs[2][1] + uspec_grabs[2][3], c_gray, c_gray, false);
    draw_ellipse_color(x + (uspec_grabs[3][0] * spr_dir) - uspec_grabs[3][2], y - uspec_grabs[3][1] - uspec_grabs[3][3], x + (uspec_grabs[3][0] * spr_dir) + uspec_grabs[3][2], y - uspec_grabs[3][1] + uspec_grabs[3][3], c_black, c_black, false);
    draw_set_alpha(1);
}