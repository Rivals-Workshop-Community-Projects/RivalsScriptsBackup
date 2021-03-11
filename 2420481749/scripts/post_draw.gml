//hi

//draw_sprite(sprite_get("hurtbox"), 0, x+56*spr_dir+thousandfold_x*spr_dir, y-16);

if (attack == AT_DSTRONG) && (state == PS_ATTACK_GROUND)
{
    switch (window)
    {
        case 2:
        {
            if (window_timer <=12)
            {
                draw_sprite(sprite_get("pressstrong"), 0, x-31, y-146);
            }
            else if (window_timer >=12 && window_timer <=16)
            {
                draw_sprite(sprite_get("pressstrong"), 1, x-31, y-146);
            }
            else if (window_timer >=16 && window_timer <=18)
            {
                draw_sprite(sprite_get("pressstrong"), 2, x-31, y-146);
            }
            else if (window_timer >=18 && window_timer <=21)
            {
                draw_sprite(sprite_get("pressstrong"), 3, x-31, y-146);
            }
            else if (window_timer >=21 && window_timer <=23)
            {
                draw_sprite(sprite_get("pressstrong"), 4, x-31, y-146);
            }
            else if (window_timer >=23 && window_timer <=24)
            {
                draw_sprite(sprite_get("pressstrong"), 5, x-31, y-146);
            }
            else if (window_timer >=24 && window_timer <=25)
            {
                draw_sprite(sprite_get("pressstrong"), 6, x-31, y-146);
            }
            else if (window_timer >=25 && window_timer <=26)
            {
                draw_sprite(sprite_get("pressstrong"), 7, x-31, y-146);
            }
            else if (window_timer >=26 && window_timer <=27)
            {
                draw_sprite(sprite_get("pressstrong"), 8, x-31, y-146);
            }
        }break;
        
        case 3:
        {
            if (window_timer <=2)
            {
                draw_sprite(sprite_get("pressedstrong"), 0, x-31, y-146);
            }
            else if (window_timer >=2 && window_timer <=4)
            {
                draw_sprite(sprite_get("pressedstrong"), 1, x-31, y-146);
            }
            else if (window_timer >=4 && window_timer <=6)
            {
                draw_sprite(sprite_get("pressedstrong"), 2, x-31, y-146);
            }
            else if (window_timer >=6 && window_timer <=8)
            {
                draw_sprite(sprite_get("pressedstrong"), 3, x-31, y-146);
            }
            else if (window_timer >=8 && window_timer <=10)
            {
                draw_sprite(sprite_get("pressedstrong"), 4, x-31, y-146);
            }
            else if (window_timer >=10 && window_timer <=12)
            {
                draw_sprite(sprite_get("pressedstrong"), 5, x-31, y-146);
            }
            else if (window_timer >=12 && window_timer <=14)
            {
                draw_sprite(sprite_get("pressedstrong"), 6, x-31, y-146);
            }
            else if (window_timer >=14 && window_timer <=16)
            {
                draw_sprite(sprite_get("pressedstrong"), 7, x-31, y-146);
            }
            else if (window_timer >=16 && window_timer <=18)
            {
                draw_sprite(sprite_get("pressedstrong"), 8, x-31, y-146);
            }
            else if (window_timer >=18 && window_timer <=20)
            {
                draw_sprite(sprite_get("pressedstrong"), 9, x-31, y-146);
            }
        }break;
    }
}

