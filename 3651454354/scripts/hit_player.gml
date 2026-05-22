//if (attack != AT_FSPECIAL){
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
if attack != AT_FSPECIAL{
sound_stop(sound_get("snd_swing"))
}

if my_hitboxID.attack = AT_DSTRONG && my_hitboxID.hbox_num == 3 && active_effect = 4{
buffed = 1
}

if my_hitboxID.attack = AT_UTILT or my_hitboxID.attack = AT_NAIR && my_hitboxID.hbox_num == 4 or my_hitboxID.attack = AT_FAIR or my_hitboxID.attack = AT_DATTACK && my_hitboxID.hbox_num == 5 or my_hitboxID.attack = AT_JAB or my_hitboxID.attack = AT_DAIR or my_hitboxID.attack = AT_FSTRONG or my_hitboxID.attack = AT_USTRONG && my_hitboxID.hbox_num == 9 or my_hitboxID.attack = AT_DSTRONG && my_hitboxID.hbox_num == 3  {
    if nspecial_ammo < 3{
        nspecial_ammo += 1
		nspecial_timer = 0
    }
}
if my_hitboxID.attack = AT_FSPECIAL{
    if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2 or my_hitboxID.hbox_num == 3 or my_hitboxID.hbox_num == 4 or my_hitboxID.hbox_num == 5 or my_hitboxID.hbox_num == 6 or my_hitboxID.hbox_num == 7{
sound_play(asset_get("sfx_blow_medium1"))
}else if my_hitboxID.hbox_num == 8  or my_hitboxID.hbox_num == 9 or my_hitboxID.hbox_num == 10 or my_hitboxID.hbox_num == 11 or my_hitboxID.hbox_num == 12 or my_hitboxID.hbox_num == 13{
 sound_play(asset_get("sfx_blow_weak1"))   
}}

if my_hitboxID.attack = AT_NAIR{
	if my_hitboxID.hbox_num = 4{
 sound_play(asset_get("sfx_blow_medium2"))   
	}else{
 sound_play(asset_get("sfx_blow_weak2"))   		
	}
}
if my_hitboxID.attack = AT_FAIR{
    if my_hitboxID.hbox_num == 1{
sound_play(asset_get("sfx_blow_medium1"))
}else if my_hitboxID.hbox_num == 3{
 sound_play(asset_get("sfx_blow_weak1"))   
}
}
if my_hitboxID.attack = AT_DAIR && my_hitboxID.hbox_num == 1{
sound_play(asset_get("sfx_blow_weak2"))
}
if my_hitboxID.attack = AT_FSTRONG && my_hitboxID.hbox_num == 1{
sound_play(asset_get("sfx_blow_heavy2"))
}
if my_hitboxID.attack = AT_DATTACK{
    if my_hitboxID.hbox_num == 5{
sound_play(asset_get("sfx_blow_medium3"), false, false, 1.0, 1.0);
}
    if my_hitboxID.hbox_num < 5{
sound_play(asset_get("sfx_blow_weak2"))   
}}

if my_hitboxID.attack = AT_FSPECIAL{
		if my_hitboxID.hbox_num <= 7 set_grab_id();
		else my_grab_id = noone;
}

if my_hitboxID.attack = AT_USTRONG{
		if my_hitboxID.hbox_num == 10 set_grab_id();
		else my_grab_id = noone;
}

if my_hitboxID.attack = AT_BAIR{
		if my_hitboxID.hbox_num == 1{
		sound_play(asset_get("sfx_ori_energyhit_weak"), false, false, 1.0, 1.0);
}}

if my_hitboxID.attack = AT_NSPECIAL{
		if my_hitboxID.hbox_num == 1{
		sound_play(asset_get("sfx_ori_energyhit_weak"), false, false, 1.0, 1.0);
}}
if my_hitboxID.attack = AT_FTILT{
		if my_hitboxID.hbox_num == 3{
		sound_play(asset_get("sfx_ori_energyhit_weak"), false, false, 1.0, 1.0);
}}

#define set_grab_id
{
    //things to check when you grab someone:
    //  - make sure your grabbed ID is noone so it will grab the first player it collides with
    //  - if the ID is a clone (clones usually disappear which will pop up an error)
    //  - if the hit player is in a hitstun state (so it won't grab armored player)
    //  - if the player isn't in ranno's bubble
    
    if my_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled{
        my_grab_id = hit_player_obj;
    }
}