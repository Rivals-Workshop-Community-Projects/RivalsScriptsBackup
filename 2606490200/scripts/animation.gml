	///
if "standon" in self and state != PS_PRATFALL and state != PS_PRATLAND and state != PS_PARRY and state != PS_ROLL_FORWARD and state != PS_ROLL_BACKWARD and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD  {
	draw_y = 9999
}

if htrain > 100 && (state == PS_DASH or state == PS_DASH_START){ 
    
    sprite_index = sprite_get("dash2")
    image_index = state_timer/2
    
}




  

if state == PS_CROUCH {
  if state_timer == 1{
  if (left_down or right_down) and up_down {
     croutime = 2
  } 

  else if down_hard_pressed {
     croutime = 4
  } 

  else if up_down {
     croutime = 3
  }

  else {
     croutime = 1
  } 
  }

  if croutime = 1 {
     sprite_index = sprite_get("crouch")
  }
  if croutime = 2 {
     sprite_index = sprite_get("crouch2")
  } 
  if croutime = 4 {
     sprite_index = sprite_get("crouch4")
  } 
  if croutime = 3 {
     sprite_index = sprite_get("crouch3")
  }
}

if atrain < 100 && state == PS_DOUBLE_JUMP && state_timer < 25{ 
    
    sprite_index = sprite_get("jump")
    
}

/* codes archived, Auto parry in neutral state
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

*/
