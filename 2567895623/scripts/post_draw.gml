
if (powerup == true) 
{
    if (spr_dir) == 1
    {
       draw_sprite(sprite_get("lightning"), get_gameplay_time() / 3, x - 48, y - 85);
    }
}

if (powerup == true) 
{
    if (spr_dir) == -1
    {
        draw_sprite(sprite_get("lightning"), get_gameplay_time() / 3, x - 48, y - 85);
    }
}

