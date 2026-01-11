draw_sprite_ext(sprite_get("winscreenbg2"), 0, 0, 0, 2, 2, 0, c_white, 1);
if "ringspeeds" not in self{
	ringspeeds = []
	var j = 0;
	repeat 8{
		array_push(ringspeeds, random_func_2(10 + 11*j, 51, 1) - 25);
		j++;
	}
}
var j = 0;
repeat 8{
	draw_sprite_ext(sprite_get("winscreenbg3"), j, 480, 270, 1, 1, results_timer*ringspeeds[j]/100, c_white, 1);
	j++;
}
draw_sprite_ext(sprite_get("winscreenbg4"), results_timer/6, 480, 270, 2, 2, results_timer*.1, c_white, 1);
var px = -(results_timer/2)%960;
draw_sprite_ext(sprite_get("winscreenbg5"), 0, px, 490, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("winscreenbg5"), 0, px + 960, 490, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("winscreenbg6"), 0, -px, 490 - 6, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("winscreenbg6"), 0, -px - 960, 490 - 6, 2, 2, 0, c_white, 1);