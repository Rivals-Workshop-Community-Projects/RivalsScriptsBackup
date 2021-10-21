//Draw phantom

gpu_set_blendmode(bm_normal); 

//Outline
if (state == 4 || state == 5) {
	draw_sprite(sprite_get("phantom_trail_outline"), 0, 2*(floor(x/2)), 2*(floor(y/2)));
}

draw_sprite(sprite_get("phantom_trail_outline"), 2, 2*(floor(x/2)), 2*(floor(y/2)));

for (i = 0; i < 6; i++) {
	
	trail_draw_x = ds_grid_get(trail_coords, 0, i);
	trail_draw_y = ds_grid_get(trail_coords, 1, i);
	draw_sprite(sprite_get("phantom_trail_outline"), i+2, trail_draw_x, trail_draw_y);
	
}

//Main color
if (state == 4 || state == 5) {
	draw_sprite_ext(sprite_get("phantom_trail"), 0, 2*(floor(x/2)), 2*(floor(y/2)), 1, 1, 0, phantom_color, image_alpha);
}

draw_sprite_ext(sprite_get("phantom_trail"), 2, 2*(floor(x/2)), 2*(floor(y/2)), 1, 1, 0, phantom_color, image_alpha);

for (i = 0; i < 6; i++) {
	
	trail_draw_x = ds_grid_get(trail_coords, 0, i);
	trail_draw_y = ds_grid_get(trail_coords, 1, i);
	draw_sprite_ext(sprite_get("phantom_trail"), i+2, trail_draw_x, trail_draw_y, 1, 1, 0, phantom_color, image_alpha);
	
}

gpu_set_blendmode(bm_add);


//Shading
if (state == 4 || state == 5) {
	draw_sprite(sprite_get("phantom_trail_add"), 2, 2*(floor(x/2)), 2*(floor(y/2)));
}

if (abs(ds_grid_get(trail_coords, 0, 0)-x) < 5 && abs(ds_grid_get(trail_coords, 1, 0)-y) < 5) {
	draw_sprite(sprite_get("phantom_trail_add"), 3, 2*(floor(x/2)), 2*(floor(y/2)));
}
draw_sprite(sprite_get("phantom_trail_add"), 4, 2*(floor(x/2)), 2*(floor(y/2)));

for (i = 0; i < 5; i++) {
	
	trail_draw_x = ds_grid_get(trail_coords, 0, i);
	trail_draw_y = ds_grid_get(trail_coords, 1, i);
	draw_sprite(sprite_get("phantom_trail_add"), i+3, trail_draw_x, trail_draw_y);
	
}

gpu_set_blendmode(bm_normal); 

//N-Special Attack

if (state == 4) {
	draw_sprite(sprite_get("phantom_nspecial"), state_timer, x, y);
}