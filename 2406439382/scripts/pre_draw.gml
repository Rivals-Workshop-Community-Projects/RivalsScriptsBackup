// pre-draw

if ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_USPECIAL)
{
    if (window >= 2) and (window <= 3)
    {
        draw_sprite_ext(sprite_get("yinyang"), image_index - 2,yy_x,yy_y,spr_dir,1,0,c_white,0.7);
        draw_sprite(sprite_get("is_player"),player - 1,yy_x,yy_y - 32)
    }
}

if (state == PS_AIR_DODGE)
{
    // it's stupid i know shut up
    var im = -1;
    switch(state_timer)
    {
        case 1:
            //draw_sprite_ext(sprite_get("airdodge"),0,ad_x,ad_y,spr_dir,1,0,c_white,1);
        case 2:
        case 3:
            im = 0;
        break
        case 4:
        case 5:
            im = 1
        break;
        case 6:
        case 7:
            im = 2;
        break;
        case 8:
        case 9:
            im = 3;
        break;
    }
    if (im != -1)
    {
        shader_start()
        draw_sprite_ext(gap_air_draw, im,ad_x,ad_y,spr_dir,1,0,c_white,1)
        shader_end()
    }
}