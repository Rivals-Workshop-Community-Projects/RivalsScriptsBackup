// post_draw.gml

if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL && window == 5){
    gpu_set_alphatestenable(true);
	gpu_set_fog(1, c_black, 0, 1);
	
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, image_yscale, spr_angle, c_white, .5);
    
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
}