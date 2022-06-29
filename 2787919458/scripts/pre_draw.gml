//Credit to Bar-Kun, Frtoud, and Mr. Nart!
if(trail_draw_size > 1)
{
    gpu_set_blendmode(bm_add);
    gpu_set_fog(1,GetColourPlayer(7),0,1);
    for(var l = trail_draw_size-1; l > 0; l -= 2)
    {
        var pos = (trail_cur_num + l) % trail_total_size;
        
        draw_sprite_ext(
            trail_pos[pos].sprite,
            trail_pos[pos].subimg,
            floor(trail_pos[pos].x),
            floor(trail_pos[pos].y),
            trail_pos[pos].xscale*(small_sprites+1)*spr_dir,
            trail_pos[pos].yscale+1,
            trail_pos[pos].rot,
            trail_pos[pos].col,
            0.75 * (trail_draw_size - 1) / trail_total_size
            );
    }
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_blendmode(bm_normal);
}

with(pHitBox){
    if(player_id == other && attack == AT_NSPECIAL && hbox_num == 1 && hit_priority > 0){
        gpu_set_fog(1, get_player_hud_color(player), 0, 1);
    	draw_sprite_ext(sprite_index, image_index, x+2, y+2, spr_dir, 1, proj_angle, c_white, 1);
    	draw_sprite_ext(sprite_index, image_index, x-2, y+2, spr_dir, 1, proj_angle, c_white, 1);
    	draw_sprite_ext(sprite_index, image_index, x-2, y-2, spr_dir, 1, proj_angle, c_white, 1);
    	draw_sprite_ext(sprite_index, image_index, x+2, y-2, spr_dir, 1, proj_angle, c_white, 1);
    	gpu_set_fog(false, c_white, 1, 1);
    }
}

// input the shade slot index
// outputs the colour of the shade slot of the current alt
#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
} // lukaru