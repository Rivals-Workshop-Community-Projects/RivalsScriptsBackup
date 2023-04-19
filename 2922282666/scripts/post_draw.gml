shader_start();
if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
    if(attack == AT_DSPECIAL && window = 2)
    {
        for(i = 0; i<3; i++)
        {
            draw_sprite_ext(sprite_get("icon_hud"),i,x-50+(i*50),y-30+(i==1?50:0)-(i==GemSelect?8:0),1,1,0,(i==GemSelect?c_white:c_gray),1);
        }
    }
}
shader_end();