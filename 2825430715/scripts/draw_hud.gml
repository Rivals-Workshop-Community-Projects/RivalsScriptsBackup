shader_start();

    draw_sprite_ext(sprite_get("stones"),0,temp_x + 50,temp_y + 60,1,1,0,-1, 1 )
    draw_sprite_ext(sprite_get("stones"),1,temp_x + 50,temp_y + 60,1,1,0,-1, 1 * hasbalance )
    draw_sprite_ext(sprite_get("stones"),2,temp_x + 50,temp_y + 60,1,1,0,-1, 1 * hasmind  )
    draw_sprite_ext(sprite_get("stones"),3,temp_x + 50,temp_y + 60,1,1,0,-1, 1 * hasbody  )
 
     gpu_set_blendmode(bm_add);
     draw_sprite_ext(sprite_get("stones"),0,temp_x + 50,temp_y + 60,1,1,0,-1, gotstone/90 )
     gpu_set_blendmode(bm_normal)
     
if triggercutscene > 0  {     
with oPlayer {
  if player != other.player {  
    other.hit_player_obj = self 
    other.name = get_char_info(player, INFO_STR_NAME);
    other.spr = get_char_info(player, INFO_PORTRAIT);
    other.img = select - 1;
  }
}

}

shader_end() 


 draw_sprite_ext(sprite_get("tonefx"), min((triggercutscene - 15 )/5,11) ,(room_width/2) - 200, room_height/2 - 60,2,2,0,-1,(triggercutscene - 15)/20)

  if triggercutscene > 47 {
    with oPlayer {
        shader_start();
         if player != other.player { 
             draw_sprite_ext(dedspr, dedimge ,(room_width/2) + 50 - other.triggercutscene*4, room_height/2 + 180 - other.triggercutscene*4,(300*(small_sprites+1))/(other.triggercutscene - 45)/(other.triggercutscene - 45),(300*(small_sprites+1))/(other.triggercutscene - 45 )/(other.triggercutscene - 45),other.triggercutscene*45,-1,(other.triggercutscene - 40)/10)
    
         } 
         shader_end() 
    }    
 }  
 
shader_start(); 
 draw_sprite_ext(sprite_get("tone"), min((triggercutscene - 15 )/5,11) ,(room_width/2) - 200, room_height/2 - 60,2,2,0,-1,(triggercutscene - 15)/20)
 shader_end() 
 
  
  if  triggercutscene > 0 && triggercutscene < 40 {
    with hit_player_obj shader_start();  
        draw_sprite_ext(spr,img ,random_func(1,5,true) + (room_width/2 - 760) + floor(triggercutscene*10), random_func(2,5,true) + room_height/2 - 352,6 / (triggercutscene/15),6 /(triggercutscene/15),0,-1,(triggercutscene)/30)
     with hit_player_obj shader_end();   
     
 }
  if  triggercutscene >= 40 && triggercutscene < 42 {
     with hit_player_obj shader_start();  
        draw_sprite_ext(spr,img ,random_func(1,5,true) + (room_width/2 - 1100), random_func(2,5,true) + room_height/2 - 652,3.5,3.5,0,-1,(triggercutscene)/10)
     with hit_player_obj shader_end();  
  }
 


