


if (state == PS_DASH) {
   if timefreeze > 1 {
        sprite_index = sprite_get("walk");
        image_index = state_timer / 7.5;
   } else { 
       
        sprite_index = sprite_get("dash");
        image_index = state_timer / 3;
       
   }
}


if (state == PS_DASH_START) {
   if timefreeze > 1 {
        sprite_index = sprite_get("walk");
        image_index = state_timer / 6;
   } else { 
       
        sprite_index = sprite_get("dashstart");
        image_index = state_timer / 3;
       
   }
}


