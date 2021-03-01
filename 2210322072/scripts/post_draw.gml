shader_start();

if soultimer < -350 {
    if soulfree == -1{
    if souldir = -1 {
    draw_sprite(sprite_get("dspecl"), state_timer / 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecr"), state_timer / 5, soulx, souly); 
    }
    } else {
    if souldir = -1 {    
       draw_sprite(sprite_get("dspecla"), state_timer / 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecra"), state_timer / 5, soulx, souly); 
    } 
    }
    
}

if soultimer < 0 && soultimer >= -350 {
     if get_gameplay_time() % 20 == 0 && soulfree == 1 {
    spawn_hit_fx (soulx,souly - 30, wh )
    spawn_hit_fx (soulx,souly - 30, bh )
    }
    
    
    
    if get_gameplay_time() % 20 == 0 && soulfree == -1 && soultimer < -300  {
    spawn_hit_fx (soulx,souly - 30, wh )
    spawn_hit_fx (soulx,souly - 30, bh )
    }
    
    

if soultimer % 3 == 0 {
    if soulfree == -1{
   if souldir = -1 {
    draw_sprite(sprite_get("dspecl"), 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecr"), 5, soulx, souly); 
    }
    
    }else {
    if souldir = -1 {
    draw_sprite(sprite_get("dspecla"), 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecra"), 5, soulx, souly); 
    }
    
    }
}


if soultimer > -340 {
        if soulfree == -1{
   if souldir = -1 {
    draw_sprite(sprite_get("dspecl"), 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecr"), 5, soulx, souly); 
    }
    
    }else {
    if souldir = -1 {
    draw_sprite(sprite_get("dspecla"), 5, soulx, souly); 
    }
    
    if souldir = 1 {
    draw_sprite(sprite_get("dspecra"), 5, soulx, souly); 
    }
    
    }
}

}

shader_end() 

