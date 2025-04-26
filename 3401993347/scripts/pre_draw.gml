// //give the article the superarmor outline (code from anthem)
// with (obj_article1) {
// 	if (player_id != other.id) continue;
// 	if (!followingOrb && window == 1) 
// 	{
// 	    gpu_set_fog(1, c_gray, 0, 0);
// 	    for (i = -4; i < 4; i++){
// 	        for (j = -4; j < 4; j++) {
// 	            draw_sprite_ext(sprite_index, image_index, round(x + i), round(y + j), image_xscale * spr_dir, image_yscale, image_angle, c_white, 1)
// 	        }
// 	    }
// 	    gpu_set_fog(0, c_black, 0, 0);
// 	}
// }

with (oPlayer) {
	if ("slowmo" in self) {
		if(slowmo > 0){
			draw_set_alpha(0.5);
			draw_circle_colour(x, y-32, slowmo*4, c_black, c_white, 0);
			draw_set_alpha(1);
		}
	}
}