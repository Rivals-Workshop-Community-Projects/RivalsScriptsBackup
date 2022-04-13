///



shader_start();
if htrain > 300 {
   if htrain > 340 {    
         draw_debug_text(floor(x) - 70 ,floor(y) - 170 , "+ Head Strength");
         draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Giga Dash");
   }
    
}

if htrain > 300 && htrain % 2 == 0 {
    if (get_player_color(player) == 11) {
           gpu_set_blendmode(bm_add);
                draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , .25);
           gpu_set_blendmode(bm_normal);
           
    }
    
      draw_debug_text(floor(x) - 70 ,floor(y) - 170 , "+ Head Strength");
      draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Giga Dash");
    
}



if atrain > 300 {
     if atrain > 340 {     
      draw_debug_text(floor(x) - 70 ,floor(y) - 170 , "+ Arms Strength");
      draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Triple Jump");
     }
}

if atrain > 300 && atrain % 2 == 0 {
    if (get_player_color(player) == 11) {
           gpu_set_blendmode(bm_add);
                draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , .25);
           gpu_set_blendmode(bm_normal);
           
    }
      draw_debug_text(floor(x) - 70 ,floor(y) - 170 , "+ Arms Strength");
      draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Triple Jump");
    
}

if btrain > 300 {
       if btrain > 340 {   
      draw_debug_text(floor(x) - 70 ,floor(y) - 170 , "+ Body Strength");
      draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Projectile Reflect");
       }
    
}
if btrain > 300 && btrain % 2 == 0 {
    if (get_player_color(player) == 11) {
        
           gpu_set_blendmode(bm_add);
                draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , .25);
           gpu_set_blendmode(bm_normal);
           
    }
      draw_debug_text(floor(x) - 70 ,floor(y) - 170 , "+ Body Strength");
      draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Projectile Reflect");
    
}


if ltrain > 300 {   
    if ltrain > 340 {   
      draw_debug_text(floor(x) - 70 ,floor(y) - 170 , "+ Legs Strength");
      draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Faster Landing");
    }
    
}


if ltrain > 300 && ltrain % 2 == 0 {
    if (get_player_color(player) == 11) {
           gpu_set_blendmode(bm_add);
                draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , .25);
           gpu_set_blendmode(bm_normal);
           
    }
      draw_debug_text(floor(x) - 70 ,floor(y) - 170 , "+ Legs Strength");
      draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Faster Landing");
    
}

if move_cooldown[AT_USPECIAL] > 0 {
	draw_sprite_ext(sprite_index, image_index , x , y   , spr_dir, 1, 0 , -1 , 1);
}

if move_cooldown[AT_USPECIAL] > 0 && move_cooldown[AT_USPECIAL] % 3 <= 1 {
	
	gpu_set_blendmode(bm_add);
     draw_sprite_ext(sprite_index, image_index , x , y   , spr_dir, 1, 0 , -1 , .5);
    gpu_set_blendmode(bm_normal);
}

if btrain >= 100 && htrain >= 100 && atrain >= 100 && ltrain >= 100 && state != PS_PRATFALL && state != PS_PRATLAND && visible{

if get_player_color(player) == 11 {
    if get_gameplay_time() % 5 == 0 {
     		ui1x = 30 - random_func(1,60,true)
            ui1y = 20 - random_func(2,80,true)
            
            ui2x = 30 - random_func(3,60,true)
            ui2y = 20 - random_func(4,80,true)
     	}
     	
     	spawn_hit_fx(x - 32*spr_dir + ui1x, y - 90 - ui1y - (get_gameplay_time()%5)*4, esp) 
     	spawn_hit_fx(x - 32*spr_dir + ui2x, y - 90 - ui2y - (get_gameplay_time()%5)*4, esp) 
}

if get_player_color(player) != 15 {
    gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x , y - get_gameplay_time() % 10  , spr_dir, 1, 0 , -1 , 0.3 - (get_gameplay_time() % 10/30));
        draw_sprite_ext(sprite_index, image_index , x , y   , spr_dir, 1, 0 , -1 , 0.2);
    gpu_set_blendmode(bm_normal);
}

}


//post_draw.gml
with pHitBox {
	if (player_id == other.id && attack == AT_USPECIAL && hbox_num == 1) {
		if uspecialNum != 0 {
			draw_sprite_ext(other.gigaSprite, uspecialShape , uspecialHudX,  uspecialHudY, 1, 1, uspecialRot, other.hud_color, 1)
			draw_sprite_ext(other.gigaSpriteTwo, 0, uspecialHudX,  uspecialHudY, 1, 1, 0, c_white, 1)
		}
	}
}
//post_draw.gml

if (Omega == 4) && invincible && invince_time <= 2 {
		draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, -1, 1);

}

shader_end() 

if (get_player_color(player) == 15){
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_red,move_cooldown[AT_USPECIAL_GROUND]/20)
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,-1, min(0.5,move_cooldown[AT_USPECIAL_GROUND]/40))
}