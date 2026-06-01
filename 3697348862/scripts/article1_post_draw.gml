//article1_post_draw.gml

//Used for TI84 Graphing Calculator Operator Articles


// draw_debug_text(x - 26,y + 56,"damage: " + string(dmgIncrease + 11));

/*
draw_debug_text(x - 14,y + 0,"state: " + string(state));
draw_debug_text(x - 14,y + 16,"state_timer: " + string(state_timer));
draw_debug_text(x - 14,y + 32,"num 1: " + string(held_num_1));
draw_debug_text(x - 14,y + 48,"num 2: " + string(held_num_2));
draw_debug_text(x - 14,y + 64,"operator: " + string(curr_operator));
draw_debug_text(x - 14,y + 80,"rot_thing: " + string(rotate_angle_thing));
draw_debug_text(x - 14,y + 96,"what_rot: " + string(what_to_rot_by_value));
*/


// offscreen stuff
var xv = view_get_xview();
var wv = view_get_xview() + view_get_wview();
var yv = view_get_yview();
var hv = view_get_yview() + view_get_hview();

/*
print("x view: " + string(xv));
print("w view: " + string(wv));
print("y view: " + string(yv));
print("h view: " + string(hv));
print("coords -  x: " + string(x) + ", y: " + string(y))
*/

var offset = 38;
var x_draw = clamp(x, xv + offset, wv - offset);
var y_draw = clamp(y, yv + offset, hv - offset);

if ((x < xv) || (x > wv) || (y < yv) || (y > hv)){
	//print("currently out of view!");
	
	var which_offscreen_img = 0;
	// determining which pointer lol
	
	// left
	if ((x < xv) && !(x > wv)){
		if (y < yv){
			which_offscreen_img = 1;
		} else if (y > hv){
			which_offscreen_img = 7;
		} else {
			which_offscreen_img = 0;
		}
	}
	// right
	else if (!(x < xv) && (x > wv)){
		if (y < yv){
			which_offscreen_img = 3;
		} else if (y > hv){
			which_offscreen_img = 5;
		} else {
			which_offscreen_img = 4;
		}
	}
	// neutral
	else {
		if (y < yv){
			which_offscreen_img = 2;
		} else if (y > hv){
			which_offscreen_img = 6;
		}
	}
	
	// draw circle
	//draw_sprite(sprite_get("_offscreen"),0,x_draw,y_draw);
	draw_sprite_ext( sprite_get("_offscreen"),		// sprite
	which_offscreen_img,										// image_index
	x_draw,										// x
	y_draw,										// y
	1,										// xscale
	1,										// yscale
	0,										// rot
	hud_color,								// color
	1 );									// alpha
	
	// draw operator
	draw_sprite_ext( sprite_get("_offscreen_operators"),		// sprite
	curr_operator-1,										// image_index
	x_draw,										// x
	y_draw,										// y
	1,										// xscale
	1,										// yscale
	0,										// rot
	c_white,								// color
	1 );									// alpha
} else {
	//print("nah");
}


//
if (state == 0){
	draw_sprite_ext( sprite_get("__operators"),		// sprite
	curr_operator - 1,										// image_index
	x,										// x
	y - 0,										// y
	0.5,										// xscale
	0.5,										// yscale
	-(get_gameplay_time() * 20),										// rot
	c_white,								// color
	1 );									// alpha
}

// idle
if (state == 1 || state == 2){
	// do stuff here
	
	var scaling_thing = 1 - abs( sin(get_gameplay_time() * 0.015) * 0.25 );
	
	if (held_num_1 != -1){
	
		draw_sprite_ext( sprite_get("nspecial_number_proj"),		// sprite
		held_num_1,										// image_index
		x - 56,										// x
		y - 0,										// y
		scaling_thing,										// xscale
		scaling_thing,										// yscale
		0,										// rot
		c_white,								// color
		1 );									// alpha
		
	}
	
	if (held_num_2 != -1){
	
		draw_sprite_ext( sprite_get("nspecial_number_proj"),		// sprite
		held_num_2,										// image_index
		x + 56,										// x
		y - 0,										// y
		scaling_thing,										// xscale
		scaling_thing,										// yscale
		0,										// rot
		c_white,								// color
		1 );									// alpha
		
	}
	
}


if (state == 3){
	
	// first number
	draw_sprite_ext( sprite_get("nspecial_number_proj"),		// sprite
	held_num_1,										// image_index
	move_throw_num1_pos,										// x
	move_throw_num1_pos_y,										// y
	1,										// xscale
	1,										// yscale
	0,										// rot
	c_white,								// color
	1 );									// alpha
	
	// second number
	draw_sprite_ext( sprite_get("nspecial_number_proj"),		// sprite
	held_num_2,										// image_index
	move_throw_num2_pos,										// x
	move_throw_num2_pos_y,										// y
	1,										// xscale
	1,										// yscale
	0,										// rot
	c_white,								// color
	1 );									// alpha

}

// throw
if (state == 4){
	// second number
	draw_sprite_ext( sprite_get("nspecial_number_proj"),		// sprite
	held_num_2,										// image_index
	x + lengthdir_x(70*spr_dir, what_to_rot_by_value+(((curr_operator==1)?180:0)*spr_dir)),										// x
	y + lengthdir_y(70*spr_dir, what_to_rot_by_value+(((curr_operator==1)?180:0)*spr_dir)),										// y
	1,										// xscale
	1,										// yscale
	0,										// rot
	c_white,								// color
	1 );									// alpha
}


if (state >= 2 && state <= 9){//>

	draw_sprite_ext( sprite_get("__operators"),		// sprite
	curr_operator - 1,										// image_index
	x,										// x
	y - 0,										// y
	1,										// xscale
	1,										// yscale
	what_to_rot_by_value,										// rot
	c_white,								// color
	1 );									// alpha
}

// arrow
draw_sprite_ext( sprite_get("_arrow"), 0, x - 0*spr_dir, y - 46, 1, 1, 0, hud_color, 1 );