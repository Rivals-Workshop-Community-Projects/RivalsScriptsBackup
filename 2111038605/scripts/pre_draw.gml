//Muno start

if (attacking && attack == AT_USPECIAL && window == 2 && instance_exists(blocks[block_num])){
	var number_drawn = block_num - (blocks[block_num].state == 0)
	
	if blocks[number_drawn] != self with blocks[number_drawn]{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(asset_get("medFont"));
		var color = c_black;
		draw_text_transformed_color(x + 2 * (number_drawn != 1), y + 5, number_drawn, 2, 2, 0, color, color, color, color, 1);
	}
	
	var arr_x = blocks[block_num].x;
	var arr_y = blocks[block_num].y;
	
	if (blocks[block_num] == self) arr_y -= 22;
	
	var arrow_dist = 24;
	
	if can_u arrowDraw(arr_x, arr_y, 90, arrow_dist);
	if can_d arrowDraw(arr_x, arr_y, 270, arrow_dist);
	if can_l arrowDraw(arr_x, arr_y, 180, arrow_dist);
	if can_r arrowDraw(arr_x, arr_y, 0, arrow_dist);
}



#define arrowDraw(x_pos, y_pos, angle, mag)

x_pos += lengthdir_x(mag, angle);
y_pos += lengthdir_y(mag, angle);
var color = c_red;

draw_sprite_ext(spr_uspecial_arrow, 0, x_pos, y_pos, 1, 1, angle, color, 1);