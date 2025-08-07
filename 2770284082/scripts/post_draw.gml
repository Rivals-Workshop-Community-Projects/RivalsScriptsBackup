

if state != PS_PARRY && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD
&& state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_AIR_DODGE && state != PS_TECH_GROUND && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR
&& state_cat != SC_HITSTUN && !hitpause{
    
 

shader_start();
draw_sprite_ext(sprite_index, image_index, x, y,  side, 1, 0 , -1, 1 )
/*
    if (move_cooldown[AT_NSPECIAL] < 40 && move_cooldown[AT_NSPECIAL] % 20 > 15) or (move_cooldown[AT_NSPECIAL] > 0 && move_cooldown[AT_NSPECIAL] < 5) {
     gpu_set_blendmode(bm_add);
     draw_sprite_ext(sprite_index,image_index,x,y, side,1,0,-1, .5 )
     gpu_set_blendmode(bm_normal);
     if move_cooldown[AT_NSPECIAL] > 0 && move_cooldown[AT_NSPECIAL] < 5 { 
      gpu_set_blendmode(bm_add);
     draw_sprite_ext(sprite_index,image_index,x,y, side,1,0,-1, 1 )
     gpu_set_blendmode(bm_normal);   
     }
    }
    
  */
  
shader_end() 

if invince_time > 0 {   
    gpu_set_fog(1, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y,  side, 1, 0 , -1, 0.4 )
    gpu_set_fog(0, c_white, 0, 0);
}

   if state == PS_PRATFALL or state == PS_PRATLAND {
        draw_sprite_ext(sprite_index, image_index, x, y,  side, 1, 0 , c_black, .5 )
    }
    
}
shader_start();

if moonlight < 0{
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index, image_index, x, y,  side*1.02, 1*1.02, 0 , -1, .5 - (get_gameplay_time()%20)/40 )
    gpu_set_blendmode(bm_normal);
    if moonlight < -290{
        draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1.6 - (moonlight - -290)/20,1.6 - (moonlight - -290)/2, get_gameplay_time()*-1.2, -1, 0.2)
      gpu_set_blendmode(bm_add);
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1.4- (moonlight - -290)/20,1.4- (moonlight - -290)/20, get_gameplay_time(), -1, 0.1)
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1- (moonlight - -290)/20,1- (moonlight - -290)/20, get_gameplay_time()*-1.6, -1, 0.1)
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1- (moonlight - -290)/20,1- (moonlight - -290)/20, get_gameplay_time()*2, -1, 0.1)
      gpu_set_blendmode(bm_normal);
    } 
    if moonlight >= -290 && moonlight < -10{
     draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1.6,1.6, get_gameplay_time()*-1.2, -1, 0.2)
      gpu_set_blendmode(bm_add);
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1.4,1.4, get_gameplay_time(), -1, 0.1)
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1,1, get_gameplay_time()*-1.6, -1, 0.1)
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1,1, get_gameplay_time()*2, -1, 0.1)
      gpu_set_blendmode(bm_normal);
    }
    if moonlight >= -10{
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1.6,1.6, get_gameplay_time()*-1.2, -1, 0.2 - moonlight/100)
      gpu_set_blendmode(bm_add);
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1.4,1.4, get_gameplay_time(), -1, 0.1 - moonlight/100)
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1,1, get_gameplay_time()*-1.6, -1, 0.1 - moonlight/100)
      draw_sprite_ext(sprite_get("Moonlight"),0, x, y - 30, 1,1, get_gameplay_time()*2, -1, 0.1 - moonlight/100)
      gpu_set_blendmode(bm_normal); 
    }
}

with oPlayer {
    if hatstate == other.player*other.player  {
        with other {
            if other.draw_indicator = true {
            if other.state != PS_ATTACK_GROUND and other.state != PS_ATTACK_AIR {
            force_depth = true
            depth = -6 
            draw_sprite_ext(sprite_get("hat2"),0, other.x, other.y - other.char_height-10, other.spr_dir,1, 0, -1, 1)
            } else {
             force_depth = true
             depth = -6 
             draw_sprite_ext(sprite_get("hat2"),0, other.x, other.y - other.char_height-10, other.spr_dir,1, 0, -1, .4)   
            }
            }
        }
    }
    
     if hatstate == other.player*other.player*3  {
        with other {
            if other.draw_indicator = true {
            if other.state != PS_ATTACK_GROUND and other.state != PS_ATTACK_AIR {
            force_depth = true
            depth = -6 
            draw_sprite_ext(sprite_get("hat7"),0, other.x, other.y - other.char_height-60, other.spr_dir,1, 0, -1, .6)
            } else {
             force_depth = true
             depth = -6 
             draw_sprite_ext(sprite_get("hat7"),0, other.x, other.y - other.char_height-60, other.spr_dir,1, 0, -1, .3)   
            }
            }
        }
    }
    
    if hatstate == 2*other.player*other.player  {
         with other {
             if get_gameplay_time() % 10 == 0 {
                 sound_play(asset_get("sfx_holy_textbox"),false,noone,.8,1)
             }
            if other.draw_indicator = true {
            force_depth = true
            depth = -6 
            draw_sprite_ext(sprite_get("hat2"),1 + (get_gameplay_time()/3)%2, floor(other.x), floor(other.y - other.char_height-10), other.spr_dir,1, 0, -1, 1)
            }
        }
    
    }    

}

shader_end() 



