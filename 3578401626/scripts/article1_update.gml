//no. 1 article updating

state_timer ++
hoop_image += image_go;


//states
if (vsp > 0.05){
    vsp /= 1.5;
} else
    if (state == 0){
        vsp = 0;
        state = 1;
        state_timer = 0;
    }

if (hsp != 0){
    hsp = clamp(hsp - sign(hsp) * 0.3, (sign(hsp) - 1) * 30, (sign(hsp) - 1) * 30);
}
    
if (player_id.attack == AT_USPECIAL && player_id.attacking_now == 2 && player_id.window_timer == 1){
    hoop_count -= 1;
}

if (state == 1){
    
    if (image_go > 0.25){
        image_go -= 0.01;
    }
    
    if (bounces_left <= 0){
        state = 2;
        state_timer = 0;
    }
    
    if (size > size_next){
        size -= 0.1
    }
    
    if (size < size_next){
        size += 0.1
    }
    
    if (size = size_next){
        if (size > 1){
            size_next = 0.8;
        }
    }
    
    if (size = size_next){
        if (size < 1){
            size_next = 1;
        }
    }
    
    if (instance_place(x, y, oPlayer) > 0 && bounce_cool == 0){
        touched_player = instance_place(x, y, oPlayer);
        if (touched_player.y <= y + 30 && touched_player.vsp > 0 && touched_player.can_move == true && variable_instance_exists(touched_player, "is_balcone")){
            if (touched_player.hooped = 0){
            with (touched_player){
                if (other.bounces_left == 1){
                    vsp = -18;
                }   else{
                    vsp = -12 - 2.5 + other.bounces_left / 2;
                }
                hsp *= 1.25;
                y = other.y;
                x = other.x;
                djumps = 0;
                hooped = hooped_max;
                if (window == 0){
                    if (right_down - left_down != 0){
                        spr_dir = right_down - left_down;
                    }
                }
                if (attack == AT_FSPECIAL && attacking_now == 4){
                    window = 7;
                    window_timer = 0;
                }
            }
            bounces_left -= 1;
            if (bounces_left == 0){
                sound_play(asset_get("sfx_bounce"), false, false, 3, 1.25 - bounces_left / 5);
            } else{
                sound_play(asset_get("sfx_bounce"), false, false, 1, 2 - bounces_left / 5);
            }
            image_go = 1;
            size_next = 1.2;
            size = 1.2
        }
        }
    }
}

if (state == 2){
    image_go += 0.05;
}

if (hoop_count == 0 || player_id.state == PS_RESPAWN || player_id.state == PS_DEAD || state == 2){
    if (state != 3){
        state = 3;
        state_timer = 0;
    }
}

if (state == 3){
    if (image_go > 0){
        image_go -= 0.1;
    }
    size -= 0.1;
    if (state_timer == 10){
        instance_destroy(backhoop);
        instance_destroy();
    }
}
