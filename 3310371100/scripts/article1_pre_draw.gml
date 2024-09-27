//USHR ARTICLE1 PREDRAW

/*
var closest = instance_nearest(x, y, asset_get("par_block"));
	draw_debug_text( get_instance_x(closest), get_instance_y(closest), "BLOCK IS HERE BLOCK IS HERE" )
*/

var testa = applied_player_id.ushr_rainclouded_timer / applied_player_id.ushr_rainclouded_timer_max
//print("test test = "+string(testa))
var tmp_width = 100*testa;



var icemode_i = 0;
if (is_iced){
	icemode_i = 1 + ice_timer * 5 / ice_timer_max;
}

var y_offset = 20;
var scale_calc = rain_bottom_dist+y_offset
//if (y-y_offset<player_id.cloud_y_limit){
draw_sprite_ext( sprite_get("raincloud_area"), 0, x, y-y_offset, 2*testa, scale_calc, 0, -1, 0.4 )
//}

//What
//draw_sprite_part_ext(sprite, subimg, left, top, width, height, x, y, xscale, yscale, colour, alpha);

shader_end();
maskHeader();

draw_sprite_ext( sprite_get("raincloud_area"), 0, x, y-y_offset, 2*testa, scale_calc, 0, -1, 0.5 )

maskMidder();

if (rain_wait>0){
	rain_wait--;
}
if (rain_wait==0){
	var y_offset = get_gameplay_time()%20*8;
	draw_sprite_tiled_ext(sprite_get("raincloud_rain"), 0, 0, y_offset, 2, 2, -1, 1*(1-icemode_i));
	if (is_iced){
		draw_sprite_tiled_ext(sprite_get("raincloud_rain"), 0+icemode_i, 0, 0, 2, 2, -1, 1);
	}
}

/*
var scale_calc = rain_bottom_dist
var y_offset = get_gameplay_time()%20*10;
for (var i=-1; i < rain_bottom_dist/200; i+=1){
	//draw_sprite_part_ext(sprite_get("raincloud_rain"), 0,  0, 0+((200-y_offset)*( (i==-1)?1:0 )),  200, 200+((y_offset)*( (i==-1)?1:0 )), x-100, y+(i*200)+y_offset, 2, 2, -1, 1);
	draw_sprite_part_ext(sprite_get("raincloud_rain"), 0,  0, 0,  200, 200+((y_offset)*( (i==-1)?1:0 )), x-100, y+(i*200)+y_offset, 2, 2, -1, 1);
	//draw_sprite_ext( sprite_get("raincloud_rain"), 0, x, y, 2, scale_calc, 0, -1, 1 )
	print("should b runnin: "+string(rain_bottom_dist/200)+" - "+string(i)+" - "+string(y_offset))
}*/

maskFooter();



draw_sprite_ext( sprite_get("raincloud"), 0+sign(icemode_i), x, y, 2, 2, 0, -1, 0.6 )
//draw_sprite_ext( sprite_get("raincloud"), 0, x, y, 2, 2, 0, -1, 1 )

//HITBOX
if (get_match_setting( SET_HITBOX_VIS )){
	if (rain_bottom_dist>3){
		draw_set_alpha(0.5);
		draw_rectangle_colour(x-round(tmp_width/2), y, x+round(tmp_width/2), y+rain_bottom_dist, c_blue, c_blue, c_blue, c_blue, false);
		draw_set_alpha(1);
	}
}



//================================================================================
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
if instance_number(oTestPlayer) > 0 {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);
}
