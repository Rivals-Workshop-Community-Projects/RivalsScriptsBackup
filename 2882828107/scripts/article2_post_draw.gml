//article1_post_draw
if (state == 1){
	if (state_timer >= 21 && state_timer < 33){
		draw_sprite_ext(sprite_get("witchhazel_blast"), floor((state_timer - 21)/2), x + 16*spr_dir, y -34, spr_dir, 1, 0, c_white, 1);
	}
}