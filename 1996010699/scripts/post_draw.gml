if(itemCredits > 0 && !hitpause){
	if (get_gameplay_time() % 5 - (itemCredits > 3 ? 3 : itemCredits) == 0){
		spawn_hit_fx( x - ((24 - random_func(1, 52, true)) * spr_dir) , y - (10 + random_func(2, 50, true)) , smokeXP );
	}
}

if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_DSPECIAL){
	var itemFontColor;
	itemFontColor = item[ID_chosen, 9];
	if(window == 2){
		itemSprite = item[ID_chosen, 2];
		if(legendaryPinged == false && item[ID_chosen, 8] == sprite_get("hud_shop1")){
			legendaryPinged = true;
			sound_play(asset_get("sfx_may_arc_coineat"));
		}
		draw_sprite(itemSprite, 0, x - 55 , y - 75);
		textDraw(x - 50, y - 96, "fName", itemFontColor, 0, 1000, 1, true, 1, item[ID_chosen, 0]);
		textDraw(x , y - 112, "fName", c_orange, 0, 1000, 1, true, 1, string(itemCredits));
		textDraw(x - 36 , y - 150, "fName", c_lime, 0, 1000, 1, true, 1, "Attack: Buy");
		textDraw(x - 36 , y - 130, "fName", c_red, 0, 1000, 1, true, 1, "Special: Void");
		//draw_debug_text(x - 50, y - 95, string(item[ID_chosen, 0]));
		//draw_debug_text(x - 86, y - 65, string(item[ID_chosen, 6]));
		textDraw(x - 86, y - 65, "fName", c_silver, 0, 1000, 1, true, 1, item[ID_chosen, 6]);
	} else if(window == 3){
		draw_sprite(itemSprite, 0, x - 55 , y - 75);
		textDraw(x - 50, y - 96, "fName", itemFontColor, 0, 1000, 1, true, 1, item[ID_chosen, 0]);
		textDraw(x , y - 112, "fName", c_orange, 0, 1000, 1, true, 1, string(itemCredits));
		//draw_debug_text(x - 50, y - 95, string(item[ID_chosen, 0]));
		textDraw(x - 86, y - 65, "fName", $b2ffc9, 0, 1000, 1, true, 1, item[ID_chosen, 6]);
		//draw_debug_text(x - 86, y - 65, string(item[ID_chosen, 6]));		//flavor text is x, 1... description is x,6
	}
}

user_event(12);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_halign(fa_left);
draw_set_font(asset_get(argument[2]));
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);