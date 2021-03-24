shader_start();

if !isyellow {
if attacking && attack == AT_DSPECIAL && window == 1 && window_timer >= 10 && !free{
    

    draw_sprite_ext(sprite_get("hud_mini"), floor(ink/32), x - 8 , y - 194, 1,1,0,-1, 1);
if ink >= 100 {
    draw_sprite_ext(sprite_get("hud_mini"), 3, x - 8 , y - 194, 1,1,0,-1, 1);
}

if ink >= 200 {
    draw_sprite_ext(sprite_get("hud_mini"), 6, x - 8 , y - 194, 1,1,0,-1, 1);
}

if ink >= 300 {
    draw_sprite_ext(sprite_get("hud_mini"), 9, x - 8 , y - 14, 1,1,0,-1, 1);
}

switch (summon) {
  case 0:
    draw_sprite_ext(sprite_get("hud_minicost"), floor((zettachoose + 100)/32), x - 8 , y - 194, 1,1,0,-1, 1);
  break;

  case 1:
    draw_sprite_ext(sprite_get("hud_minicost"), floor((sajichoose + 100)/32), x - 8 , y - 194, 1,1,0,-1, 1);
  break;
  
  case 2:
    draw_sprite_ext(sprite_get("hud_minicost"), floor((mayuchoose + 100)/32), x - 8 , y - 194, 1,1,0,-1, 1);
  break;
  
 case 3:
    draw_sprite_ext(sprite_get("hud_minicost"), floor((alexchoose + 100)/32), x - 8 , y - 194, 1,1,0,-1, 1);
  break;
  
 case 4:
    draw_sprite_ext(sprite_get("hud_minicost"), floor((akaichoose + 100)/32), x - 8 , y - 194, 1,1,0,-1, 1);
  break;
}

    draw_sprite_ext(sprite_get("hud_summon"), 0, x - 54+45 , y - 145, 0.8, 0.8, 0, -1, 0.4); 
    draw_sprite_ext(sprite_get("hud_summon"), 1, x - 54 , y - 180, 0.8, 0.8, 0, -1, 0.4); 
    draw_sprite_ext(sprite_get("hud_summon"), 2,  x - 54-35 , y - 145, 0.8, 0.8, 0, -1, 0.4); 
    draw_sprite_ext(sprite_get("hud_summon"), 3, x - 54 , y - 110, 0.8, 0.8, 0, -1, 0.4); 
    draw_sprite_ext(sprite_get("hud_summon"), 4, x - 54 , y - 145, 0.8, 0.8, 0, -1, 0.4); 
if get_gameplay_time()%60 >= 30 {   
 switch (summon) {
  case 0:
    draw_sprite_ext(sprite_get("hud_summon"), 0, x - 54+45 , y - 145, 0.8,0.8,0,-1, 1.4 - (get_gameplay_time()%30)/30);
  break;

  case 1:
    draw_sprite_ext(sprite_get("hud_summon"), 1, x - 54 , y - 180, 0.8,0.8,0,-1, 1.4 - (get_gameplay_time()%30)/30);
  break;
  
  case 2:
  draw_sprite_ext(sprite_get("hud_summon"), 2, x - 54-35 , y - 145, 0.8,0.8,0,-1, 1.4 - (get_gameplay_time()%30)/30);
  break;
  
 case 3:
  draw_sprite_ext(sprite_get("hud_summon"), 3, x - 54 , y - 110, 0.8,0.8,0,-1, 1.4 - (get_gameplay_time()%30)/30);
  break;
  
 case 4:
  draw_sprite_ext(sprite_get("hud_summon"), 4, x - 54 , y - 145, 0.8,0.8,0,-1, 1.4 - (get_gameplay_time()%30)/30);
  break;
}


} else {
 switch (summon) {
  case 0:
    draw_sprite_ext(sprite_get("hud_summon"), 0, x - 54+45 , y - 145, 0.8,0.8,0,-1, 1.4 + (get_gameplay_time()%30)/30);
  break;

  case 1:
    draw_sprite_ext(sprite_get("hud_summon"), 1, x - 54 , y - 180, 0.8,0.8,0,-1, 1.4 + (get_gameplay_time()%30)/30);
  break;
  
  case 2:
  draw_sprite_ext(sprite_get("hud_summon"), 2, x - 54-35 , y - 145, 0.8,0.8,0,-1, 1.4 + (get_gameplay_time()%30)/30);
  break;
  
 case 3:
  draw_sprite_ext(sprite_get("hud_summon"), 3, x - 54 , y - 110, 0.8,0.8,0,-1, 1.4 + (get_gameplay_time()%30)/30);
  break;
  
 case 4:
  draw_sprite_ext(sprite_get("hud_summon"), 4, x - 54 , y - 145, 0.8,0.8,0,-1, 1.4 + (get_gameplay_time()%30)/30);
  break;
}
}

if summon % 5 == 0 {
draw_debug_text(x + 20 ,y -102,"Zetta");
}
if summon % 5 == 1{
draw_debug_text(x + 20 ,y -102,"Saji");
}
if summon % 5 == 2{
draw_debug_text(x + 20 ,y -102,"Mayu");
}
if summon % 5 == 3{
draw_debug_text(x + 20 ,y -102,"Alex");
}
if summon % 5 == 4{
draw_debug_text(x + 20 ,y -102,"Akai");
}
}
if draw_indicator = true{
if inkshield {
    draw_sprite_ext(sprite_get("blackhit"), get_gameplay_time() / 2, x, y - 32, 0.5 + (inkshield/300)/2, 0.5 + (inkshield/300)/2, 0, -1, 0.6 + (inkshield/300)/1.5) ; 
    draw_sprite_ext(sprite_get("bluehit"), (get_gameplay_time() / 2) + 1, x, y - 32, 0.5 + (inkshield/300)/2, 0.5 + (inkshield/300)/2, 0, -1, 0.6 + (inkshield/300)/1.5); 
    
    if !attacking {
    		draw_sprite_ext(sprite_index, image_index, x - 3 + random_func(1,6,true) , y + random_func(2,6,true), 1.1 * spr_dir, 1.1, 0 , c_white , 0.3 + (inkshield/300)/2);
    }
	
}






draw_sprite_ext(sprite_get("hud_mini"), floor(ink/32), x - 32 , y - 22, 1,1,0,-1, move_cooldown[AT_EXTRA_2]/60);
if ink >= 100 {
    draw_sprite_ext(sprite_get("hud_mini"), 3, x - 32 , y - 22, 1,1,0,-1, move_cooldown[AT_EXTRA_2]/60);
}

if ink >= 200 {
    draw_sprite_ext(sprite_get("hud_mini"), 6, x - 32 , y - 22, 1,1,0,-1, move_cooldown[AT_EXTRA_2]/60);
}

if ink >= 300 {
    draw_sprite_ext(sprite_get("hud_mini"), 9, x - 32 , y - 22, 1,1,0,-1, move_cooldown[AT_EXTRA_2]/60);
}
}
}
shader_end() 

