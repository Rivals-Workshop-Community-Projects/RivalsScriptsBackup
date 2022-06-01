shader_start();

if cloneout == 1 && attacking && (attack == AT_FSTRONG or attack == AT_DSTRONG 
or attack == AT_USTRONG) && window == 1 {

     draw_sprite_ext(sprite_index, image_index, x , y, spr_dir, 1, 0 , -1 , 1);
    	
    gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 4 + random_func(1,8,true) , y - 4 + random_func(2,8,true)  , spr_dir, 1, 0 , c_fuchsia , 1);
        
		draw_sprite_ext(sprite_index, image_index , x + 4 - random_func(3,8,true)  , y + 4 - random_func(4,8,true)  , spr_dir, 1, 0 , c_aqua , 1);
  gpu_set_blendmode(bm_normal);
  
  
}
if get_gameplay_time() < 120 {

	draw_sprite_ext(sprite_get("introAE"), 1, x , y, 1, 1, 0 , -1 , 1.2 - get_gameplay_time()/100);
	
	if get_gameplay_time() % 3 < 1 {
	draw_sprite_ext(sprite_get("introAE"), 1, x - 6 + random_func(1,12,true) , y - 6 + random_func(2,12,true), 1, 1, 0 , -1 , 0.5 - get_gameplay_time()/240);	
	}
	
	
}

if state == PS_AIR_DODGE {
    
        draw_sprite_ext(sprite_index, image_index, x , y, spr_dir, 1, 0 , -1 , 1);
}

if move_cooldown[AT_DSTRONG] > 0 {

    if lstrong = 1 {
         draw_sprite_ext(sprite_get("strong"), 22, lstx , lsty, spr_dir, 1, 0 , -1 , move_cooldown[AT_DSTRONG]/20 - 0.6);
    }
    
    if lstrong = 2 {
         draw_sprite_ext(sprite_get("strong"), 30, lstx , lsty, spr_dir, 1, 0 , -1 , move_cooldown[AT_DSTRONG]/20 - 0.6);
    }
    
}

if move_cooldown[AT_EXTRA_3] > 0 && hit_player_obj != self{
        	draw_sprite_ext(sprite_get("slosh"), 0, hit_player_obj.x , hit_player_obj.y - 36,
        	1 - (move_cooldown[AT_EXTRA_3]/maxdraw)/2,
        	1 - (move_cooldown[AT_EXTRA_3]/maxdraw)/2, 
        	angledraw , -1 , move_cooldown[AT_EXTRA_3]/maxdraw + 0.2);

            draw_sprite_ext(sprite_get("slashc"), 7 - (move_cooldown[AT_EXTRA_3]/maxdraw)*7, hit_player_obj.x , hit_player_obj.y - 36,
        	0.6 + hitdmg,
        	0.6 + hitdmg, 
        	angledraw , -1 , 1);
}

if move_cooldown[AT_EXTRA_3] > 0 && smark == 3{
        	draw_sprite_ext(sprite_get("slosh"), 0, hit_player_obj.x , hit_player_obj.y - 36,
        	1.2 - (move_cooldown[AT_EXTRA_3]/maxdraw)/2,
        	1.2 - (move_cooldown[AT_EXTRA_3]/maxdraw)/2, 
        	angledraw + 90 , -1 , move_cooldown[AT_EXTRA_3]/maxdraw + 0.2);

}
/*
if smark = 0{
    if get_gameplay_time()%200 < 100 {
    draw_sprite_ext(sprite_get("smarkv"), 0, x  , y + 20,
        	0.6,
        	0.6, 
        	get_gameplay_time()%1380/-3 , 
        	-1 , 
        	0 + (get_gameplay_time()%100/200));
    } else {
       draw_sprite_ext(sprite_get("smarkv"), 0, x , y + 20,
        	0.6,
        	0.6, 
        	get_gameplay_time()%1380/-3 , 
        	-1 , 
        	0.5 - (get_gameplay_time()%100/200)); 
        
    }
} else {
	
	if smark < 3  {
        if get_gameplay_time()%100 < 50 {
    draw_sprite_ext(sprite_get("smarkv"), smark, x  , y + 20,
        	0.6,
        	0.6, 
        	get_gameplay_time()%180 * -2, 
        	-1 , 
        	0.6 + (get_gameplay_time()%50/100));
    } else {
       draw_sprite_ext(sprite_get("smarkv"), smark, x , y + 20,
        	0.6,
        	0.6, 
        	get_gameplay_time()%180 * -2 , 
        	-1 , 
        	1.1 - (get_gameplay_time()%50/100)); 
        
    }
	} 
	
	if  move_cooldown[AT_EXTRA_1] > 0{
		    draw_sprite_ext(sprite_get("smarkv"), 3, x  , y + 20,
        	0.6,
        	0.6 , 
        	get_gameplay_time()%36 * -10, 
        	-1 , 
        	move_cooldown[AT_EXTRA_1]/25);
	}
    
    
}
*/

if attacking && attack = AT_DSPECIAL && window = 2 {
	draw_sprite_ext(sprite_index, image_index, ogx - (x - ogx) , y, spr_dir, 1, 0 , -1 , 1);
}
shader_end() 



