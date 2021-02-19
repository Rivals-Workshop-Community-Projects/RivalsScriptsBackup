//Backgrounds
backgrounds = true;

mode = 0;
should_exist = false;
image_alpha = 0;
image_xscale = 2;
image_yscale = 2;
x = 0
y = 0

sprite_index = asset_get("empty_sprite");

if spawn_variables[0] = 0 { //The backmost layer
    natural = sprite_get("nw_background");
    naturalx = -178;
    naturaly = 274;
    naturalpx = -0.13;
    naturalpy = -0.1;
    happy = sprite_get("ht_background");
    happyx = -178;
    happyy = 274;
    happypx = -0.13;
    happypy = -0.1
    violence = sprite_get("vd_towers");
    violencex = 506;
    violencey = -60;
    violencepx = -0.16;
    violencepy = -0.14;
    sun = sprite_get("sf_background");
    sunx = 0;
    suny = 590;
    sunpx = -0.23;
    sunpy = -0.23;
    black = sprite_get("cubes");
    blackx = 260;
    blacky = 194;
    blackpx = -0.23;
    blackpy = -0.23;
} else {//The closest layer
    natural = asset_get("empty_sprite");
    naturalx = 0;
    naturaly = 0;
    naturalpx = 0;
    naturalpy = 0;
    happy = sprite_get("ferriswheel");
    happyx = -114;
    happyy = -58;
    happypx = -0.13;
    happypy = -0.1;
    violence = sprite_get("vd_background");
    violencex = -154;
    violencey = -216;
    violencepx = -0.13;
    violencepy = -0.1;
    sun = asset_get("empty_sprite")
    sunx = 0;
    suny = 0;
    sunpx = 0;
    sunpy = 0;
    black = sprite_get("bs_background");
    blackx = -22;
    blacky = 618;
    blackpx = -0.09;
    blackpy = -0.06;
}

article_animation_speed = 0.23;
article_animation_frame = 0;