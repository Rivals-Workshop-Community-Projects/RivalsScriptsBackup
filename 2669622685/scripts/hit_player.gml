
//sfx layering and such

switch(my_hitboxID.attack){

case AT_FAIR:
        if (my_hitboxID.hbox_num == 1){ 
            sound_play(asset_get("sfx_blow_medium2"), 0, noone, 1, 1)
            }
        if (my_hitboxID.hbox_num == 2){ 
            sound_play(asset_get("sfx_blow_heavy2"), 0, noone, 1, 1)
            }    
    break;
    
case AT_BAIR:
        if (my_hitboxID.hbox_num == 1){ 
            sound_play(asset_get("sfx_blow_medium3"), 0, noone, 1, 1)
            sound_play(asset_get("sfx_clairen_tip_strong"), 0, noone, 1, 1)
            }
    break;   
    
case AT_UAIR:
        if (my_hitboxID.hbox_num == 1){ 
            sound_play(asset_get("sfx_clairen_hit_strong"), 0, noone, 1, 1)
            }
    break;  
    
case AT_JAB:
        if (my_hitboxID.hbox_num == 1){ 
            sound_play(asset_get("sfx_clairen_tip_weak"), 0, noone, 1, 1)
            }
    break;  
    
case AT_FSPECIAL:
        if (my_hitboxID.hbox_num == 1){ 
            sound_play(asset_get("sfx_blow_heavy2"), 0, noone, 1, 1)
            }
    break;     
    
}