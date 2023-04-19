///

if attacking && attack == AT_TAUNT && window == 3 && state_timer > 40 {
    image_index = 6
}

if state == PS_PRATLAND {
    sprite_index = sprite_get("landinglag")
    image_index = min(2,state_timer/8)
}



/* codes archived, Auto parry in neutral state
if left_pressed and right_pressed and attack_pressed and special_pressed  {
	if up_down {
	Genocide = 4 	
	}
	if down_down {
	Genocide = 0 	
	}
}


if (state == PS_DASH
   	or state == PS_IDLE
   	or state == PS_CROUCH
   	or state == PS_WALK
   	or state == PS_WALK_TURN
   	or state == PS_DASH_STOP
   	or state == PS_DASH_TURN
   	or state == PS_WAVELAND) && Genocide = 4  {
   		
	invincible = true 
	invince_time = 1
	
		nearbyhitbox = collision_circle( x, y - 30, 30, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone{
		if nearbyhitbox.player_id != self && nearbyhitbox.hit_priority > 0  {
				 set_state(PS_PARRY)
				 window_timer = 3
                  invince_time = 0
                  with nearbyhitbox {
                  	 hitbox_timer = 0
                  }
     	}
	}
	
} else {
	
}
*/