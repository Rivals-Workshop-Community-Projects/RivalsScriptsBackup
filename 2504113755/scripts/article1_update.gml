//article update


state_timer += 1
//mask_index = asset_get("ex_guy_hurt_box");

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

if ((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_DSPECIAL && player_id.window == 1 && player_id.window_timer == 0 && state != 1) {
	
state_timer = 0
	state = 1
	
}
if (state == 1) {
	
	sprite_index = sprite_get("dspecial_proj")
if (state_timer < 3) {
	image_index = 0
	
	
	
} else if (state_timer < 15 + explosion_frame_offset) {
	image_index = 1




} else if (state_timer < 19 + explosion_frame_offset) {
	image_index = 2


	hsp *= 0.75
	vsp *= 0.75
		
	
} else if (state_timer < 23 + explosion_frame_offset){
	
		hsp *= 0.75
	vsp *= 0.75

	if (state_timer == 19 + explosion_frame_offset) {
		
		        sound_play(asset_get("sfx_clairen_dspecial_counter_active"))

		clonehitbox = 	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y) - 33 ); }
		
		with (clonehitbox) {
			
			if in_hitpause {
				if other.state_timer > 20 {
					
					other.state_timer -= 1
				}
				
			}
			x = other.x
			y = other.y - 33
		}

	
	
	image_index = 3
					
					
					
//	if (clonehitbox.in_hitpause && state_timer > 20) {
//		state_timer -= 1
		
		
//	}
} else if (state_timer < 27 + explosion_frame_offset){					
	image_index = 4


	hsp *= 0.75
	vsp *= 0.75
//	if (clonehitbox.hitpause = true)
}
 else if (state_timer < 31 + explosion_frame_offset){	
	image_index = 5
	
		hsp *= 0.75
	vsp *= 0.75
	//		instance_destroy(clonehitbox)
		

}
 else if (state_timer < 35 + explosion_frame_offset){
		image_index = 6
		
			hsp *= 0.75
	vsp *= 0.75

}
 else if (state_timer < 39 + explosion_frame_offset){
 	
 		hsp *= 0.75
	vsp *= 0.75
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
		//	player_id.num_articles -= 1
			exit;
		
	}
	
}




            
            
		
	
			
			
		
		
		
	
	
	








