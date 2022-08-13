//pre_draw.gml
if get_player_color(player) == 6 and get_gameplay_time() % 2 == 0{
       draw_debug_text(x - 150, y - 160,"Oh look a cheapie, win game how cool LOL.");
}





shader_start();

if attacking && attack == AT_UTHROW {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	if window == 1 {
		draw_set_alpha(window_timer/128);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
	}
}



with pHitBox {
    if player_id == other.id && "ctarget" in self && attack == AT_UAIR{
         
        draw_sprite_ext(sprite_get("eblade"),image_index,x,y,1,1,cangle,-1,1)
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("eblade"),image_index,x + hsp,y + vsp,1,1,cangle,-1,.5)
        draw_sprite_ext(sprite_get("eblade"),image_index,x + hsp*2,y + vsp*2,1,1,cangle,-1,.25)
        gpu_set_blendmode(bm_normal); 
         
    }
}

if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR )
and attack == AT_EXTRA_1 and window >= 7 and (window != 9 or (window == 9 and window_timer < 5)) {
gpu_set_blendmode(bm_add);
if halox >= 8 and offense and (state != PS_ATTACK_GROUND or (state == PS_ATTACK_GROUND && attack != AT_TAUNT)){
     if spr_dir == -1 {
         draw_sprite(sprite_get("halo1"), get_gameplay_time() / 3, x - 15, y + 5  );
    
    
    }
    
    
    if spr_dir == 1 {
         draw_sprite(sprite_get("halo2"), get_gameplay_time() / 3, x + 15, y + 5 );
    
    
    }

 gpu_set_blendmode(bm_normal);   
}


if halo >= 1 and offense = 1 and (state != PS_ATTACK_GROUND or (state == PS_ATTACK_GROUND && attack != AT_TAUNT)) and zcountered != 1 {
    draw_sprite_ext(sprite_get("motivationr"), get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,1 );
   draw_sprite_ext(sprite_get("motivationr"), 3 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,.3 );
   draw_sprite_ext(sprite_get("motivationr"), 7 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,.3 );  

   if halo >= 2 {
        draw_sprite_ext(sprite_get("motivationr"), 3 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,1 );
        draw_sprite_ext(sprite_get("motivationr"), 7 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,.3 ); 
   }
   
   if halo == 3 {
       draw_sprite_ext(sprite_get("motivationr"), 7 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,1 ); 
   }
   }
}


if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR 
    or ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and attack != AT_EXTRA_1 ) or ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) 
    and attack == AT_EXTRA_1 and window == 9 && window_timer >= 5) {


if halox >= 8 and offense and (state != PS_ATTACK_GROUND or (state == PS_ATTACK_GROUND && attack != AT_TAUNT)){
    gpu_set_blendmode(bm_add);
    if spr_dir == 1 {
     draw_sprite(sprite_get("halo1"), get_gameplay_time() / 3, x - 15, y + 5  );


    }


     if spr_dir == -1 {
          draw_sprite(sprite_get("halo2"), get_gameplay_time() / 3, x + 15, y + 5 );
     
     
     }
gpu_set_blendmode(bm_normal);
    
}


if halo >= 1 and offense = 1 and (state != PS_ATTACK_GROUND or (state == PS_ATTACK_GROUND && attack != AT_TAUNT)) and zcountered != 1 {

    draw_sprite_ext(sprite_get("motivationr"), get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,1 );
   draw_sprite_ext(sprite_get("motivationr"), 3 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,.3 );
   draw_sprite_ext(sprite_get("motivationr"), 7 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,.3 );  

if halo >= 2 {
     draw_sprite_ext(sprite_get("motivationr"), 3 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,1 );
     draw_sprite_ext(sprite_get("motivationr"), 7 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,.3 ); 
}

if halo == 3 {
    draw_sprite_ext(sprite_get("motivationr"), 7 + get_gameplay_time() / 3, x - 18*spr_dir, y - 48 ,spr_dir,1,0,-1,1 ); 
}

}

}


if dmhit > 0{
    draw_sprite(sprite_get("dm"), dmhit*3 + (get_gameplay_time()%12)/4, x , y + 24 ); 
}



shader_end();

gpu_set_blendmode(bm_normal);