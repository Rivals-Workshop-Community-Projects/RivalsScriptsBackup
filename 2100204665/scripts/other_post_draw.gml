// if(blue_time > 0 and other_player.id == blue_id){
//     outline_color = [254, 31, 112];
//     init_shader();
// }else{
//     outline_color = [0, 0, 0];
//     init_shader();
// }

// draw_debug_text(x, y+20, string(blue_time));
// draw_debug_text(x, y+40, string(blue));
if (url == "2085832560" && attack == AT_TAUNT && state == PS_ATTACK_GROUND) {
    if (window == 1) kquote = -1;
    if (window == 2 || window == 3) {
        draw_set_font(asset_get("fName"));
        draw_debug_text(x - 110 ,y - 120, "GREETINGS! I'VE WRITTEN");
        draw_debug_text(x - 110 ,y - 105,  "HERE TO SAY THAT YOU'VE");
		draw_debug_text(x - 110 ,y - 90,  "BEEN THOROUGLY JAPED AGAIN!");
    }
	if(window == 5){
	    draw_set_font(asset_get("fName"));
	    draw_debug_text(x - 110 ,y - 120, "NYEHFULLY YOURS,");
		draw_debug_text(x - 70 ,y - 100,  "PAPYRUS");
	}
}