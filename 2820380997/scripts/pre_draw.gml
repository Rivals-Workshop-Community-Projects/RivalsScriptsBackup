if(state == PS_RESPAWN){
    shader_start();
	draw_sprite_ext(sprite_get("plat_bg"),image_index,x,y,spr_dir,1,0,c_white,1);
	shader_end();
}