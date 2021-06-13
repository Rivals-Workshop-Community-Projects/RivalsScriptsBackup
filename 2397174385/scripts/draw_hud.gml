
if(is_aether_stage() == true) {

}else{
/*
//string(Mgemetime)
//Score
with (obj_stage_article) {
	if ( get_article_script( id ) == 596 ) {
//string(Lgemetime)
	draw_debug_text(room_width / 4 - 180, 15,  string(Sgemetime));
	draw_debug_text(room_width / 4 - 200, 15,  string(Mgemetime));
	draw_debug_text(room_width / 4 - 230, 15,  string(Lgemetime));
	draw_debug_text(room_width / 4 - 230, 25,  string(Ngemetime));
	//draw_debug_text(room_width / 4 - 200, 15,  "Time it took to clear ");
	draw_debug_text(430 - 230, 53,  string(Damage_taken_so_far));
	draw_debug_text(330 - 230, 53,  string(Numberofdeaths));
	}
}
//
*/
with (obj_stage_article) {
	if ( get_article_script( id ) == 96 ) {

		if(xq == 2021){
			if(yq == 2021){
	
				with (obj_stage_article) {
					if ( get_article_script( id ) == 596 ) {
			draw_debug_text(830 - 480, 15,  "Clear time");
			draw_debug_text(443, 45,  ":    :");
			draw_debug_text(480, 45, string(Sgemetime));
			draw_debug_text(453, 45, string(Mgemetime));
			draw_debug_text(426, 45, string(Lgemetime));
//					 z      x   y
			draw_debug_text(530 - 450, 93,  "Damage that has been exhausted so far:");
			draw_debug_text(530 - 150, 93,  string(Damage_taken_so_far));

			draw_debug_text(530 - 350, 123,  " Number of deaths so far:");
				draw_debug_text(530 - 150, 123,  string(Numberofdeaths));

			draw_debug_text(530 - 230, 154, "Deduction:");
				draw_debug_text(530 - 150, 154,  string(DeductionScore))

			draw_debug_text(530 - 200, 204,  "Score:");
				draw_debug_text(530 - 150, 204,  string(Score));

			draw_debug_text(530 - 220, 184,  "eatpoint:");
				draw_debug_text(530 - 150, 184,  string(eatpoint));
					}
				}

			}
		
		}

	}
}
//string(Mgemetime)


}