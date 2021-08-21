// Post draw
if (land_dust_timer >= 0 && land_dust_timer < 24) {
    draw_sprite_ext(asset_get("fx_land_bg"), floor(image_number*(land_dust_timer - 0)/(image_number*3)),
    (x - 0*spr_dir), y, 2*spr_dir, 2, 0,
    make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 0), get_color_profile_slot_g(get_player_color(player), 0), get_color_profile_slot_b(get_player_color(player), 0)), 1);
}

// Cool code to fix later

// var i;
// var j = 0;
// Firecrackers[i] = 0;


// for (i = 0; i < instance_number(pHitBox); i += 1)
// {
//     var HitBox = instance_find(pHitBox,i);
    
//     if(HitBox.player_id == self && HitBox.attack == AT_NSPECIAL && HitBox.hbox_num == 1)
//     {
//         Firecrackers[i] = instance_find(pHitBox,i);
//         j++;
//     }
// }



// var k = 0;
// repeat(j)
// {
//     var color = (Firecrackers[k].hitbox_timer < (fc_lifetime * 0.8)) ? (Firecrackers[k].hitbox_timer < (fc_lifetime * 0.5)) ? c_white : c_yellow : c_red;
    
//     gpu_set_blendmode(bm_normal);
//     gpu_set_blendenable(false)
//     gpu_set_colorwriteenable(false,false,false,true);
//     draw_set_alpha(0);
//     draw_rectangle_color(0,0, room_width,room_height, color ,color,color,color,false);
    
//     draw_set_alpha(1);
//     draw_sprite_ext(Firecrackers[k].sprite_index,Firecrackers[k].image_index,Firecrackers[k].x,Firecrackers[k].y,Firecrackers[k].spr_dir*1.2,1.2,0,color,1);
//     gpu_set_blendenable(true);
//     gpu_set_colorwriteenable(true,true,true,true);
    
//     gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
//     gpu_set_alphatestenable(true);
//     draw_rectangle_color(0,0, room_width,room_height, color,color,color,color,false);
//     gpu_set_alphatestenable(false);
//     gpu_set_blendmode(bm_normal);
    
//     k++;

// }

user_event(12);