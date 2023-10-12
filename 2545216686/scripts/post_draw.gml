//post_draw.gml
shader_start();
// Intro Stuff
if (state == PS_SPAWN){
	if (!shouldPlayLandingIntroAnim){
		if (!introPlayFallAnim){
			draw_sprite_ext( introFlySpr, introImgTimer + 2, x + (introImgHorizOffset * -spr_dir) - (60 * spr_dir), y - introImgVertOffset, spr_dir, 1, 0, c_white, 1 );
		} else if (introPlayFallAnim){
			draw_sprite_ext( introFallSpr, introImgTimer3 + 6, x + (introImgHorizOffset * -spr_dir) - (60 * spr_dir), y - introImgVertOffset, spr_dir, 1, 0, c_white, 1 );
		}
	}
}
shader_end();