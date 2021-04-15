//hi
    

//draw_sprite(sprite_get("hurtbox"), 0, x+56*spr_dir+thousandfold_x*spr_dir, y-16);




if ("doublepowerboost" in self) && ("exjumps" in self)
{
    if doublepowerboost == true
    {
        draw_sprite(sprite_get("panelicons"), 4, x-28*spr_dir, y-64);
        if exjumps >= 1
        {
            draw_sprite(sprite_get("panelicons"), 13, x-28*spr_dir, y-38);
            draw_debug_text(x-40*spr_dir,y-38, string(exjumps));
        }
    }
    else
    if exjumps >= 1
    {
        draw_sprite(sprite_get("panelicons"), 13, x-28*spr_dir, y-64);
        draw_debug_text(x-40*spr_dir,y-64, string(exjumps));
    }
}

if ("exjump_pickuptxt" in self) && ("doublepower_pickuptxt" in self) && ("magiccircleon" in self)
{
    if exjump_pickuptxt != 0
    {
        draw_debug_text(x-34+exjump_pickuptxt_x,y+exjump_pickuptxt_y, "+1 Extra");
        draw_debug_text(x-14+exjump_pickuptxt_x,y+exjump_pickuptxt_y+16, "Jump");
    }
    
    switch (exjump_pickuptxt)
    {
        case 32:
        {
            exjump_pickuptxt_y = -70;
        }break;
        
        case 31:
        {
            exjump_pickuptxt_y = -70;
        }break;
        
        case 30:
        {
            exjump_pickuptxt_y = -72;
        }break;
        
        case 28:
        {
            exjump_pickuptxt_y = -78;
        }break;
        
        case 26:
        {
            exjump_pickuptxt_y = -82;
        }break;
        
        case 24:
        {
            exjump_pickuptxt_y = -86;
        }break;
        
        case 23:
        {
            exjump_pickuptxt_y = -88;
        }break;
        
        case 22:
        {
            exjump_pickuptxt_y = -90;
        }break;
        
        case 21:
        {
            exjump_pickuptxt_y = -92;
        }break;
        
        case 20:
        {
            doublepower_pickuptxt_y = -93;
        }break;
    }
    
    if doublepower_pickuptxt != 0
    {
        draw_debug_text(x-34+doublepower_pickuptxt_x,y+doublepower_pickuptxt_y, "2x Damage");
    }
    
    switch (doublepower_pickuptxt)
    {
        case 32:
        {
            doublepower_pickuptxt_y = -70;
        }break;
        
        case 31:
        {
            doublepower_pickuptxt_y = -70;
        }break;
        
        case 30:
        {
            doublepower_pickuptxt_y = -72;
        }break;
        
        case 28:
        {
            doublepower_pickuptxt_y = -78;
        }break;
        
        case 26:
        {
            doublepower_pickuptxt_y = -82;
        }break;
        
        case 24:
        {
            doublepower_pickuptxt_y = -86;
        }break;
        
        case 23:
        {
            doublepower_pickuptxt_y = -88;
        }break;
        
        case 22:
        {
            doublepower_pickuptxt_y = -90;
        }break;
        
        case 21:
        {
            doublepower_pickuptxt_y = -92;
        }break;
        
        case 20:
        {
            doublepower_pickuptxt_y = -93;
        }break;
    }
    
    if magiccircleon != 0
    {
        draw_sprite_ext(sprite_get("magiccircleon"), 0, x-72+magiccircleon_x,y+magiccircleon_y-8, 1, 1, 0, c_white, magiccirclealpha);
        draw_debug_text(x-58+magiccircleon_x,y+magiccircleon_y, "MAGIC CIRCLE ON");
    }
    
    switch (magiccircleon)
    {
        case 40:
        {
            magiccircleon_y = -70;
        }break;
        
        case 39:
        {
            magiccircleon_y = -70;
        }break;
        
        case 38:
        {
            magiccircleon_y = -72;
        }break;
        
        case 36:
        {
            magiccircleon_y = -78;
        }break;
        
        case 34:
        {
            magiccircleon_y = -82;
        }break;
        
        case 32:
        {
            magiccircleon_y = -86;
        }break;
        
        case 31:
        {
            magiccircleon_y = -88;
        }break;
        
        case 30:
        {
            magiccircleon_y = -90;
        }break;
        
        case 29:
        {
            magiccircleon_y = -92;
        }break;
        
        case 28:
        {
            magiccircleon_y = -93;
        }break;
        
        case 20:
        {
            magiccirclealpha = 0.5;
        }break;
        
        case 10:
        {
            magiccirclealpha = 0;
        }break;
    }
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) 
&& (window == 2 && (has_hit || pullingpanel) || window == 3)
{
    if !powerpull
    {
        if spr_dir = -1
    {
        draw_sprite_ext(sprite_get("pullarrow4"), 1, x+20*spr_dir, y-46, 2, 2, pullangle, c_white, 1);
    }
    else
    {
        draw_sprite_ext(sprite_get("pullarrow3"), 1, x+20*spr_dir, y-46, 2, 2, pullangle*-1, c_white, 1);
    }
    }
    else
    {
        if spr_dir = -1
    {
        draw_sprite_ext(sprite_get("pullarrow"), 1, x+20*spr_dir, y-46, 2, 2, pullangle, c_white, 1);
    }
    else
    {
        draw_sprite_ext(sprite_get("pullarrow2"), 1, x+20*spr_dir, y-46, 2, 2, pullangle*-1, c_white, 1);
    }
    }
    
}

