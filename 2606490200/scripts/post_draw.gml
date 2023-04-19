///

if cheapmode == 1 && get_gameplay_time() < 600 &&  get_gameplay_time() > 15 {
    draw_debug_text(x - 70 ,y -162,"Is this a cheapie?");
	draw_debug_text(x - 110 ,y -142,"(Dstrong to active anticheap)");
}

if cheapmode == 3 && get_gameplay_time() < 660 {
     draw_debug_text(x - 78 ,y -162,"An unworthy opponent.");
}

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
      draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Strong Armor");
       }
    
}
if btrain > 300 && btrain % 2 == 0 {
    if (get_player_color(player) == 11) {
        
           gpu_set_blendmode(bm_add);
                draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , .25);
           gpu_set_blendmode(bm_normal);
           
    }
      draw_debug_text(floor(x) - 70 ,floor(y) - 170 , "+ Body Strength");
      draw_debug_text(floor(x) - 70 ,floor(y) - 150 , "+ Strong Armor");
    
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




if 	"cosmicman" in self {
 //thank you Rioku
 
 gpu_set_blendmode(bm_add);
 
 gpu_set_fog(1, c_blue, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x ,y + 2,spr_dir,1,0, -1, 0.5)    
    draw_sprite_ext(sprite_index, image_index, x - 2 ,y,spr_dir,1,0, -1, 0.5)
  gpu_set_fog(0, c_blue, 0, 0);
  
  gpu_set_fog(1, c_purple, 0, 1)
     draw_sprite_ext(sprite_index, image_index, x + 2 ,y,spr_dir,1,0, -1, 0.5)
    draw_sprite_ext(sprite_index, image_index, x ,y - 2,spr_dir,1,0, -1, 0.5)
   gpu_set_fog(0, c_purple, 0, 0);
   
  gpu_set_blendmode(bm_normal);
  
   gpu_set_fog(1, c_black, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + 1 ,y,spr_dir,1,0, -1, 0.5)
    draw_sprite_ext(sprite_index, image_index, x - 1 ,y,spr_dir,1,0, -1, 0.5)
    draw_sprite_ext(sprite_index, image_index, x ,y + 1,spr_dir,1,0, -1, 0.5)
    draw_sprite_ext(sprite_index, image_index, x ,y - 1,spr_dir,1,0, -1, 0.5)
   gpu_set_fog(0, c_black, 0, 0);
   
maskHeader();
draw_self();
maskMidder();

if state != PS_PRATFALL and state != PS_PRATLAND {

draw_sprite_tiled_ext(sprite_get("cosmic"), 0, get_gameplay_time()/23 + cossetx, get_gameplay_time()/23 + cossety, 1, 1, c_white, 1)

if uped >= 4  draw_sprite_tiled_ext(sprite_get("cosmicb"), 7, get_gameplay_time()/20 + cossetx*1.1, get_gameplay_time()/20 + cossety*1.1, 1, 1, c_white, 1)

if uped >= 2  draw_sprite_tiled_ext(sprite_get("cosmicb"), 3, get_gameplay_time()/18 + cossetx*1.5, get_gameplay_time()/18 + cossety*1.5, 1, 1, c_white, 1)
if uped >= 2  draw_sprite_tiled_ext(sprite_get("cosmic"), 2, get_gameplay_time()/18 + cossetx*1.5, get_gameplay_time()/18 + cossety*1.5, 1, 1, c_white, 1)


if uped >= 3  draw_sprite_tiled_ext(sprite_get("cosmicb"), 5, get_gameplay_time()/14 + cossetx*2, get_gameplay_time()/14 + cossety*2, .5, .5, c_white, 1)
if uped >= 3  draw_sprite_tiled_ext(sprite_get("cosmic"), 4, get_gameplay_time()/14 + cossetx*2, get_gameplay_time()/14 + cossety*2, .5, .5, c_white, 1)


if uped >= 4  draw_sprite_tiled_ext(sprite_get("cosmic"), 6, get_gameplay_time()/12 + cossetx*2.2, get_gameplay_time()/12 + cossety*2.2, 1, 1, c_white, 1)

if uped >= 1  draw_sprite_tiled_ext(sprite_get("cosmic"), 1, get_gameplay_time()/9 + cossetx*3, get_gameplay_time()/9 + cossety*3, 1.4, 1.4, c_white, 1)

}
if abs(hsp) > 3 {
	cossetxd = (hsp + cossetxd)/4
} else {
	if abs(cossetxd) > 0.1 cossetxd /= 1.05
	if abs(cossetxd) < 0.15 && cossetxd != 0 {
		cossetxd = 0
	}
}

if abs(vsp) > 3 {
	cossetyd = (vsp + cossetyd)/3
} else {
	if abs(cossetyd) > 0.1 cossetyd /= 1.05
	if abs(cossetyd) < 0.15 && cossetyd != 0 {
		cossetyd = 0
	}
}

cossetx += cossetxd
cossety += cossetyd

maskFooter();

shader_start();
  gpu_set_blendmode(bm_add);
      draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , 1);
  gpu_set_blendmode(bm_normal);
