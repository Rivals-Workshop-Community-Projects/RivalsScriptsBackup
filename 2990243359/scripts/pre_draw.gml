shader_start();

//Draws the Plat sprite
if (state == PS_RESPAWN || (attack == AT_TAUNT && i_died == true)){
    draw_sprite_ext(sprite_get("plat_behind"), state_timer/6, x, y, 1, 1, 0, c_white, 1);
}

if (im_gliding){
	draw_sprite_ext(sprite_get("vfx_float"), get_gameplay_time()*.2, x, y, spr_dir, 1, 0, c_white, 1);	
}

shader_end();