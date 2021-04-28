///


if nolan = 0 {
shader_start();

if move_cooldown[AT_NSPECIAL] < 58 && move_cooldown[AT_NSPECIAL] != 0{
	draw_sprite_ext(sprite_get("seed1"), get_gameplay_time()/4, famix , famiy, spr_dir, 1, 0 , -1 , 0.2 + (get_gameplay_time()%5)/5);
}

if move_cooldown[AT_NSPECIAL] == 0 {
		draw_sprite_ext(sprite_get("seed2"), get_gameplay_time()/4, famix , famiy, spr_dir, 1, 0 , -1 , 0.3 + (get_gameplay_time()%20)/20);
}

if seednum >= 2 {
	if move_cooldown[AT_NSPECIAL] < 58 && move_cooldown[AT_NSPECIAL] != 0{
	draw_sprite_ext(sprite_get("seed1"), get_gameplay_time()/3 +1, famix - shsp -22 , famiy - svsp -10, spr_dir*0.5, 0.5, 0 , -1 , 0.2 + (get_gameplay_time()%5)/5);
    }
    
    if move_cooldown[AT_NSPECIAL] == 0 {
    		draw_sprite_ext(sprite_get("seed2"), get_gameplay_time()/3 +1, famix - shsp -22 , famiy - svsp -10, spr_dir*0.5, 0.5, 0 , -1 , 0.3 + (get_gameplay_time()%14)/14);
    }
}

if seednum >= 3 {
	if move_cooldown[AT_NSPECIAL] < 58 && move_cooldown[AT_NSPECIAL] != 0{
	draw_sprite_ext(sprite_get("seed1"), get_gameplay_time()/3 +2 , famix - shsp +18 , famiy - svsp +18, spr_dir*0.5, 0.5, 0 , -1 , 0.2 + (get_gameplay_time()%5)/5);
    }
    
    if move_cooldown[AT_NSPECIAL] == 0 {
    		draw_sprite_ext(sprite_get("seed2"), get_gameplay_time()/3 +2, famix - shsp +18 , famiy - svsp +18, spr_dir*0.5, 0.5, 0 , -1 , 1.3 - (get_gameplay_time()%14)/14);
    }
}


if attacking && attack == AT_USPECIAL && window > 2 {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.1);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.1);
}

if attacking && attack == AT_USPECIAL && window == 2 && window_timer > 2 {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.1);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.1);
}

if attacking && attack == AT_DSPECIAL {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.1);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.1);
}

gpu_set_blendmode(bm_add);
if attacking && attack == AT_USPECIAL && window > 1 {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.2);
}

if attacking && attack == AT_DSPECIAL {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.2);
}
gpu_set_blendmode(bm_normal);

shader_end();
}
