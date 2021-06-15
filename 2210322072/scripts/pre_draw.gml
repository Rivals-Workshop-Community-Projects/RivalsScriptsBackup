///
shader_start();
if curse_target != self {
if admb > 0 or admw > 0{
    draw_sprite_ext(sprite_get("ADmark2"), 0,  x ,  y + 40,1,1,0,-1,0.2 + move_cooldown[AT_EXTRA_1]/30); 
    if admb > 0 {
    draw_sprite_ext(sprite_get("ADmark2"),  1 + (admb - 1)*3 + (get_gameplay_time()%15)/5,  x ,  y + 40,1,1,0,-1,0.2 + move_cooldown[AT_EXTRA_1]/30); 
    }
    if admw > 0{ 
    draw_sprite_ext(sprite_get("ADmark2"), 7 + admw*3 + (get_gameplay_time()%15)/5,  x ,  y + 40,1,1,0,-1,0.2 + move_cooldown[AT_EXTRA_1]/30); 
    }
}

if karmatimer != 0 {
    
     
     if karmatimer > 340 or karmatimer < 20 {
         draw_sprite_ext(sprite_get("yinyang"), 0,  room_width/2 ,  room_height/2 - 60,0.8,0.8,karmatimer*-1,-1,(get_gameplay_time()%3)/10 );     
     } else {
                 draw_sprite_ext(sprite_get("yinyang"), 0,  room_width/2 ,  room_height/2  - 60,0.8,0.8,karmatimer*-1,-1, 0.2 );   
     }
     
    if karmatimer >= 300 {
    draw_sprite_ext(sprite_get("ADmark"), 32 - ((karmatimer - 300)/5),  x ,  y + 40,1,1,0,-1,1); 
    }
    
    if karmatimer < 300 && karmatimer >= 30 {
        if karma < 20 {
            draw_sprite_ext(sprite_get("ADmark"), 30 + (get_gameplay_time()%15)/5,  x ,  y + 40,1,1,0,-1,1); 
        } else {
            draw_sprite_ext(sprite_get("ADmark"), 33 + (get_gameplay_time()%15)/5,  x ,  y + 40,1,1,0,-1,1); 
        }
    }
    
    if karmatimer >= 30 && karmatimer < 60 {
            draw_sprite_ext(sprite_get("cd1"), karmatimer % 9,  x ,  y - 10,1,1,0,-1,1); 
    }
    
    if karmatimer <= 30 {
            draw_sprite_ext(sprite_get("cd2"), karmatimer % 8,  x ,  y - 10,1,1,0,-1,1); 
        
         draw_sprite_ext(sprite_get("ADmark"), 40 - (karmatimer/5), x ,  y - 16 + karmatimer*2,1,1,0,-1,1); 
    }
}

///if soultimer == 0 {
///draw_sprite_ext(sprite_get("glow"), 0, x, y - 40);
///draw_sprite_ext(sprite_get("glow"), 0, x, y - 40);
///if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
///    if attack == AT_USTRONG or attack == AT_FSTRONG or attack == AT_DSTRONG {
///        if window <= 3 {
///           draw_sprite_ext(sprite_get("glow"), 0, x, y - 40); 
///        }
///        
///        if window == 2 {
///           draw_sprite_ext(sprite_get("glow"), 0, x, y - 40);
///        }
///    }
///}
///
///}
    
}

shader_end();