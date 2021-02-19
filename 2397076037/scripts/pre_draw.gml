///
shader_start();


if attacking && attack == AT_DATTACK{
    if window == 3 {
	 draw_sprite_ext(sprite_index, image_index-1, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
    } else {
      draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);  
    }
}

if attacking && attack == AT_DAIR{
 if window > 2 {
      draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);  
 }
}

if draw_indicator and (!attacking or (attacking && attack != AT_USPECIAL))  { 
if triggered == 1 && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_PARRY_START
&& state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD && state != PS_AIR_DODGE  {
			draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - 14 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);

	if free and state != PS_WALL_JUMP {
		draw_sprite_ext(sprite_get("DTclone"), 11 + (get_gameplay_time()%21)/7, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 11 + (get_gameplay_time()%21)/7, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	
	if !free {
		if (hsp <= 1 and hsp >= -1) && state != PS_WALK_TURN && state != PS_DASH_TURN {
		draw_sprite_ext(sprite_get("DTclone"), 0 + (get_gameplay_time()%30)/6, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 0 + (get_gameplay_time()%30)/6, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
		}
		
		if (hsp > 1 or hsp < -1) && (hsp <= 5 and hsp >= -5) && state != PS_WALK_TURN && state != PS_DASH_TURN {
		draw_sprite_ext(sprite_get("DTclone"), 7 + (get_gameplay_time()%20)/5, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 7 + (get_gameplay_time()%20)/5, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
		}
		
		if (hsp > 5 or hsp < -5)  && state != PS_WALK_TURN && state != PS_DASH_TURN {
		draw_sprite_ext(sprite_get("DTclone"), 7 + (get_gameplay_time()%16)/4, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 7 + (get_gameplay_time()%16)/4, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
		}
	}
	
		if state == PS_WALK_TURN or state == PS_DASH_TURN or state == PS_WALL_JUMP{
				draw_sprite_ext(sprite_get("DTclone"), 6, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		      draw_sprite_ext(sprite_get("DTclone"), 6, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	
		} 
		
		
}


if triggered == 1 && state_timer % 4 < 2 && state_timer > 8 &&
(state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD or state == PS_AIR_DODGE)  {
			draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - 14 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);

	if free {
		draw_sprite_ext(sprite_get("DTclone"), 11 + (get_gameplay_time()%21)/7, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 11 + (get_gameplay_time()%21)/7, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	
	if !free {
		draw_sprite_ext(sprite_get("DTclone"), 0 + (get_gameplay_time()%30)/6, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 0 + (get_gameplay_time()%30)/6, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
}
}

if attacking {
	
if attack == AT_USPECIAL {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	if window == 2 {
	 draw_sprite_ext(sprite_index, image_index-1, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
    }
	
}
	
if attack == AT_USTRONG {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	if window == 1 {
		draw_set_alpha(window_timer/128);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
	}
	if window == 2 {
		draw_set_alpha(0.3);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
	}
}

if attack == AT_FSTRONG {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
}

    if window == 3 {
	 draw_sprite_ext(sprite_index, image_index-1, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
    }
    
    if window == 4{
      draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);  
    }
    
}

if attack == AT_DSTRONG {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	if window == 1 {
		draw_set_alpha(window_timer/128);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
	}
}


}

if state == PS_RESPAWN {
		 draw_sprite_ext(sprite_get("plat2"), 0, x - 4*spr_dir , y - 40 , 1 * spr_dir, 1, 0 , c_white , 1);
		 spawn_hit_fx(x - 4*spr_dir - 4 + random_func(1,8,true) ,y - 40 - 4 + random_func(2,8,true),plat2)
}


if state_cat != SC_HITSTUN {
if triggered = 0 {
draw_sprite_ext(sprite_get("DTgauge"), DT, x- 34, y + 4, 0.5, 0.5, 0, -1, 0.6);


} else {


draw_sprite_ext(sprite_get("DTgauge"), DT + 17, x- 34, y + 4, 0.5, 0.5, 0, -1, 0.6);

if triggertime % 10 < 5 {
draw_sprite_ext(sprite_get("DTgauge"), 17, x- 34, y + 4, 0.5, 0.5, 0, -1, 0.6);
}


}

if move_cooldown[AT_DTILT] > 2 {
        draw_sprite_ext(sprite_get("DTgauge"), DT + 17, x- 34, y + 4,0.5,0.5,0,-1, move_cooldown[AT_DTILT]/6);
        draw_sprite_ext(sprite_get("DTgauge"), 17, x- 34, y + 4,0.5,0.5,0,-1, move_cooldown[AT_DTILT]/6);
}

if hitpause && attacking {
	
	if triggered = 0 {
draw_sprite_ext(sprite_get("DTgauge"), DT, x- 34, y + 4, 0.5, 0.5, 0, -1, 0.6);


} else {


draw_sprite_ext(sprite_get("DTgauge"), DT + 17, x- 34, y + 4, 0.5, 0.5, 0, -1, 0.6);

if triggertime % 10 < 5 {
draw_sprite_ext(sprite_get("DTgauge"), 17, x- 34, y + 4, 0.5, 0.5, 0, -1, 0.6);
}


}

if move_cooldown[AT_DTILT] > 2 {
        draw_sprite_ext(sprite_get("DTgauge"), DT + 17, x- 34, y + 4,0.5,0.5,0,-1, move_cooldown[AT_DTILT]/6);
        draw_sprite_ext(sprite_get("DTgauge"), 17, x- 34, y + 4,0.5,0.5,0,-1, move_cooldown[AT_DTILT]/6);
}


        draw_sprite_ext(sprite_get("DTgauge"), 17, x- 34, y + 4,0.5,0.5,0,-1, hitstop/ 6);
}

}

if trainingtype != -1 {
	   	draw_set_alpha(0.4);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);    
}

shader_end() 