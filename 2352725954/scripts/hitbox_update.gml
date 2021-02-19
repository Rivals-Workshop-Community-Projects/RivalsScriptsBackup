//hitbox_update

switch (attack){
    case AT_NSPECIAL:
        if(orig_player == player_id.player){ //rock check
            draw_timer_timer++;
            if(draw_timer_timer >= 4){
                draw_timer_timer = 0;
                draw_timer++;
            }
            if(draw_timer > 4){
                draw_timer = 0;
            }
        }
        break;
    
    case AT_FSPECIAL:
        player_id.move_cooldown[player_id.AT_FSPECIAL_3] = 30;
        if(!free){
            destroyed = true;
        }
        if(hbox_num == 2){
            switch (hitbox_timer){
        
                case 16:
                   custom_friction = 0.05;
                   break;
                case 36:
                    kb_angle = 130
                    break;
             
                case 56:
                    custom_friction = 0;
                    break;
                
            }
            if(custom_friction != 0){
                hsp -= (max_hsp * custom_friction);
                vsp -= (max_vsp * custom_friction);
            }
            if(hitbox_timer % 9 == 0 && hit_priority > 0){
                for (var i = 0; i < 20; i++){
                    can_hit[i] = 1;
                }
            }
        }
        break;
    
    case AT_TAUNT:
        if(place_meeting(x, y, asset_get("par_block"))){
            destroyed = true;
        }
        if(player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT && 
        player_id.window == 2 && player_id.window_timer == 25){
            destroy_fx = 1;
            destroyed = true;
        }
        break;
}