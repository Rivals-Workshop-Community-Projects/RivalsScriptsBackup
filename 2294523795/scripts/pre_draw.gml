///
shader_start();

if attacking && attack == AT_FSPECIAL && window == 4 {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.2);
}

if attacking && attack == AT_FSPECIAL && window == 6 && free{
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.2);
}

if attacking && attack == AT_USPECIAL && (window == 6 or (window == 7 && window_timer < 10)){
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.2);
}

if draw_indicator = true{

draw_sprite_ext(sprite_get("hud_mini"), floor(scharge/19), x - 34 , y - 12, 1,1,0,-1, move_cooldown[AT_EXTRA_2]/60);
if scharge >= 60 {
    draw_sprite_ext(sprite_get("hud_mini"), 3, x - 34 , y - 12, 1,1,0,-1, move_cooldown[AT_EXTRA_2]/60);
}

if scharge >= 120 {
    draw_sprite_ext(sprite_get("hud_mini"), 6, x - 34 , y - 12, 1,1,0,-1, move_cooldown[AT_EXTRA_2]/60);
}

if scharge >= 180 {
    draw_sprite_ext(sprite_get("hud_mini"), 9, x - 34 , y - 12, 1,1,0,-1, move_cooldown[AT_EXTRA_2]/60);
    draw_sprite_ext(sprite_index, image_index, x - 3 + random_func(1,6,true) - shsp , y + random_func(2,6,true) - svsp, 1.1 * spr_dir, 1.1, 0 , c_white , 0.4);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4.5 , y  - svsp*4.5, 1 * spr_dir, 1, 0 , c_white , 0.1);
}
}

shader_end() 