if molloflashbang > 0 && molloflashplayer == other_player_id.player {
	shader_start();
		draw_sprite_ext(sprite_index,image_index,x+sin(molloflashbang*0.1)*molloflashbang,y+sin(molloflashbang*0.2)*(molloflashbang*0.2),spr_dir,1,0,c_white,molloflashbang*0.008)
		draw_sprite_ext(sprite_index,image_index,x-sin(molloflashbang*0.1)*molloflashbang,y-sin(molloflashbang*0.2)*(molloflashbang*0.2),spr_dir,1,0,c_white,molloflashbang*0.008)
	shader_end();
}