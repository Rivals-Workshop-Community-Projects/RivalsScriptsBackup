//post-draw

/*
//Debug stuff
draw_debug_text( x, y + 20, string(randomFunny));
draw_debug_text( x, y + 20, string(funnyfish));
*/


if (attack == AT_TAUNT || attack == AT_TAUNT_2) && (window == 4 || window == 5)  {
	if randomTaunt == 70 {
		if spr_dir == 1 {
		draw_sprite(sprite_get("taunt_sus"), -1, x+8, y-52);
		} else {
		draw_sprite(sprite_get("taunt_sus"), -1, x-20, y-52);		
		}
	}
}