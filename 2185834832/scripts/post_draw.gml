//rgdrg
//draw_debug_text( x, y, string( introTimer ));
//draw_debug_text( x, y-100, string( introTimer2 ));

if (attack == AT_USPECIAL && window == 4) {
	//draw_sprite(sprite_get("uspecblast"), window_timer / 2, upBX, upBY - 15);
}

if (attack == AT_USPECIAL && window == 5 && window < 6) {
	if (get_player_color( player ) == 4) {
		draw_sprite(sprite_get("uspecblastchosenone"), (window_timer / 2) + 6, upBX, upBY - 15);
	} else {
		draw_sprite(sprite_get("uspecblast"), (window_timer / 2) + 6, upBX, upBY - 15);
	}
}

if (neutralBStored) {
	//draw_sprite(sprite_get("nspeccharge"), neutralBStoreVisTimer, x - (20 * spr_dir), y - 80);
}

if(state == PS_AIR_DODGE){
	if(state_timer == 4){
	}
}

//Halloween Effect
/*
if((state == PS_IDLE || state == PS_SPAWN) && halloween == true){
    if(spr_dir == 1){ 
        draw_sprite(sprite_get("halloween_right"), image_index, x, y)
    }else{
        draw_sprite(sprite_get("halloween_left"), image_index, x, y)
    }
}
*/