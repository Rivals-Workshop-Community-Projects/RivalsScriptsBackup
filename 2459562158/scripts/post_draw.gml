//post-draw

if ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_DSPECIAL)
{
    if (window == 2)
    {
        shader_start()
        draw_sprite(sprite_get("cursor"),aimed_id != noone,x_cursor,y_cursor)
        shader_end()
    }
}