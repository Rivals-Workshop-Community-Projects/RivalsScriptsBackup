timer++;

if(timer >= timer_total)
{
    instance_destroy();
}
else if(timer >= timer_total-100)
{
    image_index = ((timer%20) < 10);
}
else if(timer >= timer_total-20)
{
    image_index = ((timer%4) < 2);
}

//Slime Cube Falling
if(variant == 2)
{   
    if(position_meeting(x-30, y+64, asset_get("par_block")) || position_meeting(x-30, y+64, asset_get("par_jumpthrough")) || position_meeting(x+30, y+64, asset_get("par_block")) || position_meeting(x+30, y+64, asset_get("par_jumpthrough")))
    {
        vsp = 0;

        with(instance_create(x, y, "obj_article_solid"))
        {
            variant = 2;
            sprite_index = sprite_get("plat_slime");
            timer_total = 360;
            can_be_grounded = true;
        }

        instance_destroy();
    }
    else
    {
        vsp = min(vsp+grv, max_vsp);
        create_hitbox(AT_FTILT, 2, x, y+32+vsp);
    }

    if(y >= 2000)
    {
        instance_destroy();
    }
}
else if(variant == 3) //Crafting Table Falling
{   
    if(position_meeting(x-14, y+32, asset_get("par_block")) || position_meeting(x-14, y+32, asset_get("par_jumpthrough")) || position_meeting(x+14, y+32, asset_get("par_block")) || position_meeting(x+14, y+32, asset_get("par_jumpthrough")))
    {
        vsp = 0;

        with(instance_create(x, y, "obj_article_solid"))
        {
            variant = 3;
            sprite_index = sprite_get("plat_crafting");
            timer_total = 360;
            can_be_grounded = true;
        }

        instance_destroy();
    }
    else
    {
        vsp = min(vsp+grv, max_vsp);
        create_hitbox(AT_DTILT, 2, x, y+16+vsp);
    }

    if(y >= 2000)
    {
        instance_destroy();
    }
}