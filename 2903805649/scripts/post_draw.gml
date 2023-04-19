if (attack == AT_DSPECIAL and window == 3 and window_timer >= 0) 
{
    if (spr_dir) == 1
    {
       draw_sprite(sprite_get("swords"), 1, x - 75, y - 158);
    }
}

if (attack == AT_DSPECIAL and window == 3 and window_timer >= 0) 
{
    if (spr_dir) == -1
    {
        draw_sprite(sprite_get("swords"), 1, x - 65, y - 158);
    }
}

