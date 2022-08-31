switch (state){
    case 0:
        image_index += 0.2
        
        if(player_id.image_index < 4){
            x = player_id.x+20*spr_dir;
            y = player_id.y
        }
        with(oPlayer){
            if(other.player_id == id){
                if(window == 3){
                    other.state = 2;
                    other.state_timer = 0;
                    other.image_index = 14;
                }
            }
        }
        if(image_index = 6){
                state = 1;
                state_timer = 0;
        }
    break;
    
    case 1:
        image_index += 0.3
        if(image_index >= 13){
            image_index = 6;
        }
        if(state_timer % 8 = 0){
            create_hitbox(AT_FSTRONG,1,x+65*spr_dir, y-40)
        }
        with(oPlayer){
            if(other.player_id == id){
                if(window == 3){
                    other.state = 2;
                    other.state_timer = 0;
                    other.image_index = 14;
                }
            }
        }
        
        if(hsp <= 9 && hsp >= -9){
            hsp += 0.1*spr_dir;
        }
    break;

    case 2:
        hsp *= 0.8
        if(image_index < 16){
            image_index += 0.2
        }else{
            image_index += 0.15
        }
        if(state_timer == 11){
            create_hitbox(AT_FSTRONG, 2, x+114*spr_dir, y-39)
        }
        if(state_timer > 38){
            instance_destroy();
            exit;
        }
    
}

if(player_id.state_cat == SC_HITSTUN && !interrupt && image_index < 18){
    state = 2;
    state_timer = 18;
    image_index = 18;
    interrupt = true;
}

state_timer++