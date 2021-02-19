///
shader_start();
if obamium > 0 {
	draw_sprite(sprite_get("obamium"), get_gameplay_time() / 2, obx , y - 60 - obamium*4 );
}

if ostyle == 3 {
if bullet == 1 {
	draw_sprite(sprite_get("shell"), get_gameplay_time() / 3, x - 30, y - 100 );
}

if nbullet >= 1 {
	draw_sprite(sprite_get("nbullet"), nbullet - 1, x + 28, y - 120 );
}

if bbullet >= 1 {
	draw_sprite(sprite_get("bbullet"), nbullet - 1, x - 70, y - 120 );
}

if dbullet >= 1 {
	draw_sprite(sprite_get("dbullet"), nbullet - 1, x , y - 120 );
}
}

if attacking {
	
	if attack == AT_FSPECIAL && window == 2 {
		draw_sprite(sprite_get("aim"), get_gameplay_time() / 3, x + (40 - jettime/4)*spr_dir, y - 60 - jettime/2 );
	}
	
	
	if attack == AT_EXTRA_1 && window >= 2 {
		draw_sprite(sprite_get("shulk"), 0, x , y - 60 );
	}
	
	if attack == AT_EXTRA_2 && window == 1 {
		draw_sprite(sprite_get("obamium"), get_gameplay_time()/2, x + 40*spr_dir , y - 60 );
	}
	
}

if move_cooldown[AT_EXTRA_1] > 0 {
	draw_sprite(sprite_get("shulk"), ostyle, x , y - 60 );
}


if move_cooldown[AT_EXTRA_2] > 1 {
	draw_sprite(sprite_get("TP"), 0, x , y - 60 );
}


if move_cooldown[AT_EXTRA_2] > 3 {
	draw_sprite(sprite_get("TP"), 0, x , y - 60 );
}


if move_cooldown[AT_EXTRA_2] > 6 {
	draw_sprite(sprite_get("TP"), 0, x , y - 60 );
}


if move_cooldown[AT_EXTRA_2] > 9 {
	draw_sprite(sprite_get("TP"), 0, x , y - 60 );
}

if move_cooldown[AT_EXTRA_2] > 12 {
	draw_sprite(sprite_get("TP"), 0, x , y - 60 );
}

shader_end() 