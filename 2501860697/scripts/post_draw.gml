if phone_cheats[cheat_funny_snail]{
	draw_debug_text(x, y, "woag");
}

if (lasercharged) {
	if (get_gameplay_time() % 60 >= 0 && get_gameplay_time() % 60 <= 10)
	 gpu_set_fog(1, c_white, 0, 0); 
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.5);
    gpu_set_fog(0, 0, 0, 0);
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (attack == AT_USPECIAL && window == 2)
	{
		draw_sprite_ext(sprite_get("uspecialarrow"), 0, x, y - (char_height/2), 1, 1, (ztc_uspecial_angle - 90), c_white, 1);
	}
}

user_event(12);