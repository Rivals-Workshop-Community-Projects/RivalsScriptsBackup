var spawn = "none";

switch my_hitboxID.attack {
    case AT_USTRONG:
    case AT_DSPECIAL:
        if my_hitboxID.attack == AT_DSPECIAL and my_hitboxID.hbox_num != 2 break;
        
        hit_player_obj.black_sil = hit_player_obj.hitstop;
        sound_play(asset_get("sfx_blow_heavy2"))
    break;
    case AT_FSTRONG:
        if my_hitboxID.hbox_num != 6 spawn = "fire";
    break;
    case AT_DSTRONG:
        spawn = "big";
    break;
    case AT_DTILT:
        spawn = (my_hitboxID.hbox_num == 2) ? "big" : "med";
    break;
    case AT_DATTACK:
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
     
    break;
    case AT_UTILT:
        spawn = (my_hitboxID.hbox_num == 1) ? "big" : "med";
    break;
    case AT_NAIR:
        if (my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 3)
        {
            spawn = "small"
        }
        else if (my_hitboxID.hbox_num == 2)
        {
            spawn = "big";
        }
        else if (my_hitboxID.hbox_num == 4)
        {
            spawn = "med";
        }
    break;
    case AT_DAIR:
        old_vsp = -4;
        spawn = (my_hitboxID.hbox_num == 1) ? "big" : "med";
    break;
    case AT_FAIR:
    case AT_UAIR:
        spawn = (my_hitboxID.hbox_num == 3) ? "big" : "med";
    break;
    case AT_NSPECIAL:
        if my_hitboxID.hbox_num == 1
        {
            //print(my_hitboxID.owner)
            
            with my_hitboxID.owner
            {
                state = 1;
                state_timer = 0;
                lock_state = true;
            }
        }
    break;
}

var coords = [lerp(my_hitboxID.x, hit_player_obj.x, 0.5), lerp(my_hitboxID.y, hit_player_obj.y - (hit_player_obj.char_height/2), 0.5)];

switch (spawn)
{
    case "small":
        var t = spawn_hit_fx(coords[0],coords[1],hit_sprites[0]);
        t.depth = depth-3;
    break;
    case "big":
        var t = spawn_hit_fx(coords[0],coords[1],hit_sprites[2]);
        t.depth = depth-3;
    break;
    case "med":
        var t = spawn_hit_fx(coords[0],coords[1],hit_sprites[1]);
        t.depth = depth-3;   
    break;
    case "fire":
        var t = spawn_hit_fx(coords[0],coords[1],fire_fx);
        t.depth = depth-3;  
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

