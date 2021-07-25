// pre-draw

if burnerFuel < 100 {
	draw_sprite(sprite_get("uspecial_fuel"), burnerFuel/5, x, y+20);	
}

if attack == AT_TAUNT_2  {

	if window == 4 || window == 5 {
		draw_sprite(sprite_get("tauntpics"), randomTaunt, x+59*spr_dir, y-67);		
		}
	}