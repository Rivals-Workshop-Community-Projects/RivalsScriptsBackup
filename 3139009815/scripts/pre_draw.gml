shader_start();



//I am gosh dang sure there is a better way to do this
// switch (lantern_level){
//     case 1:
//     lantern_flame = sprite_get("lantern_flame_1");
//     break;
//     case 2:
//     lantern_flame = sprite_get("lantern_flame_2");
//     break;
//     case 3:
//     lantern_flame = sprite_get("lantern_flame_3");
//     break;
// }

// BEHOLD! a better way to do this
// consider this a gift from your ol' pal barney
lantern_flame = sprite_get("lantern_flame_" + string(clamp(lantern_level, 1, 3))); 
// thank you barney :)

//draws the lantern...
if using_lantern_move == false && !nspecial_lantern_active {
    draw_sprite(lantern_flame, lantern_anim_timer*idle_anim_speed, lantern_x, lantern_y);
    draw_sprite(lantern, 1, lantern_x, lantern_y);
}

//unless he's using one of these moves
switch (attack){
    case AT_DSTRONG:
    case AT_FTILT:
    case AT_DSPECIAL:
    case AT_NSPECIAL:
    case AT_BAIR:
        if (state) == PS_ATTACK_GROUND || (state) == PS_ATTACK_AIR{
            using_lantern_move = true; 
            lantern_x = x
            lantern_y = y - char_height/2
        }else{
            using_lantern_move = false; 
        }
    break;
    
    default:
        using_lantern_move = false; 
    break;
}
// or doing this!
if state == PS_PARRY {
    using_lantern_move = true; 
    lantern_x = x
    lantern_y = y - char_height/2
}



with (pHitBox) {
    // drawing the cable to the knife
    if player_id == other && hbox_num == 1 && attack == AT_FSPECIAL {
        var player_origin_x = player_id.x + (5 * player_id.spr_dir);
        var player_origin_y = player_id.y - 35;
        var knife_dir = point_direction(player_origin_x, player_origin_y, x, y);
        var knife_dist = point_distance(player_origin_x, player_origin_y, x, y);
        draw_sprite_ext(sprite_get("white_pixel"), 0, player_origin_x, player_origin_y, knife_dist, 2, knife_dir, c_white, 1);
    }

    // drawing soul trail
    if player_id == other && hbox_num == 3 && attack == AT_JAB {
        if "soul_last_positions_x" in self {
            var trail_length = array_length_1d(soul_last_positions_x)
            for (i=0; i < trail_length; i++) {
                var trail_x = soul_last_positions_x[i]
                var trail_y = soul_last_positions_y[i]
                if point_distance(x, y, trail_x, trail_y) < 16 {
                    continue
                }
                var trail_scale = draw_xscale
                var trail_opacity = i / trail_length
                var trail_sprite_index = floor(trail_opacity * player_id.soul_trail_sprite_count)
                draw_sprite_ext(sprite_get("soul_trail"), trail_sprite_index, trail_x, trail_y, trail_scale, trail_scale, 0, c_white, 1)
            }
        }
    }
}

if soul_trail_temp_length > 0 {
    for (i=0; i < soul_trail_temp_length; i++) {
        var trail_x = soul_trail_temp_x[i]
        var trail_y = soul_trail_temp_y[i]
        var trail_scale = soul_trail_temp_scale
        var trail_opacity = i / soul_trail_temp_length
        var trail_sprite_index = floor(trail_opacity * soul_trail_sprite_count)
        draw_sprite_ext(sprite_get("soul_trail"), trail_sprite_index, trail_x, trail_y, trail_scale, trail_scale, 0, c_white, 1)
    }
}

// drawing the install phantom
if install_timer > 0 && (install_timer_max - install_timer) > install_phantom_delay && install_phantom_sprite != -1{

    var afterimage_offset = install_afterimage_offset_min + random_func(17, install_afterimage_offset_max - install_afterimage_offset_min, false)

    if !instance_exists(oTestPlayer) { // playtest mode check cuz this visual breaks there :(

        shader_end();

        var player_skin = get_player_color(player);
        var phantom_colour = make_colour_rgb(
            get_color_profile_slot_r(player_skin, install_phantom_skin_index),
            get_color_profile_slot_g(player_skin, install_phantom_skin_index),
            get_color_profile_slot_b(player_skin, install_phantom_skin_index)
        );
        var afterimage_colour = make_colour_rgb(
            get_color_profile_slot_r(player_skin, install_afterimage_skin_index),
            get_color_profile_slot_g(player_skin, install_afterimage_skin_index),
            get_color_profile_slot_b(player_skin, install_afterimage_skin_index)
        );

        // colouring sprites like this requires some GPU bullshit
        // but it's so worth it

        gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false, false, false, true);

        draw_sprite_ext( asset_get("empty_sprite"), 0, view_get_xview() - 50, view_get_yview() - 50, view_get_wview() + 50, view_get_hview() + 50, 0, c_white, 0 ); 
        draw_sprite_ext(install_phantom_sprite, install_phantom_frame, install_phantom_x, install_phantom_y, install_phantom_spr_dir, 1, install_phantom_rotation, c_black, install_phantom_alpha);
            
        gpu_set_blendenable(true);
        gpu_set_colorwriteenable(true, true, true, true);
        gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
        gpu_set_alphatestenable(true);
        
        draw_sprite_tiled_ext( install_background_sprite, install_background_anim_timer, 0, 0, 1, 1, phantom_colour, 1 ); 
        
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);

        // repeating the gpu bullshit a few times to get it to behave
        // this may be a tad expensive, but it should be fine
        for (i=0; i<2; i++) {
            gpu_set_blendenable(false);
            gpu_set_colorwriteenable(false, false, false, true);

            draw_sprite_ext( asset_get("empty_sprite"), 0, view_get_xview() - 50, view_get_yview() - 50, view_get_wview() + 50, view_get_hview() + 50, 0, c_white, 0 ); 
            draw_sprite_ext(sprite_index, image_index, x + (afterimage_offset * (2 * (i-0.5))), y, spr_dir, 1, spr_angle, c_black, install_afterimage_alpha);
                
            gpu_set_blendenable(true);
            gpu_set_colorwriteenable(true, true, true, true);
            gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
            gpu_set_alphatestenable(true);
            
            draw_sprite_tiled_ext( install_background_sprite, install_background_anim_timer, 0, 0, 1, 1, phantom_colour, 1 ); 
            
            gpu_set_alphatestenable(false);
            gpu_set_blendmode(bm_normal);
        }

    } else {
        draw_sprite_ext(sprite_index, image_index, x - afterimage_offset, y, spr_dir, 1, spr_angle, c_white, install_afterimage_alpha);
        draw_sprite_ext(sprite_index, image_index, x + afterimage_offset, y, spr_dir, 1, spr_angle, c_white, install_afterimage_alpha);
        draw_sprite_ext(install_phantom_sprite, install_phantom_frame, install_phantom_x, install_phantom_y, install_phantom_spr_dir, 1, install_phantom_rotation, c_white, install_phantom_alpha * 0.8);
    }
}

shader_end();