//gearbox
var temp_x = x;
var temp_y = y + draw_height;



//crouch!

if !has_crouched && practice{
	textDraw(x, y - 29, "fName", c_white, 0, 1000, fa_center, 1, 0, 1, "Crouch!");
}



//meter

if (state == 0 && crouch_time > 10){
	var opac = lerp(0, 1, (crouch_time - 10) / 20);
	meterDraw(x, y - 58, 100, 7, c_white, ease_circIn(0, 1, crouch_time + 1, crouch_time_max), opac, 1, false);
}



if state{

	draw_sprite_ext(sprite_get("small_screen"), 0, x, y + draw_height, 1, 1, 0, c_white, 0.5);
	
	
	
	//stage
	
	var stage_height = temp_y + 50 - sin(select_timer / 6) * 6;
	var st_w = owner.width / 4;
	
	rectDraw(temp_x - st_w / 2, stage_height, st_w - 1, 19, c_white);
	
	
	
	//bridges
	
	var bridge_pos = [0, 0];
	var bridge_dist = 80;
	
	if array_equals(owner.bridges, [1, 0]){
		bridge_pos = [-bridge_dist, 0];
	}
	else if array_equals(owner.bridges, [0, 1]){
		bridge_pos = [0, bridge_dist];
	}
	else if array_equals(owner.bridges, [1, 1]){
		bridge_pos = [-bridge_dist, bridge_dist];
	}
	
	if !array_equals(bridge_pos, [0, 0]){
		rectDraw(temp_x + bridge_pos[0], stage_height, bridge_pos[1] - bridge_pos[0] - 1, 3, c_white);
	}
	
	
	
	//walls
	
	var wall_dist = 80;
	var wall_pos = -40;
	var wall_height = 60;
	
	if owner.walls[0]{
		rectDraw(temp_x - wall_dist, stage_height + wall_pos, 3, wall_height - 1, c_white);
	}
	
	if owner.walls[1]{
		rectDraw(temp_x + wall_dist - 4, stage_height + wall_pos, 3, wall_height - 1, c_white);
	}
	
	
	
	//plats
	
	if !array_equals(owner.layouts[owner.current_layout].plats, []) for (var i = 0; i < array_length(owner.layouts[owner.current_layout].plats); i++){
		var plat = owner.layouts[owner.current_layout].plats[i];
		var draw_x = temp_x + plat.x_pos * 2 - plat.width * 2;
		var draw_y = stage_height + plat.y_pos * 2;
		rectDraw(draw_x, draw_y, plat.width * 4 - 1, 1, c_white);
	}
	
	
	
	//arrows
	
	if (state == 2) && practice{
		for (var j = -1; j < 2; j++){
			var col = (cursor == j + 1) ? c_white : c_gray;
			draw_sprite_ext(sprite_get("select_arrow"), 0, x + 64 * j, stage_height - 37, 1, -1, 0, col, 1);
			draw_sprite_ext(sprite_get("select_arrow"), 0, x + 64 * j, stage_height + 30, 1,  1, 0, col, 1);
		}
		
		draw_set_valign(fa_middle);
		textDraw(x, temp_y + 109, "fName", c_white, 19, 1000, fa_center, 1, 0, 1, owner.layouts[owner.current_layout].name);
		draw_set_valign(fa_top);
		
		if !has_gridded && has_crouched textDraw(x, temp_y + 131, "fName", c_white, 0, 1000, fa_center, 1, 0, 1, "TAUNT: Grid");
	}
}



with obj_stage_main if settings_loaded{
	if cur_settings[st_st_greenscreen]{
		var green = $00ff00;
		draw_rectangle_color(0, 0, room_width, room_height, green, green, green, green, false);
	}
}



#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
if "draw_opac" in self draw_set_alpha(draw_opac);
else draw_set_alpha(1);



#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);



#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);



#define meterDraw(center, top, width, height, color, amount, alpha, alpha2, border)

var left = center - width * 0.5;

draw_set_alpha(alpha);

rectDraw(left, top, width - 1, height, c_black);
rectDraw(left + 2, top + 2, width - 5, height - 4, make_color_rgb(60, 60, 60));
if border rectDraw(left + 2, top + 2, min(((width - 4) * amount / 2) * 2 + 2, width - 5), height - 4, c_white);

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