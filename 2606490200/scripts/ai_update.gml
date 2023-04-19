/*
if state == PS_IDLE {
    spr_dir *= -1
    set_attack(AT_FSPECIAL)
    window = 1
    window_timer = 0
}



x = room_width/2

with oPlayer {
    if state_cat != SC_HITSTUN {
        x = room_width/2
    }
}

*/

if temp_level == 9 {

if abs(x + hsp - ai_target.x + ai_target.hsp) < 120 and abs(y + vsp - ai_target.y + ai_target.vsp) < 120 {
        attack_pressed = true 
        
    
    if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
    if state_timer <= 10 {
        if state_timer % 4 == 0 {
       crtai = create_hitbox(AT_FTILT,10,x,y)
       crtai.ye = sprite_index
       crtai.heck = image_index
       crtai.walls = 1
       crtai.grounds = 1
    }
       x += floor((ai_target.x - x)/8)
        if free y += floor((ai_target.y - y)/8)
    }
    }

} 

if attack == AT_BAIR && !hitpause && state == PS_ATTACK_AIR{
    x += 5*spr_dir
}
if attack == AT_FSPECIAL{
    if free && state_timer == 1  {
        vsp = -12
    }
    if window == 3 && !was_parried && !has_hit{
      set_state(PS_DOUBLE_JUMP)
      state_timer = 1
      y -= 10
      vsp = -12
             crtai = create_hitbox(AT_FTILT,10,x,y)
       crtai.ye = sprite_index
       crtai.heck = image_index
       crtai.walls = 1
       crtai.grounds = 1
    }
}

if state == PS_DOUBLE_JUMP && ai_target.state_cat == SC_HITSTUN {
    if state_timer % 4 == 0 {
       crtai = create_hitbox(AT_FTILT,10,x,y)
       crtai.ye = sprite_index
       crtai.heck = image_index
       crtai.walls = 1
       crtai.grounds = 1
    }
     hsp = floor((ai_target.x + ai_target.hsp - x)/10)
     vsp = floor((ai_target.y + ai_target.vsp - y)/10)
}

if has_hit_player &&  (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) {
    can_attack = true 
    
    if attack == AT_NAIR && hit_player_obj.hitpause == false{
           set_attack(AT_DAIR)
           window = 1
           window_timer = 5
       }
       
    if hit_player_obj.hitpause == false && !free {
        attack_end()
        state = PS_IDLE
        hsp = floor((ai_target.x + ai_target.hsp - x)/10)
        vsp = floor((ai_target.y + ai_target.vsp - y)/10)
        if !free vsp -= 2
               crtai = create_hitbox(AT_FTILT,10,x,y)
       crtai.ye = sprite_index
       crtai.heck = image_index
       crtai.walls = 1
       crtai.grounds = 1
       
       
    }
}

Omega = 4
djumps = 0
if "cosmicman" not in self {
    cosmicman = true 
}

if up_down or special_down {
    up_down = false 
    special_down = false 
}

if hitpause && hitstop == hitstop_full{
      	if btrain < 100 {
    		btrain += 1.5
    	}
    	if htrain < 100 {
    		htrain += 3
    	}
    	if atrain < 100 {
    		atrain += 0.5
    	}
    	if ltrain < 100 {
    		ltrain += 5
    	}    
}
} else {
    if abs(x + hsp - ai_target.x + ai_target.hsp) < 120 and abs(y + vsp - ai_target.y + ai_target.vsp) < 120 {
        if random_func(2,2,true) == 0 {
            attack_pressed = true 
        } else {
            special_pressed = true 
        }

   } 

}