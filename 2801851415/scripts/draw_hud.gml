shader_start();
if(state != PS_SPAWN)
{
    draw_sprite_ext(sprite_get("projdisplay"), 3,temp_x+192, temp_y, 1, 1, 0, (nspecCount==2?c_white:c_dkgray), 1);
    draw_sprite_ext(sprite_get("clonedisplay"), 0 ,temp_x+146, temp_y-18, 2, 2, 0, (move_cooldown[AT_DSPECIAL]==0?c_white:c_dkgray), 1);
}
shader_end();