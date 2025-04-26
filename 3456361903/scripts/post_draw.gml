//postdraw

shader_start();

if (state == PS_PARRY_START && parry_cooldown == 0) {
    draw_sprite_ext(sprite_get("parry_real"), 0, x, y, spr_dir, 1, 0, c_white, 1)
} else if (state == PS_PARRY && parry_cooldown == 0) {
    draw_sprite_ext(sprite_get("parry_real"), parry_anim_i, x, y, spr_dir, 1, 0, c_white, 1)
}
shader_end();

////unmoving hud code by jh
//if (!playtest_active){
//    if ((state == PS_AIR_DODGE or state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD) && draw_indicator == false){
//    var size_setting = get_local_setting(SET_HUD_SIZE);
//    var name_setting = get_local_setting(SET_HUD_NAMES);
//    
//    if (name_setting != 0 || size_setting != 0){
//        draw_sprite_ext(sprite_get("hud_player_arrow"), 0, airdodge_pos_x - 7, airdodge_pos_y - 81, 2, 2, 0, airdodge_player_col, 1);
//        if (get_player_damage(player) >= 100){
//            if (name_setting == 1 && size_setting == 0){
//                draw_sprite_ext(sprite_get("hud_player_arrow"), 0, airdodge_pos_x - 7, airdodge_pos_y - 81, 2, 2, 0, c_black, 1);
//            } else {
//                switch (size_setting){
//                    case 1:
//                    if (name_setting == 0){
//                         draw_sprite_ext(sprite_get("hud_damage_boxes"), 0, airdodge_pos_x - 22, airdodge_pos_y - 119, 1, 1, 0, c_white, 1);
//                    } else if (name_setting == 1) {
//                        draw_sprite_ext(sprite_get("hud_damage_boxes"), 1, airdodge_pos_x - 22, airdodge_pos_y - 119, 1, 1, 0, c_white, 1);
//                    }
//                    break;
//                    case 2:
//                    if (name_setting == 0){
//                         draw_sprite_ext(sprite_get("hud_damage_boxes"), 2, airdodge_pos_x - 24, airdodge_pos_y - 119, 1, 1, 0, c_white, 1);
//                    } else if (name_setting == 1) {
//                        draw_sprite_ext(sprite_get("hud_damage_boxes"), 3, airdodge_pos_x - 24, airdodge_pos_y - 119, 1, 1, 0, c_white, 1);
//                    }
//                    break;
//                }
//            }
//        }
//    }
//    
//    if (name_setting != 0){
//        textDraw(airdodge_pos_x, airdodge_pos_y - 96, "fName", airdodge_player_col, 0, 1000, fa_center, 1, 4, 1, string(get_player_name(player)), 0);
//    }
//    
//    if (size_setting != 0){
//    textDraw(airdodge_pos_x + (size_setting == 1 ? 2 : 0), airdodge_pos_y - (96 + (name_setting*16)) - (size_setting == 2 ? 10 : 0), (size_setting == 1? "fName" : "roundFont"), c_white, 0, 1000, fa_center, 1, 4, 1, string(get_player_damage(player)) + "%", 0);
//
//        }
//    }
//}