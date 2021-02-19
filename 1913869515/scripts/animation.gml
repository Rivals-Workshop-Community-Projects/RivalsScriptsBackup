
if (state == PS_SPAWN) {
    if (introTimer < 31 && introTimer >= 0) {
         if get_player_color(player) == 3{
             
            	              sprite_index = sprite_get("introG7");
            	      
            	 } else {
            	      
            	        sprite_index = sprite_get("intro");
            }

        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (state == PS_DASH) {
   if offense == 0 {
        sprite_index = sprite_get("walk");
        image_index = state_timer / 3.5;
   } else { 
       
        sprite_index = sprite_get("dash");
        image_index = state_timer / 2;
       
   }
}


if (state == PS_DASH_START) {
   if offense == 0 {
        sprite_index = sprite_get("walk");
        image_index = state_timer / 4;
   } else { 
       
        sprite_index = sprite_get("dashstart");
        image_index = state_timer / 2;
       
   }
}

if (state == PS_WALK) {
   if offense == 0 {
        sprite_index = sprite_get("walk2");
        image_index = state_timer / 8
       if state_timer % 52 == 0 {
           sound_play(asset_get("sfx_jumpair"));
       }
       if state_timer % 52 == 26 {
           sound_play(asset_get("sfx_jumpair"),false, noone, 0.4)   ;
       }
       
       
   } else { 
       
        sprite_index = sprite_get("walk");
        image_index = state_timer / 6;
       
   }
}