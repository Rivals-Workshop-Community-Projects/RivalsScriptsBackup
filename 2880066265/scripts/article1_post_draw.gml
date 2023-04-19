//The Chair

if(eust_damageCD > 0){
	draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_black, 0.15 + 0.5*sin(eust_currHealth / eust_defeatHealth));
}

draw_sprite_ext(sprite_get("articletimer"), 8 - ceil(eust_chairDespawn/(75+(50*has_rune("C")))), x - (spr_dir*14), y - 82, 1, 1, 0, c_white, 1);


// Could've been gpu_set_fog but that draws over everything on the screen, plus it would've needed to nestle into the main post_draw.gml
if(eust_chairDespawn < (150 + (50*has_rune("C"))) && eust_chairDespawn > 0 && eust_chairState == 0){
	draw_sprite_ext(sprite_get("dspecial_chair_flash"), image_index, x, y, spr_dir, 1, 0, c_yellow, (0.06*(1 + floor(eust_chairDespawn/2) % 5)));
}
