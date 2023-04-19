if get_match_setting(SET_HITBOX_VIS){
    with pHitBox {
	    if (orig_player = other.player) {
		    if attack = AT_FSTRONG && hbox_num = 1 {
	        draw_sprite_ext(collision_sprite, 0, x, y, spr_dir, 1, 0, c_white, .5);
		    }
		
		    if attack = AT_DSTRONG && hbox_num = 3 {
	        draw_sprite_ext(collision_sprite, 0, x, y, spr_dir, 1, 0, c_white, .5);
		    }
		}
	}
}