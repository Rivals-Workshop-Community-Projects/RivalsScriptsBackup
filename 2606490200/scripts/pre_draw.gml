///

shader_start();
if (state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN or state == PS_DASH_STOP or 
state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_WAVELAND 
or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) && htrain >= 100{
	 draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4.5 , y  - svsp*4.5, 1 * spr_dir, 1, 0 , c_white , 0.1);
}
shader_end();