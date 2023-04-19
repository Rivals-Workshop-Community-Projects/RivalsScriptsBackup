//The Chair

if(eust_doorDamCD > 0){
	draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_black, 0.15 + 0.5*sin(eust_doorHealth / eust_doorDeath));
}


draw_sprite_ext(sprite_get("articletimer"), 8 - ceil(eust_doorDespawn/75), x + spr_dir, y - 116, 1, 1, 0, c_white, 1);


if(eust_doorDespawn < 150 && eust_doorDespawn > 0 && eust_doorState == 1){
	draw_sprite_ext(sprite_get("fspecial_door_flash"), image_index, x, y, spr_dir, 1, 0, c_yellow, (0.06*(1 + floor(eust_doorDespawn/2) % 5)));
}