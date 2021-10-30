
//ice clock hand for frozen opponent
if("is_frozen" in self && "spr_iceclock_hand" in other_player_id){
    if(is_frozen){
        with (other_player_id) { shader_start(); }
        
        //minute hand shows frozen time
        draw_sprite_ext( other_player_id.spr_iceclock_hand, 0, x, y - (char_height/2),
        2, 2, (other_player_id.frozen_timer * (360/other_player_id.freeze_max)), c_white, 0.8 );
        
        //hour hand shows direction of travel
        
        //i couldnt do the math and am kinda lazy so im not doing this
        /*var unfreeze_dir = point_distance(x, y, (x - store_hsp), (y + store_vsp));
        draw_sprite_ext( other_player_id.spr_iceclock_hour_hand, 0, x, y - (char_height/2),
        2, 2, unfreeze_dir - 90, c_white, 0.6 );*/
        
        with (other_player_id) { shader_end(); }
    }
}

//fspec stun visual
if("fspec_fog_timer" in other_player_id && other_player_id.fspec_fog_timer > 0 && self == other_player_id.hit_player_obj){
    var ice_color = make_colour_rgb(other_player_id.col_R, other_player_id.col_G, other_player_id.col_B);
    gpu_set_fog(true,ice_color,0,1);
    if(other_player_id.fspec_fog_timer < 15){
        var temp_alpha = other_player_id.fspec_fog_timer/15;
    }else{
        var temp_alpha = 1;
    }
    
    draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites) * spr_dir, 1 + small_sprites, 0, ice_color, temp_alpha );
    
    gpu_set_fog(false,c_white,0,0);
}

//ustrong smear is drawn here for some reason
with(other_player_id){
    
    if(attack == AT_USTRONG ){
        if(sprite_index == sprite_get("ustrong") && image_index > 10 && image_index < 18){
            shader_start();
            var ustrong_smear = draw_sprite_ext(sprite_get("ustrong_smear"),
                image_index - 11, x, y, spr_dir, 1, 0, c_white, 1);
            shader_end();
        }
    }
    
}