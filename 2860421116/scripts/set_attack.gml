if move_cooldown[AT_JAB] == 0 {
switch attack {
    case AT_FTILT :
      attack = AT_JAB
      sound_play(asset_get("sfx_swipe_weak1"))
    break;
     case AT_DTILT :
      attack = AT_JAB
      sound_play(asset_get("sfx_swipe_weak1"))
    break;   
    case AT_UTILT :
      attack = AT_JAB
      sound_play(asset_get("sfx_swipe_weak1"))
    break;    
    case AT_DATTACK :
      attack = AT_JAB
      sound_play(asset_get("sfx_swipe_weak1"))
    break; 
    case AT_JAB :
      sound_play(asset_get("sfx_swipe_weak1"))
    break;  
    
    case AT_USTRONG :
       attack = AT_FSTRONG
      sound_play(asset_get("sfx_swipe_medium1"))
    break;    
    case AT_DSTRONG :
       attack = AT_FSTRONG
      sound_play(asset_get("sfx_swipe_medium1"))
    break;    
    case AT_FSTRONG :
      sound_play(asset_get("sfx_swipe_medium1"))
    break;    
    
    
     case AT_FAIR :
      attack = AT_NAIR
      sound_play(asset_get("sfx_swipe_medium2"))
    break;
     case AT_BAIR :
      attack = AT_NAIR
      sound_play(asset_get("sfx_swipe_medium2"))
    break;   
    case AT_UAIR :
      attack = AT_NAIR
      sound_play(asset_get("sfx_swipe_medium2"))
    break;    
    case AT_DAIR :
      attack = AT_NAIR
      sound_play(asset_get("sfx_swipe_medium2"))
    break; 
    case AT_NAIR :
      sound_play(asset_get("sfx_swipe_medium2"))
    break;  

    case AT_NSPECIAL :
      fangle = 0
      fangled = -4
      window_timer = 15
    break;  

}

}