if ((state == 0 && state_timer > 1)|| (state == 1 && state_timer < 19)) {
//article#_update
if hitstop <= 0 {
    if hit_lockout <= 0 
    
    with pHitBox {
        if place_meeting(x,y,other) && "hitbox_has_hit_article" not in self   && ((player_id != other.player_id) || (player_id == other.player_id && !(attack == AT_FSTRONG && hbox_num == 2 ) && !(attack == AT_USPECIAL && hbox_num == 2 ))) && hit_priority > 0 {
        	
        	
        	
        	
            ds_list_add(other.colliding_hitboxes,id);
            
         //   can_hit_self = true
          //  damage = 0
          
          if ( player_id != other.player_id)  {
            other.player_id.x = other.x
            other.player_id.y = other.y
            other.player_id.num_articles -= 1
            
            with(other.player_id) {
            	destroy_hitboxes()
            		
            		if (state != PS_AIR_DODGE && state != PS_PARRY && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD) {
            			hsp = 0
            			vsp = 0
            			            		hurtboxID.sprite_index = hurtbox_spr

            		}
            	
            }
            
          }
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
    	
    	
    	
    	
    	//STUFF FOR IF ITS YOU HITTING THE THING
    	          if ( player_id == other.player_id)  {
    	          	
    	          	       	other.spr_dir = spr_dir

           var angle = get_hitbox_angle(self);
           
           other.state = 1
           other.state_timer = 0
           
           
           if (attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG  || attack == AT_USPECIAL) {
           other.explosion_frame_offset = 6 }
           else { other.explosion_frame_offset = 2 }
           
           
           //FAIR, NAIR, FTILT, DSTRONG, FSTRONG
           if (attack == AT_FAIR || attack == AT_FSPECIAL || attack == AT_NAIR || attack == AT_FTILT || attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_DATTACK || attack == AT_DSPECIAL) {
           	
           	if (spr_dir == 1) {
           	angle = 15 }
           	else {angle = 180-15 }
           	if (attack == AT_DSTRONG && hbox_num == 2) {
           			if (spr_dir == 1) {
           	angle = 180-15 }
           	else {angle = 15 }
           	}
           	
           		if (attack == AT_NAIR && (hbox_num == 6 || hbox_num == 7)) {
           		angle = 270 }
           		if (attack == AT_NAIR && hbox_num == 8) {
           		angle = 90 }
           		
           		
           		
           		
           		
           	}
           	
           	if (attack == AT_DATTACK) {
           		
           		
           			var lerpam
	lerpam = [0.5, 0.5]
	

	other.x = lerp(floor(other.x), x + 10*spr_dir, lerpam[0])
	other.y = lerp(floor(other.y), y + 10, lerpam[1])
           	} else if (attack == AT_USTRONG){
           		
           		     			var lerpam
	lerpam = [0.5, 0.5]
	

	other.x = lerp(floor(other.x), x , lerpam[0])
	other.y = lerp(floor(other.y), y + 30, lerpam[1])
           		
           		
           		
           	}else if (attack == AT_FSPECIAL && hbox_num != 1){
           		
           		     			var lerpam
	lerpam = [0.5, 0.5]
	

	other.x = lerp(floor(other.x), x - 10*spr_dir, lerpam[0])
	other.y = lerp(floor(other.y), y + 25, lerpam[1])
           		
           		
           		
           	} else if (attack == AT_DAIR){
           		
           		     			var lerpam
	lerpam = [0.5, 0.5]
	

	other.x = lerp(floor(other.x), x , lerpam[0])
	other.y = lerp(floor(other.y), y + 15, lerpam[1])
           		
           		
           		
           	}
           	
           
           //HITS IT UP
           if (attack == AT_UAIR || attack == AT_JAB || attack == AT_UTILT || attack == AT_USTRONG || attack == AT_DTILT) {
           	
           	angle = 90
           	
           	
           	
           	
          
           	
           }
           
           
           if (attack == AT_BAIR) {
           	if (spr_dir == 1) {
           	angle = 180-35 }
           	else { angle = 35 }
           	}
           	if (attack == AT_DAIR  || attack == AT_JAB) {
           	if (spr_dir == -1) {
           	angle = 180-35 }
           	else { angle = 35 }
           	}
           	
           		if (attack == AT_USPECIAL) {
           	if (spr_dir == -1) {
           	angle = 180-45 }
           	else { angle = 45 }
           	}
           	
           
           
           
           
           if ((attack == AT_USTRONG && hbox_num == 7) || (attack == AT_DAIR && hbox_num == 5) || (attack == AT_DATTACK && hbox_num == 6) || (attack != AT_USTRONG && attack != AT_DAIR && attack != AT_DATTACK)) {
            other.hsp = 1*lengthdir_x(kb_value + 5*kb_scale,angle);
            other.vsp = 1*lengthdir_y(kb_value + 5*kb_scale,angle); 
           } else if (attack == AT_DATTACK) {
           	other.hsp = 3/4*lengthdir_x(kb_value + 3*kb_scale,angle);
            other.vsp = 3/4*lengthdir_y(kb_value + 3*kb_scale,angle); }
           	
           	
           	else{  other.hsp = 1/2*lengthdir_x(kb_value + 3*kb_scale,angle);
            other.vsp = 1/2*lengthdir_y(kb_value + 3*kb_scale,angle); }
    	          	
    	          	
    	          	 		sound_play(sound_effect);
            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
    	          	
    	          }
            other.hit_lockout = 4;
            
            hitbox_has_hit_article = true;
            
        
            with player_id {
                old_hsp = hsp;
                old_vsp = vsp;                      
                
                hitpause = true;
                has_hit = true;
                
            }
            player_id.hitstop = ceil(hitpause+hitpause_growth*.05-2);
            other.hitstop = ceil(hitpause+hitpause_growth*.05-2);
            //	player_id.num_articles -= 1
             if ( player_id != other.player_id)  {
            instance_destroy() }
    }

 
}

}

