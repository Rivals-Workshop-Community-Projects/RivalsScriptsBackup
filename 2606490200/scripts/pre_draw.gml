///
/*
if "cosmicman" in self && uped >= 4 {
	draw_sprite_tiled_ext(sprite_get("cosmic"), 0, get_gameplay_time()/23 , get_gameplay_time()/23 , 1, 1, c_white, 1)

  
    draw_sprite_tiled_ext(sprite_get("cosmicb"), 3, get_gameplay_time()/18 , get_gameplay_time()/18, 1, 1, c_white, 1)
    
    draw_sprite_tiled_ext(sprite_get("cosmic"), 2, get_gameplay_time()/13, get_gameplay_time()/13, 1, 1, c_white, 1)
    
    draw_sprite_tiled_ext(sprite_get("cosmic"), 1, get_gameplay_time()/9, get_gameplay_time()/9, 1.4, 1.4, c_white, 1)
    
    draw_sprite_tiled_ext(sprite_get("cosmic"), 1,  get_gameplay_time()/7, get_gameplay_time()/7, 1.2, 1.2, c_white, 1)
} 
*/

shader_start();

with asset_get("pHitBox") {
		if attack == AT_FTILT && hbox_num == 10 && "ye" in self {
			draw_sprite_ext( ye, heck, x, y, spr_dir,1,0,-1, 0.5 - hitbox_timer/20 )
		}
}

if (state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN or state == PS_DASH_STOP or 
state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_WAVELAND 
or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) && htrain >= 100{
	 draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4.5 , y  - svsp*4.5, 1 * spr_dir, 1, 0 , c_white , 0.1);
}
shader_end();


