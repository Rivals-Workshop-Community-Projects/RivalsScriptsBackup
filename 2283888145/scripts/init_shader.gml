//EA

if (get_player_color(player) == 7){
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
}



if !("guitar" in self) exit;

var sel_c = (guitar.chord_juice_flash || guitar.chord_change_timer) ? c_white : chord_color[chord_active];
var sel_a = (guitar.chord_juice_flash || guitar.chord_change_timer) ? c_white : chord_color[guitar.chord * (guitar.chord_state < 3)];

set_character_color_slot(7, color_get_red(sel_c), color_get_green(sel_c), color_get_blue(sel_c));
  set_article_color_slot(7, color_get_red(sel_a), color_get_green(sel_a), color_get_blue(sel_a));

var shade_amt = 1;

set_character_color_shading(4, shade_amt);
  
//set_character_color_shading(4, (chord_active == 0));