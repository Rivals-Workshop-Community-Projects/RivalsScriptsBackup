//draw_hud.gml

//fun defining each 5% portion individually

var temp_color = c_white;

var cards_spr = sprite_get("no_cards");

if (card_count >= 5) {
    cards_spr = sprite_get("025_card");
}

if (card_count >= 10) {
    cards_spr = sprite_get("05_card");
}

if (card_count >= 15) {
    cards_spr = sprite_get("075_card");
}

if (card_count >= 20) {
    cards_spr = sprite_get("1_card");
}

if (card_count >= 25) {
    cards_spr = sprite_get("125_card");
}

if (card_count >= 30) {
    cards_spr = sprite_get("15_card");
}

if (card_count >= 35) {
    cards_spr = sprite_get("175_card");
}

if (card_count >= 40) {
    cards_spr = sprite_get("2_card");
}

if (card_count >= 45) {
    cards_spr = sprite_get("225_card");
}

if (card_count >= 50) {
    cards_spr = sprite_get("25_card");
}

if (card_count >= 55) {
    cards_spr = sprite_get("275_card");
}

if (card_count >= 60) {
    cards_spr = sprite_get("3_card");
}

if (card_count >= 65) {
    cards_spr = sprite_get("325_card");
}

if (card_count >= 70) {
    cards_spr = sprite_get("35_card");
}

if (card_count >= 75) {
    cards_spr = sprite_get("375_card");
}

if (card_count >= 80) {
    cards_spr = sprite_get("4_card");
}

if (card_count >= 85) {
    cards_spr = sprite_get("425_card");
}

if (card_count >= 90) {
    cards_spr = sprite_get("45_card");
}

if (card_count >= 95) {
    cards_spr = sprite_get("475_card");
}

if (card_count >= 100) {
    cards_spr = sprite_get("5_card");
}

if (get_gameplay_time() <= 120 && !is_ai) {
       draw_debug_text(temp_x- 16,temp_y - 68,"Press TAUNT to swap dash inputs");
}

if (!dash_enabled && get_gameplay_time() <= 120 && !is_ai) {
       draw_debug_text(temp_x,temp_y - 48,"Mid-air Dash Input: TAUNT");
}

if (dash_enabled && get_gameplay_time() <= 120 && !is_ai) {
       draw_debug_text(temp_x,temp_y - 48,"Mid-air Dash Input: Dash");
}

draw_sprite_ext(cards_spr, 0, temp_x+104, temp_y-24, 2, 2, 0, temp_color, 1);

draw_sprite_ext(sprite_get("shots_hud"),current_shot-1,temp_x+12,temp_y-32,2,2,0,c_white,1);

draw_debug_text(temp_x + 202, temp_y - 14, string(card_count) + "%");



// used to get the "SD_ID" variable so i can add it to the list of bosses

//draw_debug_text(temp_x + 162, temp_y - 36, string(get_stage_data(SD_ID)));


/*
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
