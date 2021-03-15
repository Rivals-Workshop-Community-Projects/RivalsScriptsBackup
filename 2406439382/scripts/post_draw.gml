//post-draw

if ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_USTRONG)
{
    if (image_index >= 1) and (image_index <= 3)
    {
        draw_sprite_ext(sprite_get("picture"),0,x,y - 100 - picture_portrait * 2 ,1,1,picture_portrait * 90,c_white,1);
    }
    if (picture_draw)
    {
        draw_sprite_ext(sprite_get("picture"),1,x,y - 100 - picture_portrait * 2,1,1,picture_portrait * 90,c_white,1);
    }
    
    
}