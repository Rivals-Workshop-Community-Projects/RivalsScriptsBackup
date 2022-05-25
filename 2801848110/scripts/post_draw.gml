/// my_hitboxID.attack
shader_start();
if move_cooldown[AT_EXTRA_1] > 0 {
    draw_sprite_ext(RCspr, RCimg, RCX, RCY, RCside, 1, 0,-1,move_cooldown[AT_EXTRA_1]/30 - 1 )
}

if esave > 0 {
		 
		 if esave > 30 or esave % 3 == 0 {
		 	draw_sprite_ext(sprite_get("reloade"), 48 - esave/3, esavex , esavey - 10 , 1, 1, 0 , c_white , 1);
		 }
		 
		 if esave < 30 && get_gameplay_time()%5 == 0{
		     loadfx = spawn_hit_fx(esavex , esavey - 34,305)
		     loadfx.pause = 4
		 }
		 if esave == 40  {
		 	sound_play(asset_get("sfx_absa_concentrate"),false,noone,1,1.2)
		 }
}

 draw_sprite_ext(sprite_get("hud_time"), timeflow/10, x - 46 , y - 40 , 1, 1, 0 , c_white , move_cooldown[AT_EXTRA_2]/15 + 0.2);
 draw_sprite_ext(sprite_get("hud_time"), 20, x - 46 , y - 40 , 1, 1, 0 , c_white , move_cooldown[AT_UTHROW]/20);
 
 
 
 
shader_end();


if "col" in self {
	
	if pausing {
 	gpu_set_fog(1, col, 0, 1);
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,image_angle,c_white,.6);
    gpu_set_fog(0, col, 0, 0);
    trifx = spawn_hit_fx(x - hsp,y - vsp - 20,tri)
    trifx.draw_angle = random_func(1,361,true)
    trifx.spr_dir = .7
    trifx.image_yscale = .7
	}
	
	if projecting {
		draw_sprite_ext(sprite_index,image_index,x+2,y,spr_dir,1,image_angle,c_black,0.5);
		draw_sprite_ext(sprite_index,image_index,x-2,y,spr_dir,1,image_angle,c_black,0.5);
		draw_sprite_ext(sprite_index,image_index,x,y+2,spr_dir,1,image_angle,c_black,0.5);
		draw_sprite_ext(sprite_index,image_index,x,y-2,spr_dir,1,image_angle,c_black,0.5);
	gpu_set_fog(1, col, 0, 1);
	if get_gameplay_time() % 5 < 2 {
		draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,image_angle,c_white,1);
	}
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,image_angle,c_white,.8);
    gpu_set_fog(0, col, 0, 0);
    
    if get_gameplay_time() % 5 == 0{ 
    trifx = spawn_hit_fx(x - hsp,y - vsp - 20,tri)
    trifx.draw_angle = random_func(1,361,true)
    trifx.spr_dir = .7
    trifx.image_yscale = .7
    trifx.depth = -6
    }
    
	}
	
	with oPlayer {
		if "beingpaused" in self  {
			if beingpaused == true {
			with other {
                trifx = spawn_hit_fx(other.x - 10 + random_func(2,21,true),other.y - 20 - 10 + random_func(3,21,true),tri)
                trifx.draw_angle = random_func(1,361,true)
                trifx.spr_dir = 1
                trifx.image_yscale = 1
                trifx.depth = - 6
			}
			}
		}
	}
}

if attack == AT_TAUNT && is_attacking {
	
	if image_index < 3 {
		switch tauntnum % 8 {
    	   case 0:
    	     draw_debug_text(x - 62, y - 90,"Zero Pauses Left.");
    	   break; 
    	   
    	   case 1:
             draw_debug_text(x - 34, y - 90,"Time's up");
           break;
            
           case 2 :
             draw_debug_text(x - 100, y - 90,"Am I doing the wrong things?");
           break;
           
           case 3 :
             draw_debug_text(x - 52, y - 90,"You have fur?");
           break;
           
           case 4 :
             draw_debug_text(x - 66, y - 90,"Who is in control?");
           break;
           
           case 6 :
             draw_debug_text(x - 14, y - 90,"Mid.");
           break;
           
           case 5 :
             draw_debug_text(x - 125, y - 90,"I return to life, time and time again.");
           break;
           
           case 7 :
             draw_debug_text(x - 60, y - 90,"It's in the code.");
           break;
           
		}
	} else if image_index < 6 {
		switch tauntnum % 5 {
    	   case 0:
    	     draw_debug_text(x - 38, y - 90,"Great job!");
    	   break; 
    	   
    	   case 2:
             draw_debug_text(x - 48, y - 90,"You're super!");
           break;
            
           case 3 :
             draw_debug_text(x - 60, y - 90,"You're Ascended!");
           break;
           
           case 1 :
             draw_debug_text(x - 114, y - 90,"May Heaven grant you fortune.");
           break;
           
           case 4 :
             draw_debug_text(x - 150, y - 90,"You are just like me, trying to make history");
           break;
           
		}
		
	} else if image_index < 9{
		switch tauntnum % 5 {
    	   case 0:
    	     draw_debug_text(x - 82, y - 90,"Your sojourn stop here.");
    	   break; 
    	   
    	   case 1:
             draw_debug_text(x - 130, y - 90,"You're rat in a maze. Finding cheeses.");
           break;
            
           case 2 :
             draw_debug_text(x - 120, y - 90,"Your effort is entirely misplaced");
           break;
           
           case 4 :
             draw_debug_text(x - 82, y - 90,"Your time grows scarce.");
           break;
           
           case 3 :
             draw_debug_text(x - 124, y - 90,"You are no less of a puppet than I.");
           break;
           
		}
		
	}
}