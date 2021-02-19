// pre-draw

if (hypal == 2 && state==22 && state_timer>0) {	
	draw_sprite_ext(sprite_index, image_index, x-hsp, y, spr_dir, 1, 0, c_white, 0.75);
	if (state_timer>1){
	draw_sprite_ext(sprite_index, image_index, x-(hsp+hsp), y, spr_dir, 1, 0, c_white, 0.5);
	}
}
if (hypal == 2 && state==23 && state_timer==0) {	
	draw_sprite_ext(sprite_index, image_index, x-(hsp+hsp), y, spr_dir, 1, 0, c_white, 0.75);
}