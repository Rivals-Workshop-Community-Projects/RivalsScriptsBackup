sprite_index = sprite_get("star");

dir = random_func(get_gameplay_time()%24, 359,true);
spd = 2;
spdAdd = 0.05;

horizontalBias = 0.3;//lower number means the stars move at a more horizontal level. 1 means no bias

image_alpha = 0;

image_xscale = 0;
image_yscale = 0;

alphaAdd = 0.01;
sizeAdd = 0.009;//how much is added over time to make the star grow to max size (1)

depth = 34;

parallel_x = 0;
parallel_y = 0;