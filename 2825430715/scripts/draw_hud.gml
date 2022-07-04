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


 draw_sprite_ext(sprite_get("tonefx"), min((triggercutscene - 15 )/5,11) ,(view_get_wview()/2 + 230) - 200, view_get_hview()/2 - 60,2,2,0,-1,(triggercutscene - 15)/20)

  if triggercutscene > 47 {
    with oPlayer {
        shader_start();
         if player != other.player { 
             draw_sprite_ext(dedspr, dedimge ,(view_get_wview()/2 + 230) + 50 - other.triggercutscene*4, view_get_hview()/2 + 180 - other.triggercutscene*4,(300*(small_sprites+1))/(other.triggercutscene - 45)/(other.triggercutscene - 45),(300*(small_sprites+1))/(other.triggercutscene - 45 )/(other.triggercutscene - 45),other.triggercutscene*45,-1,(other.triggercutscene - 40)/10)
    
         } 
         shader_end() 
    }    
 }  
 
shader_start(); 
 draw_sprite_ext(sprite_get("tone"), min((triggercutscene - 15 )/5,11) ,(view_get_wview()/2 + 230) - 200, view_get_hview()/2 - 60,2,2,0,-1,(triggercutscene - 15)/20)
 shader_end() 
 
  
  if  triggercutscene > 0 && triggercutscene < 40 {
    with hit_player_obj shader_start();  
        draw_sprite_ext(spr,img ,random_func(1,5,true) + (view_get_wview()/2 + 230 - 760) + floor(triggercutscene*10), random_func(2,5,true) + view_get_hview()/2 - 352,6 / (triggercutscene/15),6 /(triggercutscene/15),0,-1,(triggercutscene)/30)
     with hit_player_obj shader_end();   
     
 }
  if  triggercutscene >= 40 && triggercutscene < 42 {
     with hit_player_obj shader_start();  
        draw_sprite_ext(spr,img ,random_func(1,5,true) + (view_get_wview()/2 + 230 - 1100), random_func(2,5,true) + view_get_hview()/2 - 652,3.5,3.5,0,-1,(triggercutscene)/10)
     with hit_player_obj shader_end();  
  }
 



if attacking && attack == AT_FSPECIAL_2 {
    
     draw_sprite_ext(sprite_get("tonefx"), 0 ,(view_get_wview()/2 + 230) - 200, view_get_hview()/2 - 60,2,2,0,-1,state_timer/20)

    if state_timer > 1 {
     draw_sprite_ext(sprite_get("tone2"), 0 ,view_get_wview()/2 + 230 - state_timer, view_get_hview()/2,2 - state_timer/200,2 - state_timer/200,0,-1,state_timer/30)
     draw_sprite_ext(sprite_get("tone2"), 0 ,view_get_wview()/2 + 230 + state_timer, view_get_hview()/2,1.4 + state_timer/200,1.4 + state_timer/200,0,-1,min(state_timer/30,0.5))
     
     draw_sprite_ext(sprite_get("tone2"), 2,view_get_wview()/2 + 230 + state_timer, view_get_hview()/2 - 200 + state_timer*4,.3 + state_timer/240,.3 + state_timer/240,0,-1,min(state_timer/30,0.4))
     draw_sprite_ext(sprite_get("tone2"), 1,view_get_wview()/2 + 230 - 300 - state_timer*2, view_get_hview()/2 - 400 + state_timer*8,.7 + state_timer/150,.7 + state_timer/150,0,-1,min(state_timer/30,0.6))
     draw_sprite_ext(sprite_get("tone2"), 1,view_get_wview()/2 + 230 + 800, view_get_hview()/2 + 800 + state_timer*6,5 - state_timer/100,5 - state_timer/100,0,-1,min(state_timer/30,1))
    
    
      with galaxplayer shader_start(); 
       draw_sprite_ext(galaxplayer.sprite_index, galaxplayer.image_index, view_get_wview()/2 + 230 - 230 - 20 + random_func(1,41,true),view_get_hview()/2 - 40 - state_timer*3 - 20 + random_func(2,41,true),(3 + (1*galaxplayer.small_sprites)) + state_timer/150,(1.5 + (1*galaxplayer.small_sprites)) + state_timer/150,0,-1,state_timer/30)
      with galaxplayer shader_end(); 
      
    
    shader_start(); 
       draw_sprite_ext(sprite_index, image_index, view_get_wview()/2 + 230 - 220 ,view_get_hview()/2 + 120 - state_timer*3,2 + state_timer/150,2 + state_timer/150,0,-1,state_timer/30)
    shader_end() 
    

     
    }
    
     
}
