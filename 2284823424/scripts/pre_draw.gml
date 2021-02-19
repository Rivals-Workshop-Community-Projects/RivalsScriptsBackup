//Block boost

// if (on_block || on_block_timer){
// 	for (i = 0; i < (fast_graphics ? 1 : round(ease_linear(0, 4, on_block_timer, on_block_timer_max))); i++){
// 		var rand_x = random_func(i + 00, 9, true) - 4;
// 		var rand_y = random_func(i + 10, 9, true) - 4;
		
// 		maskHeader();
		
// 		draw_sprite_ext(sprite_index, image_index, x + rand_x - hsp * 1.5 * i, y + rand_y - vsp * 1.5 * i, image_xscale, image_yscale, image_angle, image_blend, 0.5);
		
// 		maskMidder();
		
// 		var col = boost_color;
		
// 		if ("fix_stupid_flash_thing" in self) draw_rectangle_colour(0, 0, room_width, room_height, col, col, col, col, false);
		
// 		maskFooter();
		
// 		fix_stupid_flash_thing = true;
// 	}
// }

if ((on_block && !free) || (on_block_timer > 1)){
		
	// gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	gpu_set_fog(1, boost_color, 0, 1);
    
	for (i = 0; i < ((on_block_timer / on_block_timer_max > 0.5) ? 2 : 1); i++){
		var rand_x = random_func(i + 00, 7, true) - 3;
		var rand_y = random_func(i + 10, 7, true) - 3;
		
		draw_sprite_ext(sprite_index, image_index, x + rand_x - hsp * 1.5 * (i + 1), y + rand_y - vsp * 1.5 * (i + 1) + 4, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_white, 1);
	}
        
    gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
    // gpu_set_blendmode(bm_normal);
}




       



//Held item

shader_start();

if !(elytra && held_item == IT_ELYTRA) && (array_find_index(ok_anims, sprite_index) != -1) && held_item && sprite_index != spr_uspecial{
	var cur = itm_pos[sprite_index, floor(image_index) % sprite_get_number(sprite_index)];
	
	if cur.back{
		draw_sprite_ext(items[held_item].held_sprite, 0, x + cur.x * spr_dir, y + cur.y, cur.xscale * spr_dir, cur.yscale, cur.angle * -spr_dir, cur.color, cur.alpha);
	}
}



if sprite_index == spr_uspecial{
	var drawn_items = [held_item ? items[held_item].held_sprite : 0, 0];
	
	switch(uspecial_type){
		case 0: //nothing
			break;
		case 1: //uspecial block
			drawn_items[1] = blocks ? block_datas[primary_block].item : 0;		
			break;
		case 2: //item
			drawn_items = [0, held_item ? items[held_item].held_sprite : 0];
			break;
	}
	
	if drawn_items[0]{
		var cur = itm_pos[spr_uspecial, floor(image_index) % sprite_get_number(sprite_index)];
	
		if cur.back{
			draw_sprite_ext(drawn_items[0], 0, x + cur.x * spr_dir, y + cur.y, cur.xscale * spr_dir, cur.yscale, cur.angle * -spr_dir, cur.color, cur.alpha);
		}
	}
	
	if drawn_items[1]{
		var cur = itm_pos[spr_uspecial + 1, floor(image_index) % sprite_get_number(sprite_index)];
	
		if cur.back{
			draw_sprite_ext(drawn_items[1], 0, x + cur.x * spr_dir, y + cur.y, cur.xscale * spr_dir, cur.yscale, cur.angle * -spr_dir, cur.color, cur.alpha);
		}
	}
}

shader_end();



if elytra && !(elytra - 1 < 25 && (elytra - 1) % 10 >= 5) && !(attacking && attack == AT_UTHROW) draw_sprite_ext(spr_elytra_wings, get_gameplay_time() / 5, x, y, spr_dir, 1, 0, c_white, 1);



#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);



#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);



#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);