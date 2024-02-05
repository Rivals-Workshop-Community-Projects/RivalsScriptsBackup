/*var j = 0;
repeat(floor(point_distance(0, y, 0, room_height)/30)+1){
    draw_set_alpha(0.5);
    draw_rectangle_color(x - j*10 - 4, y + j*30, x + j*10 + 4, y + 30 + j*30, c_red, c_red, c_red, c_red, 0);
    draw_set_alpha(1);
    j++;
}*/
maskHeader()
maskMidder();
maskFooter();
var alt = (player_id.alt_cur? player_id.alt_cur: 32);
var col = make_color_rgb(get_color_profile_slot_r(alt, 1), get_color_profile_slot_g(alt, 1), get_color_profile_slot_b(alt, 1));

var len = floor(point_distance(0, y, 0, room_height)/30);
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(x - 8*len, y + len*30, col, 0);
draw_vertex_color(x, y, col, radar_alpha/3);
draw_vertex_color(x + 8*len, y + len*30, col, 0);
draw_primitive_end();

maskHeader();
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(x - 8*len, y + len*30, c_white, 0);
draw_vertex_color(x, y, c_white, radar_alpha/3);
draw_vertex_color(x + 8*len, y + len*30, c_white, 0);
draw_primitive_end();
maskMidder();
draw_sprite_tiled_ext(sprite_get("vfx_drone_reticle"), 0, 0, get_gameplay_time(), 2, 2, (col = c_black? c_dkgray: col), 1);
maskFooter();

#define maskHeader()

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);


#define maskMidder()

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);


#define maskFooter()

if player_id.object_index = oTestPlayer{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);