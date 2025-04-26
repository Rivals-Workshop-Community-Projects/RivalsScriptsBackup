// pre-draw

if burnerFuel < 100 {
	draw_sprite(sprite_get("uspecial_fuel"), burnerFuel/5, x, y+20);	
}

if attack == AT_FSTRONG {
	if window == 4 {
		draw_sprite_ext(FStrongPictureSprite, randomTaunt, x+77*spr_dir, y-43, 1.05, 1.025, 0, c_white, 1);		
	}
	if window == 5 || window == 6 {
		draw_sprite(FStrongPictureSprite, randomTaunt, x+77*spr_dir, y-43);		
	}
}