switch my_hitboxID.attack {
    case AT_DATTACK:
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
     
    break;
    case AT_DAIR:
        old_vsp = -vsp
    break;
    case AT_NSPECIAL:
        if my_hitboxID.hbox_num == 1
        {
            with nspecial_projectile
            {
                state = 1;
                state_timer = 0;
                lock_state = true;
            }
        }
    break;
}
//Sound Layering code: I will look back here and make adjustments when the rest of his moves are completed)

//if my_hitboxID.damage <= 2 {
//       sound_play(asset_get("sfx_absa_singlezap2"),false,noone, 0.6 + my_hitboxID.damage/20 )
//}

//if my_hitboxID.damage <= 3 and my_hitboxID.damage > 2 {
//    sound_play(asset_get("sfx_absa_harderhit"))
//    sound_play(asset_get("sfx_ori_energyhit_weak"))
//}

//if my_hitboxID.damage <= 9 and my_hitboxID.damage > 3 {
//       sound_play(asset_get("sfx_ori_spirit_flame_hit_2"))
//       sound_play(asset_get("sfx_boss_laser_hit"))    
//}

//if my_hitboxID.damage > 9 {
//     sound_play(asset_get("sfx_ori_energyhit_heavy"))              
//     sound_play(asset_get("sfx_abyss_explosion_big"))
//}

