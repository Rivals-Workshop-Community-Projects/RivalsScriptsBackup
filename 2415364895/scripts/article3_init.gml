sprite_index = sprite_get("star");

dir = random_func(get_gameplay_time()%24, 180,true);
spd = 2;
spdAdd = 0.05;

image_alpha = 0;

imagescale = random_func(0,2,false);

image_xscale = imagescale;
image_yscale = imagescale;

alphaAdd = 0.05;
sizeAdd = 0.009;//how much is added over time to make the star grow to max size (1)

depth = 34;

parallel_x = 0;
parallel_y = 0;