//article3_update

if (init == 0) {
    init = 1;
    //first-spawn events
    
    with player_id {
        other.player_color = get_player_color(player);
        other.player_code3 = code_3;
        other.player_code4 = code_4;
    }
    image_index = 0;
    if player_color == 1 && player_code4 color_sprite = sprite_get("chthruster_desat_vfx");
    if player_color == 3 sprite_index = sprite_get("thruster_vfx_g");
    //if player_color == 6 sprite_index = sprite_get("thruster_vfx_v");
    
    if player_code3 {
        color_sprite = sprite_get("thruster_desat_vfx");
        if player_color == 3 color_sprite = sprite_get("thruster_vfx_g_desat");
        //if player_color == 6 color_sprite = sprite_get("thruster_vfx_v_desat");
    }
    
    im_num = image_number;
    im_dex = image_index;
    if player_code3 || (player_color == 1 && player_code4) sprite_index = asset_get("empty_sprite");
    
    
}




if (state == 0) { //Animating
    if index_override == 0 {
        im_dex = ((state_timer*anim_speed)/build_time)*(im_num);
        if !player_code3 && player_code4 != 1 {
            image_index = im_dex;
        }
        if (im_dex == im_num) {
            if reverse == 0 {
                instance_destroy();
                exit;
            } else state = 2;
        }
    }
    state_timer++;
    //Custom Code Here
    hsp -= hsp/30;
    vsp -= vsp/30;
    
}


if (state == 2) {
    if index_override == 0 {
        image_index = ((state_timer*anim_speed)/build_time)*(image_number);
        state_timer--;
        if (state_timer*anim_speed == 0) {
            instance_destroy();
            exit;
        }
    } else {
        instance_destroy();
        exit;
    }
}