if attack == AT_FSPECIAL_2 && state == PS_ATTACK_GROUND
{
    
    if window <= 3
        {
            if can_grab_visual == true
        {
                draw_debug_text(x-30,y+20, string("Grab Em!"));
        }
        else
        {
            draw_debug_text(x-34,y+20, string("Rush Time!"));
        }
        
        draw_sprite_ext(sprite_get("olivia_1000fold"), olivia_image_index, x-30*spr_dir, anchor_point_y-26, 2*spr_dir, 2, 0, c_white, olivia_alpha);
    }
    else
    {
        draw_sprite_ext(sprite_get("oliviahappy"), 0, x-30*spr_dir, anchor_point_y-26, 2*spr_dir, 2, 0, c_white, olivia_alpha);
    }
}

if (attack == AT_DSTRONG) && (state == PS_ATTACK_GROUND)
{
    if window <= 2
    {
        draw_sprite_ext(sprite_get("DownStrongPress"), pressButton, x+1, y+24,2,2,0,c_white,1);
    }
    
    if (window == 4 && window_timer >= 12) || window >= 5  && dstrong_pressed == false
    {
        draw_sprite_ext(sprite_get("Missed"), 0, x+1, y+24,2,2,0,c_white,1);
    }
}

if (attack == AT_DATTACK) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    if window <= 2
    {
        switch (spr_dir)
        {
            case -1:
            {
                draw_sprite_ext(sprite_get("SideSpecPress"), pressButton, x-64*spr_dir, y-36,2,2,0,c_white,1);
            }break;
            
            case 1:
            {
                draw_sprite_ext(sprite_get("SideSpecPress2"), pressButton, x-64*spr_dir, y-36,2,2,0,c_white,1);
            }
        }
    }
    
    if window == 3 || window == 4
	{
	    draw_sprite_ext(sprite_get("Missed"), 0, x-64*spr_dir, y-36,2,2,0,c_white,1);
	}
}

if (attack == AT_NAIR) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    if window <= 3
    {
        draw_sprite_ext(sprite_get("HoldA"), pressButton, x-64*spr_dir, y-46,2,2,0,c_white,1);
    }
    
    if (NAir_Land == false || !has_hit) && window >= 7
    {
        draw_sprite_ext(sprite_get("Missed"), pressButton, x-64*spr_dir, y-46,2,2,0,c_white,1);
    }
}

if (attack == AT_FSPECIAL_AIR) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    if window >= 9 && dash_fspec == true
    {
        draw_sprite_ext(sprite_get("Missed"), 0, x-64*spr_dir, y-36,2,2,0,c_white,1);
    }
}