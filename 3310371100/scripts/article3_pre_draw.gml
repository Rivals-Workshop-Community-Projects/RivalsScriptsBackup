
	if (ar_a3_type==1||ar_a3_type==2){
//	if (attack==AT_FSPECIAL && hbox_num==1 && player==fsplayer){
		var alpha_hb = 0;
		alpha_hb = clamp(((aitimermax-aitimer)/aitimermax),0,1);
//			v -- causes crash. how, however, is a mystery
		draw_sprite_ext(sprite_get("etc_afterimage"), 0, x, y, spr_dir, 1, 0, c_white, alpha_hb);
	}