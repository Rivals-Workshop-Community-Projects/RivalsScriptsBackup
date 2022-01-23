//article#_update
//code by supersonic. THANK YOU
this_is_a_player = false

state_timer ++

//STATES
//0 - PS_ZOOM
//1 - PS_IDLE
//2 - PS_RETURN
//3 - PS_GOING FROM THE RETURN_TO_FIELD
//4 - PS_FIELD_RETURN
//5 - PS_RETURN
//6 - PS_KILL
//7 - PS_DATTACK
//8 - PS_UPAIR








//ZOOM STATE
if (state == 0) {
 vsp = 0
 hsp = 10*spr_dir
	if (state_timer == 1) {
	//19 is nspecial!
		discushitboxone = create_hitbox(19, 1, floor(x), floor(y) ); }
	if (state_timer == 40) { 
		
		state = 4 }

	if "discushitboxone" in self {

		 discushitboxone.x = x
		discushitboxone.y = y
	}
		sprite_index = sprite_get("disc_zoom")
		image_index = state_timer / 10
		
	if (hit_wall) {state = 1
	state_timer = 0}
		
}



if (state == 5) {
	
	
 vsp = 0
 hsp = 20*spr_dir
	if (state_timer == 1) {
	
		discushitboxdattack = create_hitbox(19, 2, floor(x), floor(y) ); }
	if (state_timer == 70) { 
		
		state = 4 }

	if "discushitboxdattack" in self {

		discushitboxdattack.x = x
		discushitboxdattack.y = y
	}
		sprite_index = sprite_get("disc_zoom")
		image_index = state_timer / 10
}


if (state == 6) {
	
	
 vsp = 15
 hsp = 0
	if (state_timer == 1) {
	
		discushitboxuair = create_hitbox(19, 3, floor(x), floor(y) ); }
	if (state_timer == 70) { 
		
		state = 4 }

	if "discushitboxuair" in self {

		discushitboxuair.x = x
		discushitboxuair.y = y
	}
		sprite_index = sprite_get("disc_zoom")
		image_index = state_timer / 10
}








//IDLE
if (state == 1 ) {
	hsp = 0
	vsp = 0
		sprite_index = sprite_get("disc_return")
		image_index = state_timer / 10
if "discushitboxone" in self {
if instance_exists(discushitboxone) {
instance_destroy(discushitboxone)
} }
	if (state_timer == 400) {
		
	state = 4
	}
	
	ignores_walls = true
}






//return spinning state
if (state == 2) {
	player_id.move_cooldown[AT_NSPECIAL]	= 2
		player_id.move_cooldown[AT_NSPECIAL_2]	= 2
			player_id.move_cooldown[AT_EXTRA_1]	= 2
		sprite_index = sprite_get("disc_return")
				image_index = state_timer / 3

if (state_timer == 1) {
	hohohoangle = point_direction(x,y,owner_id.x,owner_id.y - 30)

}

if (abs(hsp) < abs(lengthdir_x(10, hohohoangle))) {
	
	hsp += lengthdir_x(10, hohohoangle)/50
}
if (abs(vsp) < abs(lengthdir_y(10, hohohoangle))) {
	
		vsp += lengthdir_y(10, hohohoangle)/50
}



	if (state_timer == 150) {  state = 4 }
}




if (state == 3) { //interim state for dattack and upair
vsp = 0
hsp = 0
		sprite_index = sprite_get("disc_return")

		
			
}






	
	if (state != 5 && state != 0 && state != 6) {

	
if ("hitstop" in self) {
if hitstop <= 0 {
    if hit_lockout <= 0 
    
    with pHitBox {                                                                                  
        if place_meeting(x,y,other) && "hitbox_has_hit_article" not in self  && !(attack == AT_NSPECIAL && player_id == other.player_id) && !(other.state == 3 && player_id != other.player_id)                            {
            ds_list_add(other.colliding_hitboxes,id);                                                   
            
          
              if ((attack == AT_DATTACK || attack == AT_UAIR) && player_id == other.player_id) {
            	
            	
            	
            	
            	if (!instance_exists(other.player_id.grabbed_player_obj)) { other.player_id.grabbed_player_obj =  other.player_id.speeddisk
            		
            		other.player_id.transition_to_next_window = true
            	
			//	other.state = 3
			//	other.state_timer = 0
			}
            	}
            	
            //hi future me! please make it so this works with other torrens. Thanks!
            //lol NOPE not gonna do that shit
            
            
            if (attack == AT_FAIR && player_id == other.player_id) {
            	
            	
            }
              
            
            
            
            
            
            
            
            if ( player_id == other.player_id) {
            	
            	other.player_id.torren_speedforce = 240
            	            	other.player_id.extra_zoom_hit = true

            }
         
            
            
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
           var angle = get_hitbox_angle(self);
           if (attack == AT_FAIR && (hbox_num == 1 || hbox_num == 3)) {
           	if (other.player_id.spr_dir = -1) {
           	angle = 100 }
           	if (other.player_id.spr_dir = 1) {
           		
           		angle = 80
           	}
           	
           }
            
            //moves the article based on the angle of the attack (angle NOT in the code)
            other.hsp = 1.5*lengthdir_x(10,angle);
            other.vsp = 1.5*lengthdir_y(10,angle);
            other.hohohoangle = angle
            if (other.player_id.attack == AT_UAIR && player_id == other.player_id) { other.hit_lockout = 0 } else {
            other.hit_lockout = 10; }
            other.hohohoangle = angle
            other.state_timer = 50 
            other.state = 2
            hitbox_has_hit_article = true;
            
            sound_play(sound_effect);
            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
            with player_id {
               // vsp = -10
               // hsp = 5
              
                old_hsp = hsp;
                old_vsp = vsp;                      
              //  angle_of_attack = angle
               // hitpause = true;// THIS MESSES EVERYTHING UP
                has_hit = true;
                

                //
            }
            player_id.hitstop = ceil(hitpause+hitpause_growth*.05*75);
             player_id.hitstop_full = ceil(hitpause+hitpause_growth*.05*75)//hitstop for PLAYER. same if opp at 100%
            //gets the angle of the attack in the code. does NOT get the actual angle sent.
            //Basically in code if its 361, actual angle is 40 or 45, etc...
            //sakurai angles
            player_id.attackangle =   kb_angle
            //checks the hit flipper to see if should reverse or no
            player_id.shouldreverse = hit_flipper
            player_id.speedmultiplier =  11
            player_id.torren_go_zoom_now =  1
            
      //      if (player_id.attack = AT_NAIR)
          
			
          //  player_id.hsp = 0 //other.hsp
            player_id.hitpause = true; //makes it so the attack stops

           // player_id.hsp = 5
           other.hitstop = ceil(hitpause+hitpause_growth*.05*1); //histop for the ARTICLE. 
           //Same for character at 1%
    }


}

}
}

if (state == 4) {
	
	if "discushitboxone" in self {
if instance_exists(discushitboxone) {
instance_destroy(discushitboxone)
}

		
		
	}
if "discushitboxdattack" in self {
if instance_exists(discushitboxdattack) {
instance_destroy(discushitboxdattack)
} }
if "discushitboxuair" in self {
if instance_exists(discushitboxuair) {
instance_destroy(discushitboxuair)
} }

instance_destroy()
} 
