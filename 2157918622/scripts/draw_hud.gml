var temp_color = c_white;

palette_name[0]  = "Default";
palette_name[1]  = "Absa";
palette_name[2]  = "Bayonetta";
palette_name[3]  = "Temmie";
palette_name[4]  = "Lucy";
palette_name[5]  = "Hikaru";
palette_name[6]  = "Mollo";
palette_name[7]  = "Olympia";
palette_name[8]  = "Gardevoir";
palette_name[9] = "Ashe";
palette_name[10] = "Exetior";
palette_name[11] = "R-00";
palette_name[12] = "Zetta";
palette_name[13] = "Clairen";
palette_name[14] = "Hooters";
palette_name[15] = "Trans Pride";
palette_name[16] = "Non-Binary Pride";
palette_name[17] = "Feri";
palette_name[18] = "Indeed";
palette_name[19] = "Iroh";
palette_name[20] = "Acid Rainbows";
palette_name[21] = "Gustav";
palette_name[22] = "Captain Falcon";
palette_name[23] = "Pomme";
palette_name[24] = "Blake";
palette_name[25] = "Zero Suit Samus";
palette_name[26] = "Zerra";
palette_name[27] = "Darma";
palette_name[28] = "Nial";

if (state == PS_ATTACK_GROUND && attack == AT_EXTRA_1){
    draw_debug_text(temp_x, temp_y - 68, "Palette selector open");
    draw_debug_text(temp_x, temp_y - 52, "Press left or right to change");
    draw_debug_text(temp_x, temp_y - 36, "Palette: " + palette_name[skinOverride]);
    draw_debug_text(temp_x, temp_y - 20, "Taunt again to close");
}

// debug
//var articlecount = 0;
//with (obj_article1)
//{
//	if (orig_player == other.player)
//		articlecount++;
//}
//draw_debug_text(temp_x,temp_y - 56, string(articlecount));

////abyss gui code
//ab_hud_x = temp_x;
//ab_hud_y = temp_y;
////this is for the outdated warning message
//if ("depNotice" not in self) depNotice = 0;
//if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
//#define abyssDraw 
///// abyssDraw()
///// draws text and images the player recieved from the abyss buddy.
//if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
//    if (ds_list_size(abyss_drawArray) > 0) {
//        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
//            var _text = abyss_drawArray[| _i];
//            if draw_get_halign() != _text[6] {
//                draw_set_halign(_text[6]);
//            }
//            switch (_text[0]) {
//                case 0:
//                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
//                    break;
//                case 1:
//                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
//                    break;
//                case 2:
//                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
//                    break;
//                case 3:
//                    if draw_get_font() != 1 draw_set_font(1);
//              draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
//                    break;
//                default:
//                break;
//            }
//        }
//    }
//    //finished drawing, so clear the table for the next frame.
//    ds_list_clear(abyss_drawArray);
//}
////return draw_calls;
//#define draw_text_plus
///// draw_text_plus(x, y, text, font, color = c_white)
///// draws outlined text in any in-game font.
//if draw_get_font() != argument[3] {
//    draw_set_font(argument[3]);
//}
//draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
//draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
//draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
//draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
//draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
//draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
//draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
//draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
//draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);
