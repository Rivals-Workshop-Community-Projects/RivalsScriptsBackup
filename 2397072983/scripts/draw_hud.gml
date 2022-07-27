///


 draw_sprite_ext(sprite_get("batt"),  charge , temp_x+ 34, temp_y -48,1,1,0,-1,1 );
gpu_set_blendmode(bm_add);    
 draw_sprite_ext(sprite_get("batt"),  charge , temp_x+ 36 - random_func(1,4,true), temp_y - 46 - random_func(2,4,true),1,1,0,-1,charge/5 ); 
    gpu_set_blendmode(bm_normal); 
 
 //if has_rune("M")  {   
     draw_sprite_ext(sprite_get("shop2"),  0 , temp_x+ 82, temp_y -36,1,1,0,-1,1 );
     
     draw_sprite_ext(sprite_get("shop2"),  1 , temp_x+ 82, temp_y -36,1,1,0,-1,adap );
     draw_sprite_ext(sprite_get("shop2"),  2 , temp_x+ 82, temp_y -36,1,1,0,-1,raged );
     draw_sprite_ext(sprite_get("shop2"),  3 , temp_x+ 82, temp_y -36,1,1,0,-1,para );
     draw_sprite_ext(sprite_get("shop2"),  4 , temp_x+ 82, temp_y -36,1,1,0,-1,unte );
     draw_sprite_ext(sprite_get("shop2"),  5 , temp_x+ 82, temp_y -36,1,1,0,-1,disc );
     draw_sprite_ext(sprite_get("shop2"),  6 , temp_x+ 82, temp_y -36,1,1,0,-1,gun );
 //}
 
switch(style1) {

    case 0 :
       draw_sprite_ext(sprite_get("lsw"), 0, temp_x+ 28, temp_y - 10,0.5 + (style = style1)/5,0.5 + (style = style1)/5,0,-1,0.4 + (style = style1) );
    break;
    
    case 1 :
       draw_sprite_ext(sprite_get("asw"), 0, temp_x+ 28, temp_y - 10,0.5 + (style = style1)/5,0.5 + (style = style1)/5,0,-1,0.4 + (style = style1) );
    break;
    
    case 2 :
       draw_sprite_ext(sprite_get("answ"), 0, temp_x+ 28, temp_y - 10,0.5 + (style = style1)/5,0.5 + (style = style1)/5,0,-1,0.4 + (style = style1) );
    break;
    
    case 3 :
       draw_sprite_ext(sprite_get("thsw"), 0, temp_x+ 28, temp_y - 10,0.5 + (style = style1)/5,0.5 + (style = style1)/5,0,-1,0.4 + (style = style1) );
    break;
    
}

switch(style2) {

    case 0 :
       draw_sprite_ext(sprite_get("lsw"), 0, temp_x+ 64, temp_y - 10,0.5 + (style = style2)/5,0.5 + (style = style2)/5,0,-1,0.4 + (style = style2) );
    break;
    
    case 1 :
       draw_sprite_ext(sprite_get("asw"), 0, temp_x+ 64, temp_y - 10,0.5 + (style = style2)/5,0.5 + (style = style2)/5,0,-1,0.4 + (style = style2) );
    break;
    
    case 2 :
       draw_sprite_ext(sprite_get("answ"), 0, temp_x+ 64, temp_y - 10,0.5 + (style = style2)/5,0.5 + (style = style2)/5,0,-1,0.4 + (style = style2) );
    break;
    
    case 3 :
       draw_sprite_ext(sprite_get("thsw"), 0, temp_x+ 64, temp_y - 10,0.5 + (style = style2)/5,0.5 + (style = style2)/5,0,-1,0.4 + (style = style2) );
    break;
    
}

if style == 4 {
    draw_sprite_ext(sprite_get("tsw"), 0, temp_x+ 46, temp_y - 10,0.5 + (style = 4)/5,0.5 + (style = 4)/5,0,-1,0.4 + (style = 4) );
    
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_get("tsw"), 0, temp_x+ 50 - random_func(1,8,true), temp_y - 10 - random_func(2,8,true),0.5 + (style = 4)/5,0.5 + (style = 4)/5,c_aqua,-1,0.4 );
    draw_sprite_ext(sprite_get("tsw"), 0, temp_x+ 50 - random_func(2,8,true), temp_y - 10 - random_func(1,8,true),0.5 + (style = 4)/5,0.5 + (style = 4)/5,c_aqua,-1,0.4 );
    gpu_set_blendmode(bm_normal);
  
  
}


 draw_sprite_ext(sprite_get("fami"), fami , temp_x+ 76, temp_y + 66,0.8,0.8,0,-1,1 );
  if has_rune("M")  {   
          draw_debug_text(temp_x + 140,temp_y - 12,"La:" + string(LA));
 }