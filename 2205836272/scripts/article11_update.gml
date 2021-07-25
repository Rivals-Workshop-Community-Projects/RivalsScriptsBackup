//article11
// AYA
image_index += image_spd;


x += spd * spr_dir;

if (is_visible)
{
    sprite_index = sprite_get("aya");
}
else
{
    sprite_index = sprite_get("nothing");
}


if (x > room_width)
{
    spr_dir = -1;
    
    y = y_ref + random_func( 13, 150, true);
    
    if (random_func( 2, 13, true) == 0 )
    {
        is_visible = true;
    }
    else
    {
        is_visible = false;
    }
}

if (x < 0)
{
    spr_dir = 1;
    
    y = y_ref + random_func( 13, 150, true);
    
    if (random_func( 2,13, true) == 0 )
    {
        is_visible = true;
    }
    else
    {
        is_visible = false;
    }
}