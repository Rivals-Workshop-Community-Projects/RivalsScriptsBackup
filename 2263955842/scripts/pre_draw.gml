
//pre_draw


if ((attack == AT_NSPECIAL_2) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
{
    if (window == 2) or (window == 3)
    {
        var yinyang_id = noone;
        
        with (obj_article2)
        {
            if(player_id == other)
            {
                yinyang_id = self;
            }
        }
        if (yinyang_id != noone)
        {
            draw_sprite_ext(sprite_get("arrow"),0,yinyang_id.x,yinyang_id.y,1,1,nspe2_rot,c_white,1);
        }
    }
}