if (attack == AT_NAIR) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    switch (window)
    {
        case 1:
        {
            draw_sprite(sprite_get("pressa"), 0, x-60*spr_dir, y-100);
        }break;
        
        case 2:
        {
            if (window_timer <=2)
            {
                draw_sprite(sprite_get("pressa"), 1, x-60*spr_dir, y-100);
            }
            else if (window_timer >=2 && window_timer <=4)
            {
                draw_sprite(sprite_get("pressa"), 2, x-60*spr_dir, y-100);
            }
            else
            {
                draw_sprite(sprite_get("pressa"), 3, x-60*spr_dir, y-100);
            }
        }break;
        
        case 3:
        {
            if (window_timer <=2)
            {
                draw_sprite(sprite_get("pressa"), 4, x-60*spr_dir, y-100);
            }
            else if (window_timer <=4 && window_timer >= 2)
            {
                draw_sprite(sprite_get("pressa"), 5, x-60*spr_dir, y-100);
            }
            else if (window_timer >= 4)
            {
                draw_sprite(sprite_get("pressa"), 6, x-60*spr_dir, y-100);
            }
            else if (window_timer >= 4 && window_timer <= 6)
            {
                draw_sprite(sprite_get("pressa"), 7, x-60*spr_dir, y-100);
            }
            else
            {
                draw_sprite(sprite_get("pressa"), 8, x-60*spr_dir, y-100);
            }
        }break;
        
        case 5:
        {
            if (window_timer <= 2)
            {
                draw_sprite(sprite_get("presseda"), 0, x-60*spr_dir, y-100);
            }
            else if (window_timer >=2 && window_timer <= 3)
            {
                draw_sprite(sprite_get("presseda"), 1, x-60*spr_dir, y-100);
            }
            else if (window_timer >=3 && window_timer <= 5)
            {
                draw_sprite(sprite_get("presseda"), 2, x-60*spr_dir, y-100);
            }
            else if (window_timer >=5 && window_timer <= 7)
            {
                draw_sprite(sprite_get("presseda"), 3, x-60*spr_dir, y-100);
            }
            else if (window_timer >=7 && window_timer <= 9)
            {
                draw_sprite(sprite_get("presseda"), 4, x-60*spr_dir, y-100);
            }
            else if (window_timer >=9)
            {
                draw_sprite(sprite_get("presseda"), 5, x-60*spr_dir, y-100);
            }
        }break;
        
        case 6:
        {
            if (window_timer <= 2)
            {
                draw_sprite(sprite_get("presseda"), 6, x-60*spr_dir, y-100);
            }
            else if (window_timer <= 4 && window_timer >= 2)
            {
                draw_sprite(sprite_get("presseda"), 7, x-60*spr_dir, y-100);
            }
            else if (window_timer <= 6 && window_timer >= 4)
            {
                draw_sprite(sprite_get("presseda"), 8, x-60*spr_dir, y-100);
            }
        }
    }
}

if (attack == AT_DATTACK) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    switch (window)
    {
        case 1:
        {
            draw_sprite_ext(sprite_get("pressfspec"), 0, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
        }break;
        
        case 2:
        {
            if (window_timer <=2)
            {
                 draw_sprite_ext(sprite_get("pressfspec"), 1, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=2 && window_timer <=4)
            {
                 draw_sprite_ext(sprite_get("pressfspec"), 2, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=4 && window_timer <=6)
            {
                 draw_sprite_ext(sprite_get("pressfspec"), 4, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=6 && window_timer <=8)
            {
                 draw_sprite_ext(sprite_get("pressfspec"), 5, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=8 && window_timer <=10)
            {
                 draw_sprite_ext(sprite_get("pressfspec"), 6, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=10 && window_timer <=14)
            {
                 draw_sprite_ext(sprite_get("pressfspec"), 7, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=14 && window_timer <=16)
            {
                 draw_sprite_ext(sprite_get("pressfspec"), 8, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=16 && window_timer <=18)
            {
                 draw_sprite_ext(sprite_get("pressfspec"), 9, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else
            {
                
            }
        }break;
    }
}

if (attack == AT_FSPECIAL_AIR) && (state == PS_ATTACK_AIR) && dash_fspec == true
{
    switch (window)
    {
        case 2:
        {
            if (window_timer == 1)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 0, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=1 && window_timer <= 2)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 1, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=2 && window_timer <= 3)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 2, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=3 && window_timer <= 4)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 3, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=4 && window_timer <= 5)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 4, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=5 && window_timer <= 6)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 5, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=6 && window_timer <= 8)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 6, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
        }break;
        
        case 3:
        {
            if (window_timer <= 1)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 7, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=1 && window_timer <= 2)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 8, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else if (window_timer >=2 && window_timer <= 4)
            {
                draw_sprite_ext(sprite_get("pressedfspec"), 9, x-90*spr_dir, y-120, 1*spr_dir, 1, 0, c_white, 1);
            }
            else
            {
                
            }
        }break;
    }
}


if ("doublepowerboost" in self) && ("exjumps" in self)
{
    if doublepowerboost == true
    {
        draw_sprite(sprite_get("panelicons"), 4, x-32*spr_dir, y-56);
        if exjumps >= 1
        {
            draw_sprite(sprite_get("panelicons"), 13, x-32*spr_dir, y-20);
            draw_debug_text(x-44*spr_dir,y-20, string(exjumps));
        }
    }
    else
    if exjumps >= 1
    {
        draw_sprite(sprite_get("panelicons"), 13, x-32*spr_dir, y-56);
        draw_debug_text(x-44*spr_dir,y-56, string(exjumps));
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