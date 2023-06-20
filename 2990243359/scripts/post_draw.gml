shader_start();

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL && window == 5){
	draw_sprite_ext(sprite_get("uspecial_haste"), get_gameplay_time()*.3, x, y, 
	spr_dir, 1, (270-uspecial_dir)*-1, c_white, 1);
}

shader_end();