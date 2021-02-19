sprite_index = sprite_get("border_bg");
x = 0;
y = 0;
image_xscale = 2;
image_yscale = 2;

depths =		[34, 34, 33, 32, 31];
// parallax_xs =	[.75, .40, .20, .10, 0];
// parallax_ys =	[.75, .40, .20, .10, 0];
alphas =		[0.25, 0.5, 0.75, 0.75, 0.75];

died = 0;
died_max = 4;

depth = 		depths[died];

exist_timer = 0;

// 30: behind main stage
// 31: behind house
// 32: behind well
// 33: behind ground
// 34: behind clouds
// 35: behind sky