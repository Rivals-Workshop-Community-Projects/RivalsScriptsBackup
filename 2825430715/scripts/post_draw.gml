///
shader_start();

if fakeinvi > 0 {
    draw_sprite_ext(sprite_index,image_index,x,y ,spr_dir,1,0,-1,1 )
}

if gotstone > 0 {
    draw_sprite_ext(sprite_get("stones"),0,x,y - 60,1,1,0,-1,  gotstone/30 )
    draw_sprite_ext(sprite_get("stones"),1,x,y - 60,1,1,0,-1,  gotstone/30 * hasbalance )
    draw_sprite_ext(sprite_get("stones"),2,x,y - 60,1,1,0,-1,  gotstone/30 * hasmind  )
    draw_sprite_ext(sprite_get("stones"),3,x,y - 60,1,1,0,-1,  gotstone/30 * hasbody  )
    
    gpu_set_blendmode(bm_add);
     draw_sprite_ext(sprite_get("stones"),0,x,y - 60,1,1,0,-1, gotstone/90 )
     gpu_set_blendmode(bm_normal)
}

if attacking && attack == AT_FTHROW {
    draw_sprite_ext(sprite_get("stones"),0,x,y - 60,1,1,0,-1,  move_cooldown[AT_DTHROW]/30 )
    draw_sprite_ext(sprite_get("stones"),1,x,y - 60,1,1,0,-1,  move_cooldown[AT_DTHROW]/30 * hasbalance )
    draw_sprite_ext(sprite_get("stones"),2,x,y - 60,1,1,0,-1,  move_cooldown[AT_DTHROW]/30 * hasmind  )
    draw_sprite_ext(sprite_get("stones"),3,x,y - 60,1,1,0,-1,  move_cooldown[AT_DTHROW]/30 * hasbody  )
    
    draw_sprite_ext(sprite_get("stones"),4 + thresholdNEO%10 ,hit_player_obj.x + 12,hit_player_obj.y + 60,1,1,0,-1,  move_cooldown[AT_UTHROW]/6)
    draw_sprite_ext(sprite_get("stones"),4 + floor(thresholdNEO/10)%10 ,hit_player_obj.x - 2,hit_player_obj.y + 60,1,1,0,-1,  move_cooldown[AT_UTHROW]/6)
    draw_sprite_ext(sprite_get("stones"),4 + floor(thresholdNEO/100)%10 ,hit_player_obj.x - 16,hit_player_obj.y + 60,1,1,0,-1,  move_cooldown[AT_UTHROW]/6)
    
    gpu_set_blendmode(bm_add);
    if window == 1 && (move_cooldown[AT_UTHROW] > 6) {
       draw_sprite_ext(sprite_get("stones"),1,x,y - 60,1,1,0,-1, hasbalance )
       draw_sprite_ext(sprite_get("stones"),2,x,y - 60,1,1,0,-1, hasmind  )
       draw_sprite_ext(sprite_get("stones"),3,x,y - 60,1,1,0,-1, hasbody  ) 
       draw_sprite_ext(sprite_get("stones"),0,x,y - 60,1,1,0,-1, move_cooldown[AT_DTHROW]/30 )
    }
    
    draw_sprite_ext(sprite_get("stones"),4 + thresholdNEO%10 ,hit_player_obj.x + 12,hit_player_obj.y + 60,1,1,0,-1,  move_cooldown[AT_UTHROW]/6)
    draw_sprite_ext(sprite_get("stones"),4 + floor(thresholdNEO/10)%10 ,hit_player_obj.x - 2,hit_player_obj.y + 60,1,1,0,-1,  move_cooldown[AT_UTHROW]/6)
    draw_sprite_ext(sprite_get("stones"),4 + floor(thresholdNEO/100)%10 ,hit_player_obj.x - 16,hit_player_obj.y + 60,1,1,0,-1,  move_cooldown[AT_UTHROW]/6)
    gpu_set_blendmode(bm_normal);
    

    
    

    
}

if cheapmode == 3 {
    gpu_set_blendmode(bm_add);
     draw_sprite_ext(sprite_index,image_index,x,y - get_gameplay_time()%10, spr_dir,1,0,-1, 1 - (get_gameplay_time()%10)/10 )
     gpu_set_blendmode(bm_normal);
}


shader_end() 

if cheapmode == 1 && get_gameplay_time() < 600 &&  get_gameplay_time() > 60 {
    draw_debug_text(x - 70 ,y -162,"You don't play fair?");
	draw_debug_text(x - 100 ,y -142,"(taunt to active anticheap)");
}

if cheapmode == 3 && get_gameplay_time() < 660 {
     draw_debug_text(x - 56 ,y -162,"Very well then.");
}



with oPlayer {
    shader_start();
    if "KOdusted" in self {
      if KOdusted > 0 {
          draw_sprite_ext(dustspr,dustimg,dustx,dusty - (60 - KOdusted)/3,dustdir * (1 + small_sprites),1 + small_sprites,0,-1, KOdusted/90 )  
          if get_gameplay_time() % floor((100 - KOdusted)/15) == 0  {
          dfx =  spawn_hit_fx(dustx - random_func(1,80,true) + 40,dusty - random_func(2,80,true) - (60 - KOdusted)*2,13)
          dfx.pause = 0
          dfx.spr_dir =.5
          dfx.image_yscale =.5
          }
          KOdusted --
      }
    }
    shader_end() 
}