shader_end();

}



if "standon" in self and state != PS_PRATFALL and state != PS_PRATLAND and state != PS_PARRY and state != PS_ROLL_FORWARD and state != PS_ROLL_BACKWARD and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD {
  
		
	 shader_start();
        if standtime > 0 {
        	
        if get_gameplay_time() % 2 == 0 {
		          	gsfx1 = spawn_hit_fx(floor(standx), floor(standy) - 24 - random_func(2,51,true) , sgf1)
                      gsfx1.spr_dir = 0.3
                      gsfx1.image_yscale = 0.3
                      gsfx1.draw_angle = random_func(1,360,true)
                      gsfx1.depth = depth + 4
		}
		if get_gameplay_time() % 4 == 2 {
		              gsfx2 = spawn_hit_fx(floor(standx), floor(standy) - 24 - random_func(2,51,true) , sgf2)
                      gsfx2.spr_dir = 0.3
                      gsfx2.image_yscale = 0.3
                      gsfx2.draw_angle = random_func(1,360,true)
                      gsfx2.depth = depth + 4
		}
		
     	draw_sprite_ext(sprite_index, image_index , standx , standy  , spr_dir, 1, 0 , -1 , 0.3);
     	gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , standx -2, standy  , spr_dir, 1, 0 , -1 , 0.2);	
        draw_sprite_ext(sprite_index, image_index , standx +2, standy  , spr_dir, 1, 0 , -1 , 0.2);	
        draw_sprite_ext(sprite_index, image_index , standx , standy -2 , spr_dir, 1, 0 , -1 , 0.2);	
        draw_sprite_ext(sprite_index, image_index , standx , standy +2 , spr_dir, 1, 0 , -1 , 0.2);	
        gpu_set_blendmode(bm_normal);
        standtime -= 1
        }
        shader_end();
        
        if standtime >= 0 {
	  	draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , 1);
	  } else {
	  	draw_sprite_ext(sprite_get("gigastandon"), ofree , round((x + standx)/2) ,round((y + standy)/2)  , spr_dir, 1, 0 , -1 , 1 - abs(standtime/20) );
	  	draw_sprite_ext(sprite_get("gigastandon"), ofree , standx , standy  , o_spr_dir, 1, 0 , -1 , abs(standtime/20));
	  	draw_sprite_ext(sprite_get("gigastandon"), ofree , standx , standy  , o_spr_dir, 1, 0 , c_black , min(0.5,abs(standtime/20)));
	  	
	  	draw_sprite_ext(sprite_index, image_index , round((x + standx)/2) , round((y + standy)/2)  , spr_dir, 1, 0 , -1 , 1 - abs(standtime/20) );
	  	draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , 1 - abs(standtime/20) );
	  	
	  }
	  
	  shader_start();
        if standtime < 0 {
        	
        	if get_gameplay_time() % 2 == 0 {
		          	gsfx1 = spawn_hit_fx(floor(x), floor(y) - 24 - random_func(2,51,true) , sgf1)
                      gsfx1.spr_dir = 0.3
                      gsfx1.image_yscale = 0.3
                      gsfx1.draw_angle = random_func(1,360,true)
                      gsfx1.depth = depth + 4
		}
		if get_gameplay_time() % 4 == 2 {
		              gsfx2 = spawn_hit_fx(floor(x), floor(y) - 24 - random_func(2,51,true) , sgf2)
                      gsfx2.spr_dir = 0.3
                      gsfx2.image_yscale = 0.3
                      gsfx2.draw_angle = random_func(1,360,true)
                      gsfx2.depth = depth + 4
		}
		
     	draw_sprite_ext(sprite_index, image_index , x , y  , spr_dir, 1, 0 , -1 , 0.4);
     	gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x -2, y  , spr_dir, 1, 0 , -1 , 0.15);	
        draw_sprite_ext(sprite_index, image_index , x +2, y  , spr_dir, 1, 0 , -1 , 0.15);	
        draw_sprite_ext(sprite_index, image_index , x , y -2 , spr_dir, 1, 0 , -1 , 0.15);	
        draw_sprite_ext(sprite_index, image_index , x , y +2 , spr_dir, 1, 0 , -1 , 0.15);	
        gpu_set_blendmode(bm_normal);
        
        standtime += 1
        }
        
	 shader_end();
	 
	
	
	  
} 


//================================================================================
#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskMidder
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}