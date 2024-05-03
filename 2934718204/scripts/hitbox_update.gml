//hitbox_update

switch attack {
    case AT_NSPECIAL:
    if hbox_num == 1 {
        proj_angle -= spr_dir*20
        if hitbox_timer == 20 || has_hit || place_meeting(x, y, asset_get("par_block")) {
            if !was_parried {
                var barb = instance_create(x, y, "obj_article1")
                    barb.image_angle = 90*(player_id.timer mod 4)
                    barb.spr_dir = spr_dir
                instance_destroy();
            } else {
                destroyed = true
            }
            
            
            exit;
        }
    }
    if hbox_num == 2 {
        if has_hit {
            destroyed = true;
            with obj_article1 if player_id == other.player_id && id != other.id {
                die = true
            }
        }
    }
    break;
    
    case AT_USPECIAL:
    if hbox_num == 1 {
        if (sqrt(power(hsp,2)+power(vsp,2)) <= 1) && !(hsp == 0 && vsp == 0) {
            //print('a')
            can_grapple = false
            
            extra_hitpause = 0
            kb_angle = 120
            kb_value = 4
        }
        
        if player_id.window == 3 || player_id.window == 4 {
            hsp = init_hsp*dcos(hitbox_timer*4)
            vsp = init_vsp*dcos(hitbox_timer*4)
            
            if place_meeting(x, y, asset_get("par_block")) || (has_hit_player && player_id.hit_player_obj.state == PS_HITSTUN) || manual_hit {
                if can_grapple {
                    hsp = 0
                    vsp = 0
                    player_id.window = 6
                    player_id.window_timer = 0
                    if place_meeting(x, y, asset_get("par_block")) {
                        sound_play(asset_get("sfx_shovel_hit_med2"))
                        spawn_hit_fx(x, y, 305)
                    }
                }
            }
        }
        
        
        
        if abs(hsp) >= abs(init_hsp) {
            destroyed = true
            player_id.window = 5
            player_id.window_timer = 0
        }
        
        if player_id.window == 8 || player_id.window == 9 {
            destroyed = true
            if place_meeting(x, y, asset_get("par_block")) {
                sound_play(asset_get("sfx_ori_stomp_spin"))
            }
        }
        
        if !(player_id.state_attacking && player_id.attack == AT_USPECIAL) {
            destroyed = true
        } 
    }
    break;
}