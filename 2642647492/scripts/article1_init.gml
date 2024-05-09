//Platforms
image_xscale = 2;
image_yscale = 2;
mask_index = sprite_get("platcoll");
mode = 0;

time = 0;

if spawn_variables[0] = 0 {
sprite_index = sprite_get("plat_r");
version = 0;
} else {
sprite_index = sprite_get("plat_l");
version = 1;
}

desty = y;
destx = x;