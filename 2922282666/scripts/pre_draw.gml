shader_start();
if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
    if(attack == AT_NSPECIAL_2 && window != 1 && window != 4)
    {
        draw_y = 999;
        draw_sprite_ext(sprite_get("nspecdash_offset"),image_index,x,y-30,1,1*spr_dir,sprite_rot,c_white,1)
    }
    else
        draw_y = 0;
}
if(GemShow_timer != 0)
{
    var IconSize = 1+(30/(GemShow_timer+10))
    draw_sprite_ext(sprite_get("icon_select"),1,GemPos_x,GemPos_y,IconSize,IconSize,0,c_white,(GemShow_timer/30))
}
shader_end();