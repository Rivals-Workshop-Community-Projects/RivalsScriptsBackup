///

shader_start();

if !attacking or (attacking && attack != AT_FSPECIAL && attack != AT_DSPECIAL  && attack != AT_USPECIAL ) {
if move_cooldown[AT_EXTRA_2] > 0 {
    draw_sprite_ext(sprite_get("hhhproj"), get_gameplay_time(), famix , famiy , 1.05, 1.05, 0 , c_black , 0.6);	
}
}


if state == PS_PARRY or move_cooldown [AT_EXTRA_3] != 0 {
    
    draw_sprite_ext(sprite_index, image_index, x , y , spr_dir, 1, 0 , c_white ,  1);	
}


if state_cat == SC_HITSTUN {
    
    if get_gameplay_time() % 6 < 2 {
        spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar3)
    	  gpu_set_blendmode(bm_add);
               draw_sprite_ext(sprite_index, image_index, x - 5 + random_func(1,10,true), y - 5 + random_func(2,10,true) , spr_dir, 1, 0 , c_white ,  0.6 );	
     	  gpu_set_blendmode(bm_normal);
    }
}

if attacking {
    
    

     	  
    if attack == AT_DSPECIAL {
        
        if window > 4 { 
          draw_sprite_ext(sprite_index, image_index, x , y , spr_dir, 1, 0 , c_black ,  0.3);
        } else {
            if get_gameplay_time() % 6 < 2 {
                   
                	  gpu_set_blendmode(bm_add);
                         draw_sprite_ext(sprite_index, image_index, x - 5 + random_func(1,10,true), y - 5 + random_func(2,10,true) , spr_dir, 1, 0 , c_white ,  0.6 );	
                 	  gpu_set_blendmode(bm_normal);
            }
        }
    }
    
    if attack == AT_NSPECIAL && state_timer < 16 {
            if get_gameplay_time() % 4 < 2 {
               spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 10 -  random_func(2, 60, true) , hpar3)
           	  gpu_set_blendmode(bm_add);
                  draw_sprite_ext(sprite_index, image_index, x - 5 + random_func(1,10,true), y - 5 + random_func(2,10,true) , spr_dir, 1, 0 , c_white ,  0.6 );	
               gpu_set_blendmode(bm_normal);
           }
    }
    
     if attack == AT_FSPECIAL && state_timer > 1 && window < 4 {
              gpu_set_blendmode(bm_add);
                  draw_sprite_ext(sprite_index, image_index, x - 5 + random_func(1,10,true), y - 5 + random_func(2,10,true) , spr_dir, 1, 0 , c_white ,  0.3 );	
               gpu_set_blendmode(bm_normal);
     }
     
 if nfloat < 5 {  
 if hhh != 0 {   
    switch attack {
        case AT_FTILT :
            draw_sprite_ext(sprite_get("ftiltex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  0.9 - state_timer/40);
        break ; 

        case AT_DTILT :
            draw_sprite_ext(sprite_get("dtiltex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  0.9 - state_timer/40);
        break ; 

        case AT_UTILT :
            draw_sprite_ext(sprite_get("utiltex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  0.9 - state_timer/40);
        break ; 

        case AT_FAIR:
            draw_sprite_ext(sprite_get("fairex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  0.9 - state_timer/40);
        break ; 
        
        case AT_BAIR:
            draw_sprite_ext(sprite_get("bairex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  0.9 - state_timer/40);
        break ;  
        
        case AT_DAIR:
            draw_sprite_ext(sprite_get("dairex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  0.9 - state_timer/40);
        break ;            

        case AT_UAIR:
            draw_sprite_ext(sprite_get("uairex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  0.9 - state_timer/40);
        break ;  

    }
 
 }
 }
 
}


if attack == AT_FSTRONG && state_timer >= 300 && window == 4 {
                    gpu_set_blendmode(bm_add);  
                    draw_sprite_ext(sprite_get("fstrong_hurt"), image_index, x , y  , spr_dir, 1, 0 , c_white ,  1 - (window_timer)/30);
                    gpu_set_blendmode(bm_normal);  
                
}

if attack == AT_USTRONG  && window == 4 {
                    gpu_set_blendmode(bm_add);  
                    draw_sprite_ext(sprite_get("ustrong_hurt"), image_index, x , y  , spr_dir, 1, 0 , c_white ,  1 - (window_timer)/20);
                    gpu_set_blendmode(bm_normal);  
                
}


if hhh = 0 && attacking {
        switch attack {
            
             case AT_FSPECIAL :
                      gpu_set_blendmode(bm_add);  
                    draw_sprite_ext(sprite_get("fspecial_hurt"), image_index, x , y  , spr_dir, 1, 0 , c_white ,  0.6  - state_timer/90);
                    gpu_set_blendmode(bm_normal);  
             break ; 
                   
                   
                    
            case AT_DSPECIAL :
                     
                    gpu_set_blendmode(bm_add);  
                    draw_sprite_ext(sprite_get("dspecial_hurt"), image_index, x , y  , spr_dir, 1, 0 , c_white ,  0.6 - state_timer/90);
                 gpu_set_blendmode(bm_normal);  
                     
                    
            break ; 
                    
                    
                    
             case AT_USPECIAL :
                    
                                  gpu_set_blendmode(bm_add);  
                    draw_sprite_ext(sprite_get("uspecial_hurt"), image_index, x , y , spr_dir, 1, 0 , c_white ,  0.6 - state_timer/90);
                   gpu_set_blendmode(bm_normal);  
                     
             break ; 
        }
}

if attacking && attack == AT_TAUNT && window >= 4 {
	draw_sprite_ext(sprite_get("tauntfunk"), 1, thundervictim.x  , thundervictim.y  - 200 , spr_dir, 1, 0 , c_white ,  1.6 - (get_gameplay_time()%20)/20);
	draw_sprite_ext(sprite_get("tauntfunk"), 2, thundervictim.x  , thundervictim.y  - 200 , spr_dir, 1, 0 , c_white ,  move_cooldown[AT_NSPECIAL_2]/10 );
    
    
}

shader_end();