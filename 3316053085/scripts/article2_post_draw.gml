//article2_post_draw.gml
//garden of eden mask

var mask_width = sprite_get_width(sprite_index)*size/2;
var mask_height = sprite_get_height(sprite_index)*size/2;
var cam_x = view_get_xview()-200; // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
var cam_y = view_get_yview()-200; // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
var cam_w = view_get_xview()+view_get_wview()+200; // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
var cam_h = view_get_yview()+view_get_hview()+200; // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).

for (var i = 0; i < 4; i++)
{
    maskHeader();
    draw_sprite_ext(
        sprite_get(`fx_od_garden_bg${i + 1}`), layer_data[i][0] * player_id.game_time,
        lerp(view_get_xview() + view_get_wview()/2, x, layer_data[i][1]), // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
        lerp(view_get_yview() + view_get_hview()/2, y, layer_data[i][2]), // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
        2, 2, 0, c_white, 1
    );
    gpu_set_blendenable(true);
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);

    draw_set_alpha(0);
    draw_rectangle_color(cam_x, cam_y, x + mask_width - 1, y - mask_height - 1, c_black, c_black, c_black, c_black, false);
    draw_rectangle_color(cam_w, cam_y, x + mask_width - 1, y + mask_height - 1, c_black, c_black, c_black, c_black, false);
    draw_rectangle_color(cam_w, cam_h, x - mask_width - 1, y + mask_height - 1, c_black, c_black, c_black, c_black, false);
    draw_rectangle_color(cam_x, cam_h, x - mask_width - 1, y - mask_height - 1, c_black, c_black, c_black, c_black, false);
    
    draw_sprite_ext(sprite_index, 0, x, y, size, size, 0, c_white, 1);
    maskMidder();
    draw_sprite_ext(
        sprite_get(`fx_od_garden_bg${i + 1}`), layer_data[i][0] * player_id.game_time,
        lerp(view_get_xview() + view_get_wview()/2, x, layer_data[i][1]), // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
        lerp(view_get_yview() + view_get_hview()/2, y, layer_data[i][2]), // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
        2, 2, 0, c_white, 1
    );
    maskFooter();
}


#define maskHeader
{
    //set the mask to take effect on pretty much everything in the room
    //below this function, add the MASK
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
}
#define maskMidder
{
    //sets the thing underneath the mask to be drawn
    //below this function, add the TEXTURE
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true, true, true, true);
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
#define maskFooter
{
    //go back to drawing normally again
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}