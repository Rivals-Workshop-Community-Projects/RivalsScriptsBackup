var desc_x = 742
var controls_x = 45

if (actual_practice && state != PS_SPAWN){
    draw_debug_text( temp_x, temp_y - 40, "Hold up/down while taunting.");
}

shader_start();
draw_sprite( sprite_get("poncounter"), 0, temp_x + 0, temp_y - 22);
shader_end();
draw_debug_text( temp_x + 36, temp_y - 17, string( pon_count ));

draw_sprite( sprite_get("HUDbadges"), badge_slot_1, temp_x + 115, temp_y - 24);
draw_sprite( sprite_get("HUDbadges"), badge_slot_2, temp_x + 145, temp_y - 24);
draw_sprite( sprite_get("HUDbadges"), badge_slot_3, temp_x + 175, temp_y - 24);

if (state == PS_SPAWN && state_timer <= 100 && shop_type == "current"){
    draw_debug_text( temp_x, temp_y - 45, string( "TAUNT: disable badge autoequip" ));
}

if (selecting == 1 && attack == AT_DSPECIAL && state == PS_ATTACK_GROUND){
    if (slot_selected == 0){
        draw_sprite(sprite_get("cursor"), 0, temp_x + 118, temp_y - 40);
    }
    if (slot_selected == 1){
        draw_sprite(sprite_get("cursor"), 0, temp_x + 148, temp_y - 40);
    }
    if (slot_selected == 2){
        draw_sprite(sprite_get("cursor"), 0, temp_x + 178, temp_y - 40);
    }
}

//shop stuff
if (shop_open == 1 && attack == AT_DSPECIAL && state == PS_ATTACK_GROUND){
    draw_sprite(sprite_get("shopBGV2"), 0, 24, 16);
    draw_sprite(sprite_get("badge_magnet"), magnet_bought, 24, 16);
    draw_debug_text( 270, 92, string( magnet_price ));
    draw_sprite(sprite_get("badge_mail"), mail_bought, 24, 16);
    draw_debug_text( 270 + 82, 92, string( mail_price ));
    draw_sprite(sprite_get("badge_beam"), beam_bought, 24, 16);
    draw_debug_text( 270 + 80 + 80, 92, string( beam_price ));
    draw_sprite(sprite_get("badge_bonk"), bonk_bought, 24, 16);
    draw_debug_text( 270 + 80 + 80 + 80, 92, string( bonk_price ));
    draw_sprite(sprite_get("badge_umbrella"), umbrella_bought, 24, 16);
    draw_debug_text( 270 + 80 + 80 + 80 + 82, 92, string( umbrella_price ));
    draw_sprite(sprite_get("badge_onehit"), onehit_bought, 24, 16);
    draw_debug_text( 270 + 80 + 80 + 80 + 80 + 84, 92, string( onehit_price ));
    draw_debug_text( controls_x, 35, string( "Select/Buy: ATTACK" ));
    draw_debug_text( controls_x, 70, string( "Back: DODGE" ));
    switch (item_selected){
        case 1:
            draw_sprite(sprite_get("cursor"), onehit_bought, 266, 10);
            draw_debug_text( desc_x, 14, string( "Magnet Badge" ));
            draw_debug_text( desc_x, 40, string( "Pull in nearby pons," ));
            draw_debug_text( desc_x, 65, string( "making collecting easier!" ));
        break;
        case 2:
            draw_sprite(sprite_get("cursor"), onehit_bought, 266 + 82*(item_selected - 1), 10);
            draw_debug_text( desc_x, 14, string( "Scooter Badge" ));
            draw_debug_text( desc_x, 40, string( "Ride an accelerating" ));
            draw_debug_text( desc_x, 65, string( "scooter while dashing!" ));
        break;
        case 3:
            draw_sprite(sprite_get("cursor"), onehit_bought, 266 + 82*(item_selected - 1), 10);
            draw_debug_text( desc_x, 14, string( "Hookshot Badge" ));
            draw_debug_text( desc_x, 40, string( "Replaces Neutral Special" ));
            draw_debug_text( desc_x, 65, string( "with a command grab." ));
        break;
        case 4:
            draw_sprite(sprite_get("cursor"), onehit_bought, 266 + 82*(item_selected - 1) - 1, 10);
            draw_debug_text( desc_x, 14, string( "No Bonk Badge" ));
            draw_debug_text( desc_x, 40, string( "Allows for you to cancel" ));
            draw_debug_text( desc_x, 65, string( "Forward Special on-hit." ));
        break;
        case 5:
            draw_sprite(sprite_get("cursor"), onehit_bought, 266 + 82*(item_selected - 1) - 2, 10);
            draw_debug_text( desc_x, 14, string( "Hover Badge" ));
            draw_debug_text( desc_x, 40, string( "Makes Up Special travel" ));
            draw_debug_text( desc_x, 65, string( "much higher." ));
        break;
        case 6:
            draw_sprite(sprite_get("cursor"), onehit_bought, 266 + 82*(item_selected - 1) - 2, 10);
            draw_debug_text( desc_x, 14, string( "1-Hit Hero Badge" ));
            draw_debug_text( desc_x, 40, string( "You die in one hit." ));
            draw_debug_text( desc_x, 65, string( "Only for the brave!" ));
        break;
    }
}


//RUNES

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
              draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);