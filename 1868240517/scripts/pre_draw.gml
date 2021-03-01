// pre-draw

if (code_3 || (player_color == 1 && code_4)) with obj_article3 {
    if player_id == other.id && color_sprite != 0 draw_sprite_ext(color_sprite,im_dex,x,y,1,1,0,other.color_hsv,image_alpha);
}
shader_start();

if nspec_vfx_timer > 0 {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white, false);
    draw_set_alpha(1);
    draw_sprite_ext(nspec_vfx_spr,nspec_vfx_index,nspec_vfx_x,nspec_vfx_y,spr_dir*2,2,image_angle,c_white,nspec_vfx_timer/nspec_vfx_time_max);
    
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
    //draw_sprite_ext(sprite_index,image_index,nspec_vfx_x,nspec_vfx_y,spr_dir,1,image_angle,c_white,target_alpha);
    draw_rectangle_colour(0,0, room_width,room_height, energy_clr[player_color], energy_clr[player_color], energy_clr[player_color], energy_clr[player_color], false);
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    //outline_color = [color_get_red(energy_clr[player_color])*nspec_vfx_timer/nspec_vfx_time_max,color_get_green(energy_clr[player_color])*nspec_vfx_timer/nspec_vfx_time_max,color_get_blue(energy_clr[player_color])*nspec_vfx_timer/nspec_vfx_time_max];
    nspec_vfx_timer--;
} //else outline_color = [0,0,0];
if flight_old_timer > 0 {
    //outline_color = [color_get_red(energy_clr[player_color])*flight_old_timer/flight_old_time,color_get_green(energy_clr[player_color])*flight_old_timer/flight_old_time,color_get_blue(energy_clr[player_color])*flight_old_timer/flight_old_time];
    flight_old_timer--;
} //else outline_color = [0,0,0];
shader_end();
if got_gun < got_gun_max {
    got_gun++;
    var c = get_player_color(player);
    var col = make_color_rgb(get_color_profile_slot_r(c, 0), get_color_profile_slot_g(c, 0), get_color_profile_slot_b(c, 0));
    var ds = 2;
    gpu_set_fog(1,col,-1000,0);
    draw_sprite_ext(sprite_index,image_index,x-ds,y,spr_dir*2,image_yscale*2,image_angle,c_black,1-got_gun/got_gun_max);
    draw_sprite_ext(sprite_index,image_index,x+ds,y,spr_dir*2,image_yscale*2,image_angle,c_black,1-got_gun/got_gun_max);
    draw_sprite_ext(sprite_index,image_index,x,y-ds,spr_dir*2,image_yscale*2,image_angle,c_black,1-got_gun/got_gun_max);
    draw_sprite_ext(sprite_index,image_index,x,y+ds,spr_dir*2,image_yscale*2,image_angle,c_black,1-got_gun/got_gun_max);
    gpu_set_fog(0,c_yellow,0,0);
}

if (state == 5 || state == 6) {
    if (attack == AT_USPECIAL && window == 1) || (attack == AT_DSTRONG && window == 2) {
        /*gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false,false,false,true);
        draw_set_alpha(0);
        draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white, false);
        draw_set_alpha(1);*/
        var c = get_player_color(player);
        var col = make_color_rgb(get_color_profile_slot_r(c, 0), get_color_profile_slot_g(c, 0), get_color_profile_slot_b(c, 0));
        var ds = 2;
        var alpha = 1;
        gpu_set_fog(1,col,-1000,0);
        draw_sprite_ext(sprite_index,image_index,x-ds,y,spr_dir*2,image_yscale*2,image_angle,c_black,alpha);
        draw_sprite_ext(sprite_index,image_index,x+ds,y,spr_dir*2,image_yscale*2,image_angle,c_black,alpha);
        draw_sprite_ext(sprite_index,image_index,x,y-ds,spr_dir*2,image_yscale*2,image_angle,c_black,alpha);
        draw_sprite_ext(sprite_index,image_index,x,y+ds,spr_dir*2,image_yscale*2,image_angle,c_black,alpha);
        draw_sprite_ext(sprite_index,image_index,x-ds,y+ds,spr_dir*2,image_yscale*2,image_angle,c_black,alpha);
        draw_sprite_ext(sprite_index,image_index,x+ds,y+ds,spr_dir*2,image_yscale*2,image_angle,c_black,alpha);
        draw_sprite_ext(sprite_index,image_index,x-ds,y-ds,spr_dir*2,image_yscale*2,image_angle,c_black,alpha);
        draw_sprite_ext(sprite_index,image_index,x+ds,y-ds,spr_dir*2,image_yscale*2,image_angle,c_black,alpha);
        
        gpu_set_fog(0,c_yellow,0,0);
        /*draw_sprite_ext(sprite_index,image_index,x-2,y+2,spr_dir,1,image_angle,c_white,alpha);
        draw_sprite_ext(sprite_index,image_index,x+2,y+2,spr_dir,1,image_angle,c_white,alpha);
        draw_sprite_ext(sprite_index,image_index,x+2,y-2,spr_dir,1,image_angle,c_white,alpha);
        draw_sprite_ext(sprite_index,image_index,x-2,y+2,spr_dir,1,image_angle,c_white,alpha);*/
        
        /*gpu_set_blendenable(true);
        gpu_set_colorwriteenable(true,true,true,true);
        
        gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
        gpu_set_alphatestenable(true);
        //draw_sprite_ext(sprite_index,image_index,nspec_vfx_x,nspec_vfx_y,spr_dir,1,image_angle,c_white,target_alpha);
        draw_rectangle_colour(0,0, room_width,room_height, energy_clr[player_color], energy_clr[player_color], energy_clr[player_color], energy_clr[player_color], false);
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);*/
    } 
}



