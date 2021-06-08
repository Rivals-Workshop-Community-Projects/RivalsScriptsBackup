///
shader_start();

if (barpause > 0 or state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN or state == PS_DASH_STOP or 
state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_WAVELAND 
or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) && attackbar == 0{
	 draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index-1, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4.5 , y  - svsp*4.5, 1 * spr_dir, 1, 0 , c_white , 0.1);
}

if attacking && attack == AT_DATTACK{
	 draw_sprite_ext(sprite_index, image_index-1, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
}

if attacking && attack == AT_FSTRONG{
	if savex != 0 {
	 draw_sprite_ext(sprite_get("roll_backward"), get_gameplay_time() % 4, savex + 6*spr_dir , savey, 1 * spr_dir, 1, 0 , c_white , 0.5);
	}
	if window == 3 {
	 draw_sprite_ext(sprite_index, image_index-1, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
	}
		
}



if move_cooldown[AT_EXTRA_1] > 0 {

	if cdamage1 > 10000 {
   draw_sprite_ext(sprite_get("cdamage"),(cdamage1/10000),dx1-100 - random_func(1, 10, true),dy1 + 20 - random_func(5, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_1]/20)
	}
	if cdamage1 > 1000 {
   draw_sprite_ext(sprite_get("cdamage"),(cdamage1/1000),dx1-70 - random_func(2, 10, true),dy1 + 20 - random_func(4, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_1]/20)
	}
	if cdamage1 > 100 {
   draw_sprite_ext(sprite_get("cdamage"),(cdamage1/100),dx1-40 - random_func(3, 10, true),dy1 + 20 - random_func(3, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_1]/20)
	}
	if cdamage1 > 10 {
   draw_sprite_ext(sprite_get("cdamage"),(cdamage1/10),dx1-10 - random_func(4, 10, true),dy1 + 20 - random_func(2, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_1]/20)
	}
   draw_sprite_ext(sprite_get("cdamage"),(cdamage1/1),dx1+20 - random_func(5, 10, true),dy1 + 20 - random_func(1, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_1]/20)
}


if move_cooldown[AT_EXTRA_2] > 0 {
	if cdamage2 > 10000 {
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage2/10000),dx2-100 - random_func(1, 10, true),dy2 - 10 - random_func(5, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_2]/20)
	}
	if cdamage2 > 1000 {
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage2/1000),dx2-70 - random_func(2, 10, true),dy2 - 10 - random_func(4, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_2]/20)
	}
	if cdamage2 > 100 {
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage2/100),dx2-40 - random_func(3, 10, true),dy2 - 10 - random_func(3, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_2]/20)
	}
	if cdamage2 > 10 {
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage2/10),dx2-10 - random_func(4, 10, true),dy2 - 10 - random_func(2, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_2]/20)
	}
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage2/1),dx2+20 - random_func(5, 10, true),dy2 - 10 - random_func(1, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_2]/20)
}


if move_cooldown[AT_EXTRA_3] > 0 {
	if cdamage3 > 10000 {
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage3/10000),dx3-100 - random_func(1, 10, true),dy3 - 40 - random_func(5, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_3]/20)
	}
	if cdamage3 > 1000 {
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage3/1000),dx3-70 - random_func(2, 10, true),dy3 - 40 - random_func(4, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_3]/20)
	}
	if cdamage3 > 100 {
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage3/100),dx3-40 - random_func(3, 10, true),dy3 - 40 - random_func(3, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_3]/20)
	}
	if cdamage3 > 10 {
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage3/10),dx3-10 - random_func(4, 10, true),dy3 - 40 - random_func(2, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_3]/20)
	}
   draw_sprite_ext(sprite_get("cdamage"),floor(cdamage3/1),dx3+20 - random_func(5, 10, true),dy3 - 40 - random_func(1, 10, true),1,1,0,-1, move_cooldown[AT_EXTRA_3]/20)
}
shader_end() 



if esave > 0 {
		 draw_sprite_ext(sprite_get("save"), 140 - (esave/10), esavex  - 60 , esavey + 10 , 1, 1, 0 , c_white , 0.5);
		 draw_sprite_ext(sprite_get("save"), 140 - (esave/10), saveid.x - 60 , saveid.y + 10 , 1, 1, 0 , c_white , 1);
     with saveid shader_start();    
      	draw_sprite_ext(saveid.sprite_index, saveid.image_index, esavex , esavey, 1 * saveid.spr_dir, 1, 0 , -1 , 0.6);
      	draw_sprite_ext(saveid.sprite_index, saveid.image_index, saveid.x - saveid.hsp*3 , saveid.y - saveid.vsp*3, 1 * saveid.spr_dir, 1, 0 , -1 , 0.4);
      	draw_sprite_ext(saveid.sprite_index, saveid.image_index, saveid.x - saveid.hsp*6 , saveid.y - saveid.vsp*6, 1 * saveid.spr_dir, 1, 0 , -1 , 0.2);
	with saveid shader_end();
}

