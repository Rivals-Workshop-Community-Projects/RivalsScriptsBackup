//pre_draw.gml
shader_start();

if triggered > 0 {
	  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("DT"), triggered / 4 , x - 1 - hsp  , y - 1 - vsp  , spr_dir*1, 1, 0 , -1 , 0.3);
  gpu_set_blendmode(bm_normal);

		draw_sprite_ext(sprite_get("DT"), triggered / 4 , x + 1 - hsp  , y + 1 - vsp  , spr_dir*1, 1, 0 , -1 , 0.2 + triggered%20/20 );
		
}



if move_cooldown[AT_FSPECIAL] > 0 {
	
     draw_sprite(sprite_get("nobike"), (90 - move_cooldown[AT_FSPECIAL]) / 9, x , y + 20  );


}

if move_cooldown[AT_UTILT] > 0 {
	
     draw_sprite(sprite_get("nobike"), (120 - move_cooldown[AT_UTILT]) / 12, x , y + 20  );


}

shader_end();



if attacking && attack == 49 && window == 1 {
    	draw_set_alpha(0.3);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
}


///Dash 
