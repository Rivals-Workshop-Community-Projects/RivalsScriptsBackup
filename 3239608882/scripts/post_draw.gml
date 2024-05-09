//shader_start();
if (attack == AT_DSTRONG and window == 2 and draw_orb = true) 
{
    if (spr_dir) == 1
    {
       draw_sprite(sprite_get("dark_orb"), get_gameplay_time() / 3, x, y);
    }
}

if (attack == AT_DSTRONG and window == 2 and draw_orb = true) 
{
    if (spr_dir) == -1
    {
        draw_sprite(sprite_get("dark_orb"), get_gameplay_time() / 3, x + 9, y);
    }
}

if (attack == AT_FSTRONG and window == 2 and draw_flame = true) 
{
    if (spr_dir) == 1
    {
       draw_sprite(sprite_get("flame"), get_gameplay_time() / 6, x, y);
    }
}

if (attack == AT_FSTRONG and window == 2 and draw_flame = true) 
{
    if (spr_dir) == -1
    {
        draw_sprite(sprite_get("flame2"), get_gameplay_time() / 6, x + 36, y);
    }
}

if (attack == AT_NAIR and window == 2 and draw_blast = true) 
{
    //draw_sprite(sprite_get("nair_blast"), get_gameplay_time() / 6, x, y);
}

