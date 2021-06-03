//article update


state_timer += 1


	//	clonehitbox = 	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y) ); 



if (state == 0) {

		sprite_index = sprite_get("dspec_hold")
		image_index += 0.15
		if (state_timer == 300) {
			
			state = 3
			state_timer = 0
			image_index = 0
		}
}

		image_xscale = 2
		image_yscale = 2

if ((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_DSPECIAL && player_id.window == 1 && player_id.window_timer == 0) {
	
state_timer = 0
	state = 1
	
}
if (state == 1) {
	
	sprite_index = sprite_get("dspecial_proj")
if (state_timer < 3) {
	image_index = 0
	
	
	
} else if (state_timer < 15) {
	image_index = 1




} else if (state_timer < 19) {
	image_index = 2

		
	
} else if (state_timer < 23){
	
	if (state_timer == 19) {
		clonehitbox = 	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y) - 33 ); }
		
		with (clonehitbox) {
			
			if in_hitpause {
				if other.state_timer > 20 {
					
					other.state_timer -= 1
				}
				
			}
			
		}

	
	
	image_index = 3
					
					
					
//	if (clonehitbox.in_hitpause && state_timer > 20) {
//		state_timer -= 1
		
		
//	}
} else if (state_timer < 28){					
	image_index = 4

//	if (clonehitbox.hitpause = true)
}
 else if (state_timer < 33){	
	image_index = 5
	//		instance_destroy(clonehitbox)
		

}
 else if (state_timer < 38){
		image_index = 6

}
 else if (state_timer < 43){
			image_index = 7
			player_id.num_articles -= 1
			instance_destroy()
			exit;

}
}	

if (state == 3) {
	
	sprite_index = sprite_get("dspec_die")
	image_index += 0.15
	if (state_timer == 26) {
			instance_destroy()
			player_id.num_articles -= 1
			exit;
		
	}
	
}

if (state == 0 || (state == 1 && state_timer < 19)) {
//article#_update
if hitstop <= 0 {
    if hit_lockout <= 0 
    
    with pHitBox {
        if place_meeting(x,y,other) && "hitbox_has_hit_article" not in self   && player_id != other.player_id {
        	
        	
        	
            ds_list_add(other.colliding_hitboxes,id);
            
         //   can_hit_self = true
          //  damage = 0
            other.player_id.x = x
            other.player_id.y = y
            other.player_id.num_articles -= 1
        //    player_id.state = PS_HITSTUN
          //  with (player_id) {
            	
          //  	set_state(PS_HITSTUN)
          //  }
         //   player_id.hitstop = 1
        //    player_id.hitstop_full = 1
         //   player_id.blink_countdown = 0
           // player_id.has_hit_article = true
           player_id.djumps = 0
        }
    } else if hit_lockout > 0 hit_lockout--;
        
    var currentHighestPriority = noone;
    if ds_list_size(colliding_hitboxes) > 1 {
        for (var i = 0; i < ds_list_size(colliding_hitboxes); i++) {
            if currentHighestPriority != noone {
                if colliding_hitboxes[| i].hit_priority > currentHighestPriority.hit_priority 
                    currentHighestPriority = colliding_hitboxes[| i];
            } else {
                currentHighestPriority = colliding_hitboxes[| i];
            }
        } 
    }
    else if ds_list_size(colliding_hitboxes) == 1 {
       currentHighestPriority = colliding_hitboxes[| 0];
    }
    
    ds_list_clear(colliding_hitboxes);
            
    if currentHighestPriority != noone with currentHighestPriority {
           // var angle = get_hitbox_angle(self);
          //  other.hsp = lengthdir_x(kb_value,angle);
          //  other.vsp = lengthdir_y(kb_value,angle);
            other.hit_lockout = 10;
            
            hitbox_has_hit_article = true;
            
         //  sound_play(sound_effect);
          //  spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
            with player_id {
                old_hsp = hsp;
                old_vsp = vsp;                      
                
                hitpause = true;
                has_hit = true;
                
            }
            player_id.hitstop = ceil(hitpause+hitpause_growth*.05-2);
            other.hitstop = ceil(hitpause+hitpause_growth*.05-2);
            //	player_id.num_articles -= 1
            instance_destroy()
    }

  //  hsp *= 0.9;
    //vsp *= 0.9;
}

}

