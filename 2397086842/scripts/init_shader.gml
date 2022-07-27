if "shsp" in self {
    if get_gameplay_time() == 90 && get_player_color(player) == 4 {
	

	
   set_article_color_slot(0, 36, 255, 156 ); //Energy
   set_article_color_slot(1, 255, 255, 255 ); //Hair + parts
   set_article_color_slot(2, 53, 138, 97 ); //shirt
   set_article_color_slot(3, 43, 105, 93 ); //cloak1 + sock
   set_article_color_slot(4, 0, 255, 140 ); //eyes
   set_article_color_slot(5, 242, 242, 242 ); //body
   set_article_color_slot(6, 50, 56, 53 ); //skirt
   set_article_color_slot(7, 0, 255, 140 ); //ears
    
	cfx = spawn_hit_fx(x,y,304)
	cfx.pause = 4
	
	if string_lower(get_player_name(player)) == "sharpi" {
		sound_stop(sound_get("sage"))
		sound_play(sound_get("sage"),false,noone,1,1)
		set_article_color_slot(0, 198, 235, 245 ); //Energy
        set_article_color_slot(1, 22, 20, 51 ); //Hair + parts
        set_article_color_slot(2, 40, 40, 64 ); //shirt
        set_article_color_slot(3, 47, 44, 79 ); //cloak1 + sock
        set_article_color_slot(4, 117, 19, 19 ); //eyes
        set_article_color_slot(5, 69, 63, 97 ); //body
        set_article_color_slot(6, 140, 136, 168 ); //skirt
        set_article_color_slot(7, 180, 133, 180 ); //ears
	}
	
	if string_lower(get_player_name(player)) == "sai" {
		sound_stop(sound_get("sage"))
		sound_play(sound_get("sage"),false,noone,1,1)
		set_article_color_slot(0, 198, 235, 245 ); //Energy
        set_article_color_slot(1, 22, 20, 51 ); //Hair + parts
        set_article_color_slot(2, 40, 40, 64 ); //shirt
        set_article_color_slot(3, 47, 44, 79 ); //cloak1 + sock
        set_article_color_slot(4, 117, 19, 19 ); //eyes
        set_article_color_slot(5, 69, 63, 97 ); //body
        set_article_color_slot(6, 140, 136, 168 ); //skirt
        set_article_color_slot(7, 180, 133, 180 ); //ears
	}
	
   }
}