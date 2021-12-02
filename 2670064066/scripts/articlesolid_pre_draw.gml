if (grav_lifetime > 0) 
{
    
    spr = sprite_get("grav fire")
        if (spr_dir) == 1
    {
   draw_sprite(spr, get_gameplay_time() / 6, x - 34, y - 210);
    }
    
        if (spr_dir) == -1
    {
   draw_sprite(spr, get_gameplay_time() / 6, x - 34, y - 210);
    }    
}