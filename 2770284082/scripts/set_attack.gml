//

sound_stop(cur_sound)
if attack == AT_TAUNT {
    if up_down {
        sound_stop(cur_sound)
        window = 5
        sound_play(asset_get("sfx_gem_collect"));
         cur_sound = sound_play(sound_get("v_endofyourlife"),false,noone,.8,1.05 - random_func(1,10,true)/100)
    }
    
    if down_down {
        window = 7
        sound_stop(cur_sound)
        sound_play(asset_get("sfx_gem_collect"));
         cur_sound = sound_play(sound_get("v_areyouok"),false,noone,.8,1.05 - random_func(1,10,true)/100)
    }
}
if attack == AT_UTILT or attack == AT_DTILT  {
    if right_down - left_down != 0 {
        spr_dir = right_down - left_down
        side = right_down - left_down
    }
}



//if attack == AT_FSTRONG {
//    if (left_down && side == 1 && !right_down) or (right_down && side == -1 && !left_down) {
//       attack = AT_DATTACK
//   }
//}

/*
if attack == AT_DATTACK or attack == AT_FTILT{
   
   if (( (left_down && attack_down) or left_stick_down) && side == -1 ) or (( (right_down && attack_down) or right_stick_down) && side == 1) {
          attack = AT_FTILT
          if up_down {
              side *= -1
              attack = AT_UTILT
          }
          if down_down {
              attack = AT_DTILT
          }
   }
   
   if (((left_down && attack_down) or left_stick_down) && side == 1 ) or (((right_down && attack_down) or right_stick_down) && side == -1) {
           attack = AT_FTHROW
           if up_down {
               side *= -1
              attack = AT_UTILT
          }
          if down_down {
              attack = AT_DTILT
          }
   }
}
*/

if attack == AT_DATTACK or attack == AT_FTILT{
   
   if (( (left_down && attack_down) or left_stick_down) && side == -1 ) or (( (right_down && attack_down) or right_stick_down) && side == 1) {
          attack = AT_FTILT
          if up_down {
              side *= -1
              attack = AT_UTILT
          }
          if down_down {
              attack = AT_DTILT
          }
   }
   
   if (((left_down && attack_down) or left_stick_down) && side == 1 ) or (((right_down && attack_down) or right_stick_down) && side == -1) {
           attack = AT_FTHROW
           if up_down {
               side *= -1
              attack = AT_UTILT
          }
          if down_down {
              attack = AT_DTILT
          }
   }
}

if attack != AT_BAIR and attack != AT_FTHROW {
    spr_dir = side 
} else {
    spr_dir = side*-1
    side *= -1
}

//if attack == AT_DTILT {
//    if (left_down && side == 1 ) or (right_down && side == -1) {
//        spr_dir = side*-1
//        side *= -1
//        attack = AT_DATTACK
//   }
//}