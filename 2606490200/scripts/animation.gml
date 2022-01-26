///

if atrain < 100 && state == PS_DOUBLE_JUMP && state_timer < 25{ 
    
    sprite_index = sprite_get("jump")
    
}

if left_pressed and right_pressed and attack_pressed and special_pressed  {
	if up_down {
	Omega = 4 	
	}
	if down_down {
	Omega = 0 	
	}
}

if (state == PS_DASH
   	or state == PS_IDLE
   	or state == PS_CROUCH
   	or state == PS_WALK
   	or state == PS_WALK_TURN
   	or state == PS_DASH_STOP
   	or state == PS_DASH_TURN
   	or state == PS_WAVELAND) && Omega = 4  {
   		
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

if htrain >= 100 && (state == PS_DASH_START or state == PS_DASH) {
    sprite_index = sprite_get("dash2")
    image_index = state_timer/3
}

if state == PS_CROUCH {

    if croutime % 9 == 0 {
    sprite_index = sprite_get("crouch2")
    }
    if croutime % 9 == 6 {
    sprite_index = sprite_get("crouch3")
    }
    if croutime % 9 == 3 {
    sprite_index = sprite_get("crouch4")
    }
}

if state == PS_LAND or state == PS_LANDING_LAG {

    if croutime % 5 == 3 {
    sprite_index = sprite_get("crouch3")
    }
    if croutime % 5 == 0 {
    sprite_index = sprite_get("crouch4")
    }
}

if state == PS_PRATFALL && move_cooldown[AT_USPECIAL] > 0 {
    sprite_index = sprite_get("hurt")
}