///
shader_start();
if curse_target != self {
if admb > 0 or admw > 0{
    draw_sprite(sprite_get("ADmark2"), 0,  curse_target.x ,  curse_target.y + 40); 
    if admb > 0 {
    draw_sprite(sprite_get("ADmark2"),  1 + (admb - 1)*3 + (get_gameplay_time()%15)/5,  curse_target.x ,  curse_target.y + 40); 
    }
    if admw > 0{ 
    draw_sprite(sprite_get("ADmark2"), 7 + admw*3 + (get_gameplay_time()%15)/5,  curse_target.x ,  curse_target.y + 40); 
    }
}

if karmatimer != 0 {
    if karmatimer >= 300 {
    draw_sprite(sprite_get("ADmark"), 32 - ((karmatimer - 300)/5),  curse_target.x ,  curse_target.y + 40); 
    }
    
    if karmatimer < 300 && karmatimer >= 30 {
        if karma < 20 {
            draw_sprite(sprite_get("ADmark"), 30 + (get_gameplay_time()%15)/5,  curse_target.x ,  curse_target.y + 40); 
        } else {
            draw_sprite(sprite_get("ADmark"), 33 + (get_gameplay_time()%15)/5,  curse_target.x ,  curse_target.y + 40); 
        }
    }
    
    if karmatimer >= 30 && karmatimer < 60 {
            draw_sprite(sprite_get("cd1"), karmatimer % 9,  curse_target.x ,  curse_target.y - 10); 
    }
    
    if karmatimer < 30 {

            draw_sprite(sprite_get("cd2"), karmatimer % 8,  curse_target.x ,  curse_target.y - 10); 
        
         draw_sprite(sprite_get("ADmark"), 40 - (karmatimer/5), curse_target.x ,  curse_target.y - 16 + karmatimer*2); 
    }
}

///if soultimer == 0 {
///draw_sprite(sprite_get("glow"), 0, x, y - 40);
///draw_sprite(sprite_get("glow"), 0, x, y - 40);
///if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
///    if attack == AT_USTRONG or attack == AT_FSTRONG or attack == AT_DSTRONG {
///        if window <= 3 {
///           draw_sprite(sprite_get("glow"), 0, x, y - 40); 
///        }
///        
///        if window == 2 {
///           draw_sprite(sprite_get("glow"), 0, x, y - 40);
///        }
///    }
///}
///
///}
    
}

shader_end();