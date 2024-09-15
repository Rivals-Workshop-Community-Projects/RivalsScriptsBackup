//

sprite_index = asset_get("empty_sprite");

depth = 33; //bg3

spr = 0;//asset_get("empty_sprite");
sprInd = 0;

animTime = 0;
animSpd = 0;

scale = 2;
flipX = 1;
rot = 0;
alpha = 1;

inBackground = false;
xBackgroundParralax = get_bg_data(1, BG_LAYER_PARALLAX_X);
yBackgroundParralax = get_bg_data(1, BG_LAYER_PARALLAX_Y);
