shader_start();

if get_gameplay_time() < 110 {
     draw_sprite(sprite_get("uspecial"), 6 + (get_gameplay_time() % 24)/4, x ,y - 220 + get_gameplay_time()*2  );
}
if lockon = 1{
    draw_sprite(sprite_get("esm"), get_gameplay_time() / 4, lockplayer.x ,lockplayer.y + 40  );
}

if move_cooldown[AT_TAUNT_2] > 0 && hhalo <= 0 {
        draw_sprite(sprite_get("sbreak"), get_gameplay_time() / 2, x - 34 ,y - 10  );
             
}

if hhalo > 0 {
    	  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir*1, 1, 0 , -1 , 0.3);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir*1, 1, 0 , -1 , 0.3);
  gpu_set_blendmode(bm_normal);
}

shader_end() 