if attackbar > 0 or attackbar == -1 {
	    draw_set_alpha(0.08);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);


}

if barpause > 0 {
	    draw_set_alpha(0.08);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);


}

if attacking && attack == AT_NSPECIAL && window_timer < 2{
	    draw_set_alpha(0.08);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
}


if super_armor {
		draw_sprite_ext(sprite_index, image_index, x + 2*spr_dir + random_func(1,4,true)*spr_dir , y + random_func(2,6,true), spr_dir, 1.1, 0 , -1 , 0.4);

}


shader_start();

if neointro > 0 {
	
	
var spr = sprite_get("_intro")


	
	
	if neointro >= 150 && neointro < 390 {
		draw_sprite_ext(spr, image_index, room_width/2 - 450 - 200*neoside + 230*neoside + floor((neointro - 150)*neoside/2)  , room_height/2  - 50 - floor((neointro - 150)/2) ,  2, 2, 0 , c_black , 0.4 - random_func(1,2,true)/10 );
	}


	if neointro >= 390 {
		draw_sprite_ext(spr, image_index, room_width/2 - 450 - 200*neoside + 230*neoside + floor((neointro - 150)*neoside/2)   , room_height/2   - 50 - floor((neointro - 150)/2), 2, 2, 0 , c_black , 0.4 - (neointro - 390)/40 );
	}
	
	  gpu_set_blendmode(bm_add);    	
	if neointro > 120 && neointro < 150 {
		draw_sprite_ext(spr, 0, room_width/2 - 450 - 200*neoside  + 200*neoside + (neointro - 120)*neoside  , room_height/2   + 100 - neointro, 2, 2, 0 , -1 , (neointro - 120)/50);
	}
	
	
	if neointro >= 150 && neointro < 390 {
		draw_sprite_ext(spr, image_index, room_width/2 - 450 - 200*neoside + 230*neoside + floor((neointro - 150)*neoside/2)  , room_height/2 - 50 - floor((neointro - 150)/2) ,  2, 2, 0 , -1 , 0.7 - random_func(1,2,true)/10 );
	}


	if neointro >= 390 {
		draw_sprite_ext(spr, image_index, room_width/2 - 450 - 200*neoside + 230*neoside + floor((neointro - 150)*neoside/2)   , room_height/2   - 50 - floor((neointro - 150)/2), 2, 2, 0 , -1 , 0.8 - (neointro - 390)/30 );
	}
	
  gpu_set_blendmode(bm_normal); 
  
   	if neointro == 391 {
		sound_play(sound_get("nspecdis"))
	}
	
  
  	if neointro == 131 {
		sound_play(sound_get("tauntflash"))
		sound_play(sound_get("tauntspeak"))
	}
	

	
	if neointro == 191 {
		sound_play(sound_get("tauntflash"))
		sound_play(sound_get("tauntspeak"),false,noone,1,0.98)
	}
	
	if neointro == 251 && neointro3 != "" {
		sound_play(sound_get("tauntflash"))
		sound_play(sound_get("tauntspeak"),false,noone,1,0.96)
	}
	
	
	if neointro < 390 {
	if neointro > 130 {
		draw_debug_text(floor(room_width/2 - 80 + 100*neoside + neointro*neoside/7) , floor(room_height/2 + 40 - neointro/2), neointro1);
	}
	
   	if neointro > 191 {
		draw_debug_text(floor(room_width/2 - 120 + 200*neoside - neointro*neoside/7) , floor(room_height/2 + 100 - neointro/2), neointro2);
	}
	
	if neointro > 251 {
		draw_debug_text(floor(room_width/2 - 120 + 340*neoside - neointro*neoside/2) , floor(room_height/2 + 160 - neointro/2), neointro3);
	}
	
	} else if neointro % 4 <= 1{
		
		draw_debug_text(floor(room_width/2 - 80 + 100*neoside + neointro*neoside/7) , floor(room_height/2 + 40 - neointro/2), neointro1);
		draw_debug_text(floor(room_width/2 - 120 + 200*neoside - neointro*neoside/7) , floor(room_height/2 + 100 - neointro/2), neointro2);
		draw_debug_text(floor(room_width/2 - 120 + 340*neoside - neointro*neoside/2) , floor(room_height/2 + 160 - neointro/2), neointro3);
	
	}

	
}

shader_end() 