//article update


state_timer += 1
//mask_index = asset_get("ex_guy_hurt_box");

	//	clonehitbox = 	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y) ); 



if (state == 0) {

			if (get_player_color( player ) != 28) {
	sprite_index = sprite_get("dspec_hold") }
	
else {
				sprite_index = sprite_get("dspec_ball")

		}
		image_index += 0.15
		if (state_timer == 300) {
			
			state = 3
			state_timer = 0
			image_index = 0
		}
}

		image_xscale = 2
		image_yscale = 2

if ((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_DSPECIAL && player_id.window == 3 && player_id.window_timer == 3 && state != 1) {
	
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
			instance_destroy()
			exit;

}
}	

if (state == 3) {
	
if (get_player_color( player ) == 28) {
				sprite_index = sprite_get("dspec_ball_die")

		} else { 				sprite_index = sprite_get("dspec_die")
}
		image_index += 0.15
	if (state_timer == 26) {
			instance_destroy()
		//	player_id.num_articles -= 1
			exit;
		
	}
	
}




            
            
		
	
			
			
		










//estimated like 80% accurate imo
if hit_lockout <= 0 {
    var article = self;
    //reset hitbox groups when necessary
    with (oPlayer)
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        }
    
    var currentHighestPriority = noone;
    with (pHitBox) {
    	
    	if (hit_priority > 0 && ((other.state == 0 && other.state_timer > 1)|| (other.state == 1 && other.state_timer < 19)) ) {
    		
        if `hit_${article}` not in self
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
                if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                    //hit
                    if currentHighestPriority != noone {
                        if currentHighestPriority.hit_priority < hit_priority
                            currentHighestPriority = self;
                    } else {
                        currentHighestPriority = self;
                    }
                    
                    variable_instance_set(self, `hit_${article}`, true);
                    
                    
                    
                    		can_hit[other.player_id.player] = 1
          		          		can_hit[other.player_id.player] = true
                    
                    
                    if ( player_id != other.player_id)  {
        

    	
          		
          		
          	if (other.player_id.state != PS_DEAD && other.player_id.state != PS_RESPAWN && other.player_id.state != PS_SPAWN) {
          		
          		
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
            	getting_bashed = true
            }
            
          } }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
            } else if (place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 1) || (hit_priority == 0) {
                //prevent from running hit detection for optimization sake
                //with other print_debug("hit but also not");
                variable_instance_set(self, `hit_${article}`, true);
            } } }
    
    if instance_exists(currentHighestPriority) with currentHighestPriority {
        sound_play(sound_effect);
        spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y-40,hit_effect);
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
           // set_a_state(AS.HITSTUN); //set_a_state is my article state setting function; replace this with yours lol
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
            hit_lockout = other.no_other_hit;
            // for you archy. 
            // if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
            if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
            else orig_knock = other.kb_value + other.damage * other.kb_scale * 0.12 * kb_adj;
       //     kb_dir = get_hitbox_angle(other);
            
        //    hsp = lengthdir_x(orig_knock, kb_dir);
       //     vsp = lengthdir_y(orig_knock, kb_dir);
            
            hit_player_obj = other.player_id;
            hit_player_num = other.player;
            
            
            
            
            
            
            
            
        }
        //apply hitpause (where applicable)
        var desired_hitstop = ceil(hitpause+hitpause_growth*.05-2);
        if type == 1 with player_id {
            old_vsp = vsp;
            old_hsp = hsp;
            hitpause = true;
            has_hit = true;
            if hitstop < desired_hitstop {
                hitstop = desired_hitstop;
                hitstop_full = desired_hitstop;
            }
        }
        other.hitstop = floor(desired_hitstop);
        if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
        
        
        
        
        
     
        
        
        
        
        
        
        
        
        
        
        
        if ( player_id == other.player_id)  {
    	          	
    	          	       	other.spr_dir = spr_dir

           var angle = get_hitbox_angle(self);
           
           other.state = 1
           other.state_timer = 0
           
           
           if (attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG  || attack == AT_USPECIAL || attack == AT_DSPECIAL) {
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
           	  	if (attack == AT_DSPECIAL && ((other.x < other.player_id.x && other.spr_dir != 1) || (other.x <= other.player_id.x && other.spr_dir == 1))) {
			angle = 180-15 }
           	
           	else 	if (attack == AT_DSPECIAL) {angle = 15 }
           	
           	
           		if (attack == AT_NAIR && (hbox_num == 6 || hbox_num == 7)) {
           		angle = 270 }
           		if (attack == AT_NAIR && (hbox_num == 8 || hbox_num == 9)) {
           		angle = 90 }
           		
           		
           		
           		
           		
           	}
           	
           	if (attack == AT_DATTACK) {
           		
           		
           			var lerpam
	lerpam = [0.5, 0.5]
	

	other.x = lerp(floor(other.x), x + 10*spr_dir, lerpam[0])
	other.y = lerp(floor(other.y), y + 20, lerpam[1])
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
           	
           	if (hbox_num == 2) {
           	if (spr_dir == -1) {
           	angle = 180-70 }
           	else { angle = 70 }
           	
           	}
           	}
           	
           
           
           
           
           if ((attack == AT_USTRONG && hbox_num == 7) || (attack == AT_DAIR && hbox_num == 5) || (attack == AT_DATTACK && hbox_num == 5) || (attack != AT_USTRONG && attack != AT_DAIR && attack != AT_DATTACK)) {
            other.hsp = 1*lengthdir_x(kb_value + 5*kb_scale,angle);
            other.vsp = 1*lengthdir_y(kb_value + 5*kb_scale,angle); 
            if (attack == AT_USTRONG) {
            	
            	   other.hsp = 0.9*lengthdir_x(kb_value + 4*kb_scale,angle);
            other.vsp = 0.9*lengthdir_y(kb_value + 4*kb_scale,angle); 
            	
            }
            
            
            
           } else if (attack == AT_DATTACK) {
           	other.hsp = 3/4*lengthdir_x(kb_value + 3*kb_scale,angle);
            other.vsp = 3/4*lengthdir_y(kb_value + 3*kb_scale,angle); }
           	
           	
           	else{  other.hsp = 1/2*lengthdir_x(kb_value + 3*kb_scale,angle);
            other.vsp = 1/2*lengthdir_y(kb_value + 3*kb_scale,angle); }
    	          	
    	          	
    //	          	 		sound_play(sound_effect);
      //     spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
    	          	
    	          }
            other.hit_lockout = 4;
            
            if (attack == AT_FSPECIAL || attack == AT_DAIR || attack == AT_USTRONG) {
            	
            	            other.hit_lockout = 3;

            	
            }
        
            if ( player_id != other.player_id)  {
            instance_destroy() }
        
        
        
        
        
        
        
        
        
        
        
    }
} else hit_lockout--;