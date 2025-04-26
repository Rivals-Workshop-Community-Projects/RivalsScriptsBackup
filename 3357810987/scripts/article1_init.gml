//Red fog
sprite_index = sprite_get("gradient");
mask_index = asset_get("empty_sprite");
image_xscale = 4000;
image_yscale = 2;
image_alpha = 1;

c_blood = make_colour_rgb(235,26,26);

image_blend = c_blood;

x = x-2000
y = y + 300

y_float = -30;
y_float_dir = -1;
y_float_max = 30;

fog_expansion = 0;

depth = 30;

fx_dspecial_sparks = hit_fx_create(sprite_get("fx_dspecial_sparks"), 60);