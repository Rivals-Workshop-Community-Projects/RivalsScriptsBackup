//Plats
mode = 0;
should_exist = false;

sprite_index = asset_get("empty_sprite");

bright = sprite_get("plat_bright");

if spawn_variables[0] = 0 {
    natural = sprite_get("plat_natural_a");
    happy = sprite_get("plat_happy");
    violence = sprite_get("plat_violence_a");
    sun = sprite_get("plat_sun");
    black = sprite_get("plat_black_a");
    brightx = 400;
    brighty = 224;
    naturalx = 414;
    naturaly = 400;
    happyx = 494;
    happyy = 432;
    violencex = 740;
    violencey = 384;
    sunx = 376;
    suny = 496;
    blackx = 430;
    blacky = 224;
}
else if spawn_variables[0] = 1 {
    natural = sprite_get("plat_natural_b");
    happy = asset_get("empty_sprite");
    violence = sprite_get("plat_violence_b");
    sun = sprite_get("plat_sun");
    black = sprite_get("plat_black_b");
    brightx = 400;
    brighty = 336;
    naturalx = 700;
    naturaly = 464;
    happyx = 0;
    happyy = 0;
    violencex = 666;
    violencey = 480;
    sunx = 822;
    suny = 496;
    blackx = 850;
    blacky = 304;
}
else {
    natural = asset_get("empty_sprite");
    happy = asset_get("empty_sprite");
    violence = asset_get("empty_sprite");
    sun = asset_get("empty_sprite");
    black = sprite_get("plat_black_c");
    brightx = 400;
    brighty = 448;
    naturalx = 0;
    naturaly = 0;
    happyx = 0;
    happyy = 0;
    violencex = 0;
    violencey = 0;
    sunx = 0;
    suny = 0;
    blackx = 164;
    blacky = 384;
}