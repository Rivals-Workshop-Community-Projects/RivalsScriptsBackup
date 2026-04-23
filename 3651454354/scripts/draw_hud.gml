hud_x = temp_x;
hud_y = temp_y;

var fspecial_vc = 0
	if get_gameplay_time() < 130 && fspecial_vc = 0{
	textDraw(temp_x - 15, temp_y - 22, "fName", c_white, 0.2, 6000, fa_left, 1, true, 1, "Press TAUNT to enable Fspec voice", false)
	}

draw_sprite_ext(sprite_get("diamond_counter"), (nspecial_ammo), temp_x + 149, temp_y - 6, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("roulette_wheel"), (roulette_rot), temp_x + 167, temp_y - 23, 1, 1, 0, c_white, 1);

if move_cooldown[AT_DSPECIAL] > 0{
    gpu_set_fog(1, c_black, 0, 1); 
    var shade = draw_sprite_ext(sprite_get("roulette_wheel"), image_index, temp_x + 167, temp_y - 23, 1, 1, spr_angle, c_black, 0.75); //draw the foggy sprite on top of the sprite
	gpu_set_fog(0, c_white, 0, 0); 
}

pirouette_text = pirouette_selected;

effects[0] = "0: ERROR"
effects[1] = "15: On Fire"
effects[2] = "1: Foley"
effects[3] = "2: Slippery"
effects[4] = "3: Awkward"
effects[5] = "4: Tranquil"
effects[6] = "5: Useless Bird"
effects[7] = "6: Attack Boost"
effects[8] = "7: Kaboom"
effects[9] = "8: Ghastly"
effects[10] = "9: Wormhole"
effects[11] = "10: Perfect 10"
effects[12] = "11: Tiring"
effects[13] = "12: Swift Legs"
effects[14] = "13: Twisted Ankle"
effects[15] = "14: Full House"



if (get_match_setting(SET_PRACTICE) = true) && get_gameplay_time() >= 130 {textDraw(temp_x + 6, temp_y - 15, "fName", c_white, 0.2, 6000, fa_left, 1, true, 1, (effects[pirouette_text]), false)}


//if chaos = 500{
//    raw_sprite_ext(sprite_get("chaos_meter"), (22), temp_x - 25, temp_y - 48, 1, 1, 0, c_white, 1);d
//}else{
//    draw_sprite_ext(sprite_get("chaos_meter"), (floor(chaos/23)), temp_x - 25, temp_y - 48, 1, 1, 0, c_white, 1);
//}
//if chaos >= 299{
//    textDraw(
//                temp_x + 6,
//                temp_y - 15,
//                "fName",
//                c_white,
//                0.2,
//                6000,
//                fa_left,
//                1,
//                true,
//                1,
//                "TAUNT + SPECIAL",
//                false
//            )
//}

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}

