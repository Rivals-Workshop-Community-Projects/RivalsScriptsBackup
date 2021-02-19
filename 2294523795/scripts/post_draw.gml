///

shader_start();
if attacking && attack == AT_NSPECIAL && window == 2 {
    	draw_sprite_ext(sprite_get("np5"), state_timer/3, x - 10*spr_dir, y -10, 0.2*spr_dir + (scharge/300)*spr_dir,0.2 + (scharge/300), 0 , -1 , 0.2 + scharge/180);
}
shader_end() 