// pre-draw

if ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_FSPECIAL)
{
    if (window == 2) or (window == 3)
    {
        
        var x_pos = 0;
        shader_start()
        while(sign(x - (x_hand + x_pos)) != sign(spr_dir))
        {
            draw_sprite_ext(sprite_get("arm"),0,x_hand + x_pos,y_hand + 8,spr_dir,1,0,c_white,1)
            
            x_pos -= sprite_get_width(sprite_get("arm")) * spr_dir;
        }
        shader_end()
        
        var im = 0;
        if (grab_id != noone)
        {
            im = 3;
        }
        
        
        
        draw_sprite_ext(sprite_get("hand"),im,x_hand,y_hand,spr_dir,1,0,c_white,1)
    }
}