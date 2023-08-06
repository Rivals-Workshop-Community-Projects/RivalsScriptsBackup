//article1_post_draw.gml

/*draw_debug_text( 640, room_height/2, string(x) );
draw_debug_text( 640, room_height/2+16, string(y) );*/

switch(article_id){
	case 1:
		switch (meteor_state){
			case 0:
				draw_sprite_ext( sprite_get("ice_meteor_charge"), round((meteor_size*2)-2+meteor_charge_anim), x, y, 1*meteor_dir, 1, 0, c_white, 1);
			break;
			case 1:
				draw_sprite_ext( sprite_get("ice_meteor"), meteor_size-1, x, y, 1*meteor_dir, 1, 0, c_white, 1);
			break;
		}
	break;
	case 3:
		//draw_debug_text( 640, room_height/2 -32, string(lance_anim_timer) );
		draw_sprite_ext( sprite_get("back_dtilt_ice"), floor(lance_anim_timer), x, y, 1*lance_spr_dir, 1, 0, c_white, 1);
	break;
	case 4:
		draw_sprite_ext( sprite_get("aura"), floor(aura_anim_timer), x, y, 1, 1, 0, c_white, 1);
	break;
}