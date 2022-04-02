//draw_debug_text(x,y,"HELLO, GORDON! "+string(timer))

/*if array_length_1d(custom_args) > 1 && custom_args[1] != 0 {
    draw_sprite(custom_args[1],0,x,y);
}
*/

//Parallax
if (!is_parallax) {
    draw_sprite_ext(bg_spr, img, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
else {
var width = sprite_get_width(bg_spr) * 2;
var height = sprite_get_height(bg_spr) * 2;
var xx = x % width;
var yy = y % height;
var view_x = view_get_xview();
var view_y = view_get_yview();
var left = floor(view_x / width - 1) * width + xx;
var right = ceil((view_x + view_get_wview())/ width) * width;
var top = floor(view_y / height - 1) * height + yy;
var bottom = ceil((view_y + view_get_hview())/ height) * height;

switch (tile_type) {
	    case 0: //no loop
	        draw_sprite_ext(bg_spr, img, x, y, image_xscale, image_yscale, 0, c_white, 1);
	    break;
	    case 1: //horizontal
	        for(var i = left; i < right; i+=width)
	        {
	            draw_sprite_ext(bg_spr, img, i, y, image_xscale, image_yscale, 0, c_white, 1);
	        }
	    break;
	    case 2: //Vertical
	        for(var i = top; i < bottom; i+=height)
	        {
	            draw_sprite_ext(bg_spr, img, x, i, image_xscale, image_yscale, 0, c_white, 1);
	        }
	    break;
	    case 3://Both
            draw_sprite_tiled_ext(bg_spr, img, x, y, image_xscale, image_yscale, c_white, 1);
	    break;
	}
}

if !debug_info exit; //Debug info; check user_event2 draw_debug_info
debug_pos = grid_to_cell([x+64,y+64]);
draw_debug_text(floor(x),floor(y),string(id)+"
["+string(debug_pos[1][0])+","+string(debug_pos[1][1])+"]:["+string(floor((debug_pos[0][0])/16))+","+string(floor((debug_pos[0][1])/16))+"]:["+string((debug_pos[0][0]) % 16)+","+string((debug_pos[0][1]) % 16)+"]");
draw_rectangle_color(x-sprite_get_xoffset(bg_spr)*2,y-sprite_get_yoffset(bg_spr)*2,
                    x-sprite_get_xoffset(bg_spr)*2+sprite_get_width(bg_spr)*2,y-sprite_get_yoffset(bg_spr)*2+sprite_get_height(bg_spr)*2,
                    c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,true);


#define grid_to_cell(_pos) //Translate basegame grid system coordinates to in cell coordinates
with room_manager {
	_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];
	var _sub_pos_x = [(_pos[0] % ((cell_dim[0]-grid_offset)*cell_size)),floor(_pos[0]/((cell_dim[0]-grid_offset)*cell_size))];
	var _sub_pos_y = [(_pos[1] % ((cell_dim[1]-grid_offset)*cell_size)),floor(_pos[1]/((cell_dim[1]-grid_offset)*cell_size))];
	if sign(_sub_pos_x[0]) == -1 _sub_pos_x[0] += ((cell_dim[0]-grid_offset)*cell_size); 
	if sign(_sub_pos_y[0]) == -1 _sub_pos_y[0] += ((cell_dim[1]-grid_offset)*cell_size);
    return [[_sub_pos_x[0], //Subcell
		    _sub_pos_y[0]],
		   [_sub_pos_x[1], //Cell
			_sub_pos_y[1]]];
}