//

shader_start();

if (grapple_cont > 0){
	
	if (!free){
		draw_sprite_pos(sprite_get("grapple_cable"), 0, 
		x+40*spr_dir, y-60, 
		grapple_x+2*spr_dir, grapple_y-65, 
		grapple_x+2*spr_dir, grapple_y+5, 
		x+40*spr_dir, y+10, 1);	
	}
	else {
		draw_sprite_pos(sprite_get("grapple_cable"), 0, 
		x+40*spr_dir, y-40, 
		grapple_x+16*spr_dir, grapple_y-65, 
		grapple_x+16*spr_dir, grapple_y+15, 
		x+40*spr_dir, y+30, 1);
	}
	
}

if (instance_exists(mine)){
	draw_sprite_ext(sprite_get("mine_range"), 0, mine.x, mine.y-20, 2, 2, 0, c_white, .75);	
}

shader_end();
