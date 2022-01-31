//article3_update

if (!init_) {
    init_ = 1;
    //first-spawn events
    with player_id {
        other.player_color = get_player_color(player);
        other.player_code3 = code_3;
        other.player_code4 = code_4;
    }
    switch type {
        case 0:
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
        break;
        default:
            sprite_index = sprite_get("penut");
            image_alpha = 1;
            state_timer = floor(hsp*10+10);
        break;
        //sprite_index = sprite_get("confetti")
    }
    
}


switch type {
    case 0:
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
        break;
    default:
        
        if type != 1 {
            if has_rune("L") {
                if !instance_exists(hbox) {
                    switch type-2 {
                        case 2:
                            confetti_grav = .1;
                            break;
                    }
                    hbox = create_hitbox(AT_TAUNT,type-2,x,y);
                } else {
                    hbox.x = x;
                    hbox.y = y;
                }
            }

            sprite_index = sprite_get("items");
            // print_debug(string((type-2) % image_number));
        }
        image_index = type-2;
        image_angle = (floor(state_timer/4) % 8)*45;
        depth = -10;
        
        vsp += confetti_grav;
        state_timer++;
        if state_timer > alive_time {
            instance_destroy();
            exit;
        }
        break;
    
    }
    