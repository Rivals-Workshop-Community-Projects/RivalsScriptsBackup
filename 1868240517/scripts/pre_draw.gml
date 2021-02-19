// pre-draw

if (code_3 || (player_color == 1 && code_4)) with obj_article3 {
    if player_id == other.id && color_sprite != 0 draw_sprite_ext(color_sprite,im_dex,x,y,1,1,0,other.color_hsv,image_alpha);
}
shader_start();

if nspec_vfx_timer > 0 {
    var target_overlay_color = c_white;
    
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white, false);
    draw_set_alpha(1);
    draw_sprite_ext(nspec_vfx_spr,nspec_vfx_index,nspec_vfx_x,nspec_vfx_y,spr_dir,1,image_angle,c_white,nspec_vfx_timer/nspec_vfx_time_max);
    
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
    //draw_sprite_ext(sprite_index,image_index,nspec_vfx_x,nspec_vfx_y,spr_dir,1,image_angle,c_white,target_alpha);
    draw_rectangle_colour(0,0, room_width,room_height, energy_clr[player_color], energy_clr[player_color], energy_clr[player_color], energy_clr[player_color], false);
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    outline_color = [color_get_red(energy_clr[player_color])*nspec_vfx_timer/nspec_vfx_time_max,color_get_green(energy_clr[player_color])*nspec_vfx_timer/nspec_vfx_time_max,color_get_blue(energy_clr[player_color])*nspec_vfx_timer/nspec_vfx_time_max];
    nspec_vfx_timer--;
} else outline_color = [0,0,0];
if flight_old_timer > 0 {
    outline_color = [color_get_red(energy_clr[player_color])*flight_old_timer/flight_old_time,color_get_green(energy_clr[player_color])*flight_old_timer/flight_old_time,color_get_blue(energy_clr[player_color])*flight_old_timer/flight_old_time];
    flight_old_timer--;
} else outline_color = [0,0,0];
shader_end();


