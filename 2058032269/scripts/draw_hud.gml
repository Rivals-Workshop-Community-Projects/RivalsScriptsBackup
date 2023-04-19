//draw_hud.gml

var temp_color = c_white;
var card_spr = floor(card_count/5);

if (get_gameplay_time() <= 120 && !is_ai) {
       draw_debug_text(temp_x- 16,temp_y - 68,"Press TAUNT to swap dash inputs");
       draw_debug_text(temp_x,temp_y - 48,(dash_enabled ? "Mid-air Dash Input: Dash" : "Mid-air Dash Input: TAUNT"));
}

draw_sprite_ext(sprite_get("cards"), card_spr, temp_x+104, temp_y-24, 2, 2, 0, temp_color, (card_spr));
draw_sprite_ext(sprite_get("shots_hud"),current_shot-1,temp_x+12,temp_y-32,2,2,0,c_white, 1);
draw_debug_text(temp_x + 202, temp_y - 14, string(floor(card_count)) + "%");

// used to get the "SD_ID" variable so i can add it to the list of bosses
//draw_debug_text(temp_x + 162, temp_y - 36, string(get_stage_data(SD_ID)));