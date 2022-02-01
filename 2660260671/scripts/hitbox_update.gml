
if (attack == AT_FSPECIAL){
    if(hbox_num == 1){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            sound_play(sound_get("ember_hit"))
        }
    } 
}

if (attack == AT_FSPECIAL_AIR){
    if(hbox_num == 1){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            sound_play(sound_get("ember_hit"))
        }
    } 
}

if (attack == AT_NSPECIAL){
    if(hbox_num == 6){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            sound_play(sound_get("hit_punch2"))
        }
    } 
}

if (attack == AT_NSPECIAL){
    if(hbox_num == 7){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            sound_play(sound_get("hit_punch2"))
        }
    } 
}

if (attack == AT_NSPECIAL){
    if(hbox_num == 8){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            sound_play(sound_get("hit_punch2"))
        }
    } 
}

if (attack == AT_NSPECIAL){
    if(hbox_num == 9){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            sound_play(sound_get("hit_punch2"))
        }
    } 
}

if (attack == AT_NSPECIAL){
    if(hbox_num == 10){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            sound_play(sound_get("hit_punch2"))
        }
    } 
}