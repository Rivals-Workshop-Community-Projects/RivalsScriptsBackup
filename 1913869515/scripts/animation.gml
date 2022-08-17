
if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) && attack == AT_EXTRA_2 && state_timer < 3 {
    sprite_index = iaispr
    image_index = iaiimg
}
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


if (state == PS_CROUCH) or (state == PS_WALK and "ai_target" in self) {
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


