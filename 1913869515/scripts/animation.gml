
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


if (state == PS_CROUCH) {
   if left_down {
       spr_dir = -1
       hsp = -2
        sprite_index = sprite_get("walk2");
        image_index = state_timer / 8
       if state_timer % 52 == 0 {
           sound_play(asset_get("sfx_jumpair"));
       }
       if state_timer % 52 == 26 {
           sound_play(asset_get("sfx_jumpair"),false, noone, 0.4)   ;
       }
   }
       
    if right_down {
       spr_dir = 1
       hsp = 2
        sprite_index = sprite_get("walk2");
        image_index = state_timer / 8
       if state_timer % 52 == 0 {
           sound_play(asset_get("sfx_jumpair"));
       }
       if state_timer % 52 == 26 {
           sound_play(asset_get("sfx_jumpair"),false, noone, 0.4)   ;
       }
   }
   

}