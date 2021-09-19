// pre-draw

if (state == PS_RESPAWN)
{
    shader_start();
    draw_sprite(sprite_get("plat_behind"), 0, x, y);
    shader_end();
}