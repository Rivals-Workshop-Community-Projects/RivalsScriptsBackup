//if (attack != AT_FSPECIAL){
//if combonum <= 4{
//if attack == AT_BAIR or attack == AT_UTILT{
//chaos += 3
//}else{
//chaos += 5
//}
//}else if combonum <= 9{
//if attack == AT_BAIR or attack == AT_UTILT{
//chaos += 5
//}else{
//chaos += 10
//    }
//}else{
//    if attack == AT_BAIR or attack == AT_UTILT{
//chaos += 10
//}else{
//chaos += 15
//    }
//}
//if combotimer > 0{
//    if attack == AT_BAIR or attack == AT_UTILT{
//    combonum +=1
//    }else{
// combonum += 2
//    }
//}
//}
//combotimer = 145

//if attack = AT_USPECIAL && my_hitboxID.hbox_num = 1 or attack = AT_DAIR{
//    if hit_player_obj.heartmarked = 1{
//    chaos += 80
//    hit_player_obj.heartmarked = 0
//    sound_play(sound_get("snd_swing"))
//        }
//}

//if my_hitboxID.attack = AT_NSPECIAL{
//    if hit_player_obj.heartmarked = 0 && hit_player_obj.clovermarked = 0 && hit_player_obj.spademarked = 0 && hit_player_obj.diamondmarked = 0{
//    if my_hitboxID.hbox_num = 1{
//    hit_player_obj.spademarked = 1
//    }
if attack != AT_FSTRONG{
sound_stop(sound_get("snd_swing"))
}

if my_hitboxID.attack = AT_FSPECIAL{
    if was_parried == 0{
    move_ready = 1
    free = 1
    window = 3 
    window_timer = 1
    hsp = fsp_vlc/3
    y = y-1

    }
    
}

if attack = AT_UTILT or attack = AT_NAIR or attack = AT_FAIR or attack = AT_DATTACK or attack = AT_JAB or attack = AT_DAIR or attack = AT_FSPECIAL or attack = AT_FSTRONG{
    if nspecial_ammo < 3{
        nspecial_ammo += 1
    }
}
pratfall_queued = 0
if attack = AT_FAIR{
    if my_hitboxID.hbox_num == 1{
sound_play(asset_get("sfx_blow_medium1"))
}else if my_hitboxID.hbox_num == 3{
 sound_play(asset_get("sfx_blow_weak1"))   
}
}
if attack = AT_DAIR && my_hitboxID.hbox_num == 1{
sound_play(asset_get("sfx_blow_weak2"))
}
if attack = AT_FSTRONG && my_hitboxID.hbox_num == 1{
sound_play(asset_get("sfx_blow_heavy2"))
}
if attack = AT_NAIR{
sound_play(asset_get("sfx_blow_medium2"))
}
if attack = AT_DATTACK{
    if my_hitboxID.hbox_num == 1{
sound_play(asset_get("sfx_blow_heavy1"))
}else if my_hitboxID.hbox_num == 2{
    sound_play(asset_get("sfx_blow_medium1"))
}else if my_hitboxID.hbox_num == 3{
        sound_play(asset_get("sfx_blow_weak2"))
    }
}