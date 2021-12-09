//post_draw

if ("subst_timer" in self)
{
    if subst_timer >= 1
    {
        draw_debug_text(x-40,y+8, "Croagunk's");
        draw_debug_text(x-60,y+24, "Substitute faded!");
    }
}

if ("taunt_timer" in self)
{
    if taunt_timer >= 1
    {
        draw_debug_text(x-30,y+8, "Croagunk");
        draw_debug_text(x-40,y+24, "used Taunt!");
    }
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    if attack == AT_FSPECIAL_2
    {
        switch (croagberry)
        {
            case 0: // oran
            {
                draw_sprite_ext(sprite_get("oran_overlay"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }break;
            
            case 1: // pecha
            {
                draw_sprite_ext(sprite_get("pecha_overlay"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }break;
            
            case 2: // rawst
            {
                draw_sprite_ext(sprite_get("rawst_overlay"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }break;
            
            case 3: // cheri
            {
                draw_sprite_ext(sprite_get("cheri_overlay"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }break;
        }
    }
    
    if attack == AT_FTILT
    {
        draw_sprite_ext(sprite_get("ftilt_mud"),image_index,x,y,2*spr_dir,2,0,c_white,1);
    }

    if attack == AT_USPECIAL && (window >= 2 && window <= 4)
    {
        gpu_set_blendmode(bm_add)
        if window == 2 && window_timer <= 8
        {
            draw_sprite_ext(sprite_get("bounce_force"), get_gameplay_time()/4, x, y-18+bounce_offset, 
            2, -2-bounce_stretch, bounce_angle, c_white, 0.2+bounce_transp)
        }
        
        if window == 4 && bounce_fall >= 3
        {
            draw_sprite_ext(sprite_get("bounce_force"), get_gameplay_time()/4, x, y-26+bounce_offset, 
            2, 2+bounce_stretch, bounce_angle, c_white, 0.2+bounce_transp)
        }
        
        gpu_set_blendmode(bm_normal)
        
         if (window == 2 && window_timer <= 8) || (window == 4 && bounce_fall >= 3)
        {
            draw_sprite_ext(sprite_get("bounce_orb"), 0, x, y-22+bounce_offset, 2, 2+bounce_stretch, bounce_angle, c_white, 1)
        }
        else
        {
             draw_sprite_ext(sprite_get("bounce_orb"), 0, x, y-22+bounce_offset, 2, 2+bounce_stretch, bounce_angle, c_white, 0.5)
        }
    }
    
    switch (croagstance)
    {
        case 1:
        {
            
        }break;
        
        case 2:
        {
            if attack == AT_USTRONG
            {
                draw_sprite_ext(sprite_get("ustrong_tipper"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }
            
            if attack == AT_FSTRONG
            {
                draw_sprite_ext(sprite_get("fstrong_tipper"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }
            
            if attack == AT_DSTRONG
            {
                draw_sprite_ext(sprite_get("dstrong_tipper"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }
            
            if attack == AT_DATTACK
            {
                draw_sprite_ext(sprite_get("dattack_tipper"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }
            
            if attack == AT_UAIR
            {
                draw_sprite_ext(sprite_get("uair_tipper"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }
            
            if attack == AT_DAIR
            {
                draw_sprite_ext(sprite_get("dair_tipper"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }
            
            if attack == AT_FAIR
            {
                draw_sprite_ext(sprite_get("fair_tipper"),image_index,x,y,2*spr_dir,2,0,c_white,1);
            }
        }break;
    }
}

