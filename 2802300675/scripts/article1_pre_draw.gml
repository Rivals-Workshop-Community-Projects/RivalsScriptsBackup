var fx_image_index = get_gameplay_time() / 6;

if  (get_player_color(player) == 24 or get_player_color(player) == 25) {
//crash prevention line
shader_end();
maskHeader();
draw_self();
maskMidder();
if(get_player_color(player) == 24 ){
draw_sprite_tiled_ext(sprite_get("unknown"), fx_image_index, x, y, 1, 1, c_white, 1)
}if(get_player_color(player) == 25 ){
	draw_sprite_tiled_ext(sprite_get("rumor"), fx_image_index, x, y, 1, 1, c_white, 1)
}

maskFooter();

with(player_id){
    shader_start();
}	
	
}


//actual sprite draw code
for (var i = 0; i < array_length(poison_array); i++){
	
	if(poison_array[i].poison_active == true){
		if  (get_player_color(player) == 24 or get_player_color(player) == 25) {
			//crash prevention line
			shader_end();
			maskHeader();
			draw_sprite_ext(poison_array[i].sprite_index, poison_array[i].image_index, poison_array[i].x, poison_array[i].y, 1, 1, 0, poison_array[i].color, poison_array[i].alpha);
			maskMidder();
				if(get_player_color(player) == 24 ){
					draw_sprite_tiled_ext(sprite_get("unknown"), fx_image_index, poison_array[i].x, poison_array[i].y, 1, 1, poison_array[i].color, 1)
				}if(get_player_color(player) == 25 ){
					draw_sprite_tiled_ext(sprite_get("rumor"), fx_image_index, poison_array[i].x, poison_array[i].y, 1, 1, poison_array[i].color, 1)
				}

				maskFooter();

				with(player_id){
    				shader_start();
				}	
	
			}
		
		
		draw_sprite_ext(poison_array[i].sprite_index, poison_array[i].image_index, poison_array[i].x, poison_array[i].y, 1, 1, 0, poison_array[i].color, poison_array[i].alpha);
	}
    
}

#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskMidder
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}