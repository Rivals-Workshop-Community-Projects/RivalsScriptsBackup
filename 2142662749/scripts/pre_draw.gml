// pre-draw
shader_start();
if (drawZoDeathEffect) {
    var sprIndex = floor(zoDeathTimer/4);
    draw_sprite_ext(sprite_get("zo_die"), sprIndex, zoDeathX, zoDeathY, 1, 1, 180 - 45*zoDeathDir, c_white, 1);
}
shader_end();