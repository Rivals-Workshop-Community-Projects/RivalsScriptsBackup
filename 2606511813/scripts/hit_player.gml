//hit-player

switch my_hitboxID.attack {
    case AT_FTHROW:
    if my_hitboxID.hbox_num == 3 with pHitBox {
        if player_id == other.id && attack == AT_FTHROW && hbox_num == 1 {
            x -= 30*spr_dir;
            destroyed = true;
        }
    }
    /*
    if my_hitboxID.hbox_num == 1 {
        var fx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height/2, vfx_reticle_large)
            fx.depth = -10
    }
    */
    break;
}

if echo {
    if my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num == 1 {
        hit_player_obj.triggers_kill_effect = true;
    } else {
        hit_player_obj.triggers_kill_effect = false;
    }
    
    if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num != 4 {
        hit_player_obj.should_make_shockwave = false;
    }
}