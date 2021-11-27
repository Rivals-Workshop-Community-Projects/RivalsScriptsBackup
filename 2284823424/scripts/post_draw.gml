muno_event_type = 4;
user_event(14);



shader_start();

var real_sprite = sprite_index;
var real_index = image_index;
if last_size_sprite_frame == get_gameplay_time(){
	real_sprite = last_size_sprite;
	real_index = last_size_index;
}

if !(elytra && held_item == IT_ELYTRA) && (array_find_index(ok_anims, sprite_index) != -1) && held_item && sprite_index != spr_uspecial{
	var cur = itm_pos[real_sprite, floor(real_index) % sprite_get_number(real_sprite)];
	
	if !cur.back{
		draw_sprite_ext(items[held_item].held_sprite, 0, x + cur.x * spr_dir, y + cur.y, cur.xscale * spr_dir, cur.yscale, cur.angle * -spr_dir, cur.color, cur.alpha);
	}
	
	if (real_sprite == spr_parry && real_index == 1){
	
		maskHeader();
		
		draw_sprite_ext(items[held_item].held_sprite, 0, x + cur.x * spr_dir, y + cur.y, cur.xscale * spr_dir, cur.yscale, cur.angle * -spr_dir, cur.color, cur.alpha);
		
		maskMidder();
		
		//draw_sprite_ext(real_sprite,real_index,nspec_vfx_x,nspec_vfx_y,spr_dir,1,image_angle,c_white,target_alpha);
		var c = make_color_rgb(165, 155, 205);
		draw_rectangle_colour(0,0, room_width,room_height, c, c, c, c, false);
		
		maskFooter();
	
	}
}



if real_sprite == spr_uspecial{
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
		var cur = itm_pos[spr_uspecial, floor(real_index) % sprite_get_number(real_sprite)];
	
		if !cur.back{
			draw_sprite_ext(drawn_items[0], 0, x + cur.x * spr_dir, y + cur.y, cur.xscale * spr_dir, cur.yscale, cur.angle * -spr_dir, cur.color, cur.alpha);
		}
	}
	
	if drawn_items[1]{
		var cur = itm_pos[spr_uspecial + 1, floor(real_index) % sprite_get_number(real_sprite)];
	
		if !cur.back{
			draw_sprite_ext(drawn_items[1], 0, x + cur.x * spr_dir, y + cur.y, cur.xscale * spr_dir, cur.yscale, cur.angle * -spr_dir, cur.color, cur.alpha);
		}
	}
}



// if (on_block && (sprite_index == spr_land || sprite_index == spr_landinglag)) && !fast_graphics{
// 	maskHeader();
		
// 	draw_sprite_ext(sprite_index, real_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 0.5);
	
// 	maskMidder();
		
// 	var col = boost_color;
	
// 	if ("fix_stupid_flash_thing" in self) draw_rectangle_colour(0, 0, room_width, room_height, col, col, col, col, false);
	
// 	maskFooter();
	
// 	fix_stupid_flash_thing = true;
// }



if (state_cat == SC_HITSTUN && state_timer < 30) || (attacking && attack == AT_TAUNT_2 && "bed_time" in self && bed_time > bed_time_max - bed_time_mid && bed_time % 10 < 5){
	draw_sprite_ext(real_sprite, real_index, x, y, image_xscale * size_mult, image_yscale * size_mult, image_angle, c_red, 0.5);
}

shader_end();



//USpecial block meter

if block_meter_fade != 0{
	var draw_x = x;
	var draw_y = y - char_height - hud_offset - 16 + (blocks == max_blocks) * 2;
	var itm_wd = blocks == max_blocks ? 14 : 10;
	var itm_hi = blocks == max_blocks ? 2 : 6;
	var mar = 2;
	var itm_ct = max_blocks;
	var tot_w = (itm_ct * itm_wd) + ((itm_ct - 1) * mar);
	var starting_x_pos = draw_x - tot_w / 2 - 2;
	
	for(i = 0; i < itm_ct; i++){
	    var draw_color = (blocks == max_blocks) ? c_white : ((i < blocks) ? (get_player_hud_color(player) == c_gray ? c_white : get_player_hud_color(player)) : (attacking && attack == AT_USPECIAL && !uspecial_type && state_timer % 10 < 5 && window > 1 ? c_black : dark_grey));
	    var rect_x = starting_x_pos + (itm_wd + mar) * i;
	    var orig = draw_get_alpha();
	    draw_set_alpha(block_meter_fade);
	    rectDraw(rect_x, draw_y - 12, itm_wd + 3, itm_hi + 3, c_black);
	    rectDraw(rect_x + 2, draw_y - 10, itm_wd - 1, itm_hi - 1, draw_color);
	    draw_set_alpha(orig);
	}
}



//NSpecial container gui

if (nspecial_gui_alpha > 0.1){
	draw_sprite_ext(spr_nspecial_guis, current_container, x, y - char_height - hud_offset - 20, 1, 1, 0, c_white, nspecial_gui_alpha);
	for (i = 0; i < array_length_1d(containers[current_container].items); i++){
		var drawn_x = x - 24 + 24 * i;
		var drawn_y = y - char_height - hud_offset - 46;
		if (i == nspecial_cursor) drawn_y -= sin(nspecial_cursor_timer / 6) * 4 + 2;
		draw_sprite_ext(items[containers[current_container].items[i]].inv_sprite, 0, drawn_x, drawn_y, 1, 1, 0, containers[current_container].spent_items[i] ? make_color_hsv(0, 0, 50) : c_white, nspecial_gui_alpha);
		// if items[containers[current_container].items[i]].count_type == 1 && items[containers[current_container].items[i]].count > 1 || true {
		// 	textDraw(drawn_x + 14, drawn_y + 5, "fName", c_white, 100, 100, fa_right, 1, true, 1, string(items[containers[current_container].items[i]].count));
		// }
		if (i == nspecial_cursor){
			var prompt = items[containers[current_container].items[i]].name;
			
			if items[containers[current_container].items[i]].count_max - items[containers[current_container].items[i]].count > 1{
				if items[containers[current_container].items[i]].show_count{
					prompt += " x" + string(items[containers[current_container].items[i]].count_max);
				}
			}
			
			var txt = textDraw(drawn_x + 16, drawn_y + 15, "fName", containers[current_container].spent_items[i] ? c_gray : c_white, 20, 200, fa_left, 1, false, 1, prompt);
			rectDraw(drawn_x + 12, drawn_y + 14, txt[0] + 5, txt[1] - 4, c_black);
			rectDraw(drawn_x + 14, drawn_y + 12, txt[0] + 1, txt[1], c_black);
			textDraw(drawn_x + 16, drawn_y + 15, "fName", containers[current_container].spent_items[i] ? c_gray : c_white, 20, 200, fa_left, 1, false, 1, prompt);
			draw_sprite(spr_nspecial_gui_cursor, 0, drawn_x + 8, drawn_y + 8);
		}
	}
}



//Sticky Piston

if (attacking && attack == AT_EXTRA_1){
	if (real_index == clamp(real_index, 3, 6)){
		var draw_x = pist_x;
		
		if (window == 2){
			draw_x += 10 * spr_dir;
		}
		
		var image_index_offsets = [0, 0, 0, -14, -12, 12, 10, 0];
		var width_change_for_frame = image_index_offsets[real_index];
		
		rectDraw(x + (20 + width_change_for_frame) * spr_dir * size_mult, y - 32 * size_mult, draw_x - (x + (20 + width_change_for_frame) * spr_dir), 7, c_black);
		rectDraw(x + (20 + width_change_for_frame) * spr_dir * size_mult, y - 30 * size_mult, draw_x - (x + (20 + width_change_for_frame) * spr_dir), 3, make_color_rgb(184, 148, 95));
		draw_sprite_ext(spr_nspecial_item_sticky_piston_head, 0, draw_x, y - 28 * size_mult, spr_dir * size_mult, 1 * size_mult, 0, c_white, 1);
		
		if (real_index == 3){
			rectDraw(x + (20 + width_change_for_frame) * spr_dir * size_mult, y - 42 * size_mult, draw_x - (x + (19 + width_change_for_frame) * spr_dir), 27 * size_mult, make_color_rgb(184, 148, 95));
			rectDraw(x + (20 + width_change_for_frame) * spr_dir * size_mult, y - 42 * size_mult, (draw_x - (x + (19 + width_change_for_frame) * spr_dir)) / 3, 27 * size_mult, make_color_rgb(160, 114, 73));
		}
	}
}



//Strength pot duration bar

if strength_pot{
	
	var draw_width = 40;
	if (strength_pot < 3){
		draw_width = max(ease_quadIn(0, 40, strength_pot, 3), 0);
	}
	
	meterDraw(x, y - char_height - hud_offset - 74 + phone_hud_hidden * 40, draw_width, 8, $161996, clamp(strength_pot / strength_pot_max, 0, 1), 1, 1, true);
	if !(strength_pot - 1 < 60 && (strength_pot - 1) % 10 >= 5) draw_sprite(spr_hud_strength, 0, x - 16, y - char_height - hud_offset - 104 + phone_hud_hidden * 40)
}



if rune_totem{
	
	draw_sprite(spr_itm_totem, 0, x, y  - char_height - hud_offset - 73);
	
}



//Discarding the totem of not not living

if discard_timer && !((discard_timer_max - discard_timer) - 1 < 25 && ((discard_timer_max - discard_timer) - 1) % 10 >= 5){
	textDraw(x, y + 10, "fName", c_white, 100, 1000, fa_center, 1, 1, 1, "Hold to Discard");
}



#define meterDraw(center, top, width, height, color, amount, alpha, alpha2, border)

if width < 6 return;

var left = center - width * 0.5;

draw_set_alpha(alpha);

rectDraw(left, top, width, height, c_black);
rectDraw(left + 2, top + 2, width - 4, height - 4, make_color_rgb(60, 60, 60));
if border rectDraw(left + 2, top + 2, min(((width - 4) * amount / 2) * 2 + 2, width - 4), height - 4, c_white);

draw_set_alpha(alpha * alpha2);

rectDraw(left + 2, top + 2, ((width - 4) * amount / 2) * 2, height - 4, color);

draw_set_alpha(1);



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];



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