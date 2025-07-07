
image_index = 0;
spr_dir = player_id.spr_dir;

timer = 0;

//Idk if this stuff is important but I don't feel like deleting it
hitstop = 0;
hsp = 0;
vsp = 0;

can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;

variant = player_id.plat_variant;

switch(variant)
{
    case 0:
        depth += 4;
        sprite_index = sprite_get("plat_nether");
        timer_total = 480;
        break;
    
    case 1:
        depth += 5;
        sprite_index = sprite_get("plat_mushroom");
        timer_total = 480;
        break;
    
    case 2:
        depth += 2;
        sprite_index = sprite_get("plat_slime");
        timer_total = 360;
        can_be_grounded = true;
        grv = 1;
        max_vsp = 12;

        for(var i = 0; i < 30 && y > 0; i++)
        {
            if(place_meeting(x, y, obj_article_solid))
            {
                y -= 32 + (i==0);
            }
            else
            {
                i = 999;
            }
        }
        break;
    
    case 3:
        sprite_index = sprite_get("plat_crafting");
        timer_total = 360;
        can_be_grounded = true;
        grv = 1;
        max_vsp = 12;

        for(var i = 0; i < 30 && y > 0; i++)
        {
            if(place_meeting(x, y, obj_article_solid))
            {
                y -= 32 + (i==0);
            }
            else
            {
                i = 999;
            }
        }
        break;
    
    case 4:
        depth += 3;
        sprite_index = sprite_get("plat_grass");
        timer_total = 300;
        break;
    
    case 5:
        depth += 1;
        with(instance_create(x, y, "obj_article_solid"))
        {
            variant = 5;
            sprite_index = sprite_get("plat_tnt");
            timer_total = 360;
        }
        break;
}

if(y <= 0)
{
    instance_destroy();
}