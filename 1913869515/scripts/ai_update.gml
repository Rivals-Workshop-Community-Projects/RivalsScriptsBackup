//ai_update - called every frame for this character as a 

has_walljump = true
if (get_training_cpu_action() == CPU_FIGHT){
	
	offense = 1
if state != PS_HITSTUN && free {
	if hsp > 8 or hsp < -8 {
		hsp/= 1.2
	}
}


if state == PS_JUMPSQUAT && state_timer == 1 {
	
	if get_gameplay_time() % 3 == 1 {
		set_state (PS_AIR_DODGE)
	}
	
}


    if state == PS_WAVELAND && state_timer <= 1 {
    	
    	if ai_target.state_cat != SC_HITSTUN {
    	if get_gameplay_time() % 2 == 1 {
    		hsp = 10
    	}
    	
    	if get_gameplay_time() % 2 == 0 {
    		hsp = -10
    	}
    	}
    	
    	if ai_target.state_cat == SC_HITSTUN {
    		if ai_target.x > x {
    			hsp = 10
    		}
    		
    		if ai_target.x < x {
    	     	hsp = -10
    		}
    	}
    }
    
    

if state == PS_ATTACK_AIR && xrange < 60 and yrange < 60 and !hitpause && window == 1 && window_timer == 1{
	if attack == AT_FAIR or attack == AT_NAIR or attack == AT_UAIR or attack == AT_BAIR or attack == AT_USPECIAL 
	or attack == AT_NSPECIAL or attack == AT_UTILT or attack == AT_USTRONG {
		hsp += min( (hit_player_obj.x  - x + (55 * spr_dir)) / 12, 4 )
		vsp -= min( (hit_player_obj.y - 35 - y) / 12, 4 )
	}
}
if (get_training_cpu_action() == CPU_FIGHT){
	
if state == PS_JUMPSQUAT && state_timer == 1 {
	
	if get_gameplay_time() % 3 < 2 {
		set_state (PS_AIR_DODGE)
	}
	
}

    if !free && can_jump && can_shield && get_gameplay_time() % 10 == random_func(9, 10, true) {
    	if get_gameplay_time() % 10 >= 3 {
    	set_state (PS_AIR_DODGE)
    	}
    }
    
    if !free && can_jump && ai_target.y > y {
	
 y += 20	
}

    if state == PS_WAVELAND && state_timer <= 1 {
    	
    	if ai_target.state_cat != SC_HITSTUN {
    	
    	if y > ai_target.y - 70 { 
    	if 	xrange < 200 && (ai_target.state == PS_ATTACK_GROUND or ai_target.state == PS_ATTACK_AIR) {
    		if ai_target.x < x {
    			hsp = 12
    		}
    		
    		if ai_target.x > x {
    	     	hsp = -12
    		}
    	} else {
    	
    	if get_gameplay_time() % 2 == 1 {
    		hsp = 12
    	}
    	
    	if get_gameplay_time() % 2 == 0 {
    		hsp = -12
    	}
    	}
    	
    	if ai_target.x > x {
    			hsp = 12
    		}
    		
    		if ai_target.x < x {
    	     	hsp = -12
    		}
    		
    		
    	} else {
    		if ai_target.x < x {
    			hsp = 12
    		}
    		
    		if ai_target.x > x {
    	     	hsp = -12
    		}
    	}
    	
    	}
    	
    	if ai_target.state_cat == SC_HITSTUN {
    		
    		if ai_target.x > x {
    			hsp = 14
    		}
    		
    		if ai_target.x < x {
    	     	hsp = -14
    		}
    	}
    }


temp_level = 9;

if get_gameplay_time() == 20 {
	zvoice = 1
}


if !free and  ai_target.y < y {
	y += 5
}

xrange = abs(ai_target.x - x);
yrange = abs(y - ai_target.y);
xdist = (ai_target.x - x)
ydist = (y - ai_target.y)
damage = get_player_damage( ai_target.player );
facing = false;

targetbusy = false;
if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN){
    targetbusy = true;
}

targetstun = false;


if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN or ai_target.invince_time > 10){
    targetbusy = true;
}

var stage_x = get_stage_data( SD_X_POS )
var blastzone = get_stage_data( SD_SIDE_BLASTZONE )

offstage = true;
if (x > stage_x + 100 and x < (room_width - stage_x) - 100) and y > ai_target.y {
    offstage = false;
}

edgeguard = true;
if targetbusy or ai_target.free == false or xdist < 100 or (ai_target.x > (stage_x - blastzone) + 200) and (ai_target.x < ((room_width - stage_x) + blastzone) - 200){
    edgeguard = false;
}

if (ai_target.spr_dir = 1 and ai_target.x < x and spr_dir = -1) or (ai_target.spr_dir = -1 and ai_target.x > x and spr_dir = 1){
    facing = true;
}

	zwill = random_func(11, 5, true);

	
///taunt

if (free){
	
	move_cooldown[AT_FSPECIAL] = 1.1 ;
}

if state == PS_RESPAWN && visible {
	move_cooldown[AT_TAUNT] = 0 ;
	if zwill == 0 {
	set_attack (AT_TAUNT);
	window = 2;
    }
if zwill == 1 {
	set_attack (AT_TAUNT);
	window = 17;
}

if zwill == 2 {
	set_attack (AT_TAUNT);
	window = 16;
	if get_player_color(player) == 1{
            	      sound_play(sound_get("tauntUV"));
            
            } else {
            	sound_play(sound_get("tauntU"));
            }
}

if zwill == 3 {
	set_attack (AT_TAUNT);
	window = 18;
}

if zwill == 4 {
	set_attack (AT_TAUNT);
	window = 7;
	 if get_player_color(player) == 1{
            	      sound_play(sound_get("tauntV"));
            
            } else {
            	sound_play(sound_get("taunt"));
            }
}
window_timer = 0
}

if (can_attack and attack != (AT_TAUNT) and targetbusy and move_cooldown[AT_TAUNT] == 0){
    taunt_pressed = true;
    
}

if !targetbusy or state_cat = SC_HITSTUN {
	move_cooldown[AT_TAUNT] = 80 ;
}

	

if attack = (AT_TAUNT) && window == 1 && state == PS_ATTACK_GROUND {
	
if zwill == 0 {
	set_attack (AT_TAUNT);
	window = 2;
	
}
if zwill == 1 {
	set_attack (AT_TAUNT);
	window = 17;
}

if zwill == 2 {
	set_attack (AT_TAUNT);
	window = 16;
	if get_player_color(player) == 1{
            	      sound_play(sound_get("tauntUV"));
            
            } else {
            	sound_play(sound_get("tauntU"));
            }
}

if zwill == 3 {
	set_attack (AT_TAUNT);
	window = 18;
}

if zwill == 4 {
	set_attack (AT_TAUNT);
	window = 7;
	 if get_player_color(player) == 1{
            	      sound_play(sound_get("tauntV"));
            
            } else {
            	sound_play(sound_get("taunt"));
            }
}

}

// Chase the opponent down

if  !free and ((ai_target.state != PS_ATTACK_AIR or ai_target.state != PS_ATTACK_GROUND) and (state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN) or (!ai_recovering  or edgeguard) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and !targetbusy and xrange > 100){

	if ai_target.x > x{
        right_hard_pressed = true;

        
    } else {
         left_hard_pressed  = true;

}
}


// Jab
if (facing and can_attack and !free and xrange < 80 and yrange < 66 and yrange > 30 and (attack != AT_JAB or window < 9 and has_hit) and !targetbusy){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    special_pressed = false;
    attack_pressed = true;
}

if (attack == AT_JAB){
if (window == 9 && has_hit){
        special_pressed = true;
}
}

// Dtilt

if ai_target.state_cat != SC_HITSTUN {
if (can_attack and !free and xrange < 90 and yrange < 40 and !targetbusy){
    if ai_target.x < x{
        left_down = true;
        down_down = true;
        right_down = false;
    } else {
        left_down = false;
        down_down = true;
        right_down = true;
    }
    special_pressed = false;
    attack_pressed = true;
}
} else {
	
	if (can_attack and !free and xrange < 96 and yrange < 60 and !targetbusy){
        left_down = false;
        down_down = false;
        right_down = false;
        left_down = false;
    special_pressed = false;
    attack_pressed = true;
	}
}

if facing and (attack == AT_JAB){
	
    
	 if (window == 3 && window_timer == 11){
	 	
	 	special_pressed = true ;
   
            
        }
    }
    
    
// Ftilt    
    
    if (can_attack and !free and xrange < 140 and y > ai_target.y and xrange > 70 and yrange < 60 and !targetbusy){
    clear_button_buffer( PC_ATTACK_PRESSED );
    if ai_target.x < x{
        left_strong_pressed = true;
    } else {

        right_strong_pressed = true;
    }
}






// Utilt
if (can_attack and !free and xrange < 60 and yrange < 110 and yrange > 60 and y > ai_target.y and !targetbusy){
    if ai_target.x < x{
        left_down = true;
        up_down = true;
        right_down = false;
    } else {
        left_down = false;
        up_down = true;
        right_down = true;
    }
    special_pressed = false;
    attack_pressed = true;
}


   

//Nspecial

if halo >= 1 && (facing and can_attack and abs(hsp) < 50 and xrange < 250 and xrange > 60 and yrange < 80 and y + 40 > ai_target.y and move_cooldown[AT_NSPECIAL] = 0 ){
	shield_pressed = false;
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    down_down = false;
    special_pressed = true;
    attack_pressed = false;
}


    
 
    
//Fspecial

if (!free and can_attack and xrange > 120 and move_cooldown[AT_FSPECIAL] = 0 ){
	vsp = -6
       if ai_target.x < x{
        left_down = true;

        right_down = false;
    } else {
        left_down = false;

        right_down = true;
    }
    special_pressed = true;
    attack_pressed = false;
}

    
// Uspecial   
    
    if halo >= 1 && (facing and ai_target.state_cat != SC_HITSTUN and move_cooldown[AT_USPECIAL] = 0 and can_attack and xrange < 300 and xrange > 100 and ai_target.y < y + 40 and yrange < 100 and move_cooldown[AT_USPECIAL] = 0 and !targetbusy){
    clear_button_buffer( PC_ATTACK_PRESSED );
    joy_pad_idle = true;
    if ai_target.x < x{
        left_down = true;
         up_down = true;
        right_down = false;
    } else {
        left_down = false;
         up_down = true;
        right_down = true;
    }
    special_pressed = true;
    attack_pressed = false;
    
    if (attack == AT_USPECIAL and offstage) {
    	if (window == 1 ){
        special_down = true ;
   
            
        }
      
    	
    }
}

    if get_gameplay_time() mod 5 == 0 and 60 > ydist and xdist > 120 and 400 > xdist{ // Dattack
        clear_button_buffer( PC_ATTACK_PRESSED );
		if ai_target.x > x{
			right_hard_pressed = true;
		} 
		else {
			left_hard_pressed = true;
			}
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
		}

// Aerials
if free and can_attack and !targetbusy{
    goingforspike = false;
    
    if xrange < 150 and yrange < 30{ // Fair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        if ai_target.x < x{
            left_down = true;
            right_down = false;
        } else {
            left_down = false;
            right_down = true;
        }
        up_down = false;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
    
    // Position Check (I wouldn't have had to repeat this if there was custom function support...)
    atkwidth = get_hitbox_value( AT_DAIR, 1, HG_WIDTH ) + 120;
    atkheight = get_hitbox_value( AT_DAIR, 1, HG_HEIGHT ) + 120;
    xpos = get_hitbox_value( AT_DAIR, 1, HG_HITBOX_X ) * spr_dir;
    ypos = get_hitbox_value( AT_DAIR, 1, HG_HITBOX_Y );
    in_range = false;
    if (ydist < ((atkheight * 0.5) - ypos)) and (ydist > ((atkheight * -0.5) - ypos)) and (xdist < ((atkwidth * 0.5) + xpos)) and (xdist > ((atkwidth * -0.5) + xpos)){
        in_range = true;
    }
    
    
    // Position Check (I wouldn't have had to repeat this if there was custom function support...)
    atkwidth = get_hitbox_value( AT_NAIR, 1, HG_WIDTH ) + 90;
    atkheight = get_hitbox_value( AT_NAIR, 1, HG_HEIGHT ) + 90;
    xpos = get_hitbox_value( AT_NAIR, 1, HG_HITBOX_X ) * spr_dir;
    ypos = get_hitbox_value( AT_NAIR, 1, HG_HITBOX_Y );
    in_range = false;
    if (y - 70 > ai_target.y and ydist < ((atkheight * 0.5) - ypos)) and (ydist > ((atkheight * -0.5) - ypos)) and (xdist < ((atkwidth * 0.5) + xpos)) and (xdist > ((atkwidth * -0.5) + xpos)){
        in_range = true;
    }
    
    if in_range and !goingforspike{ // Nair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
    
    // Position Check (I wouldn't have had to repeat this if there was custom function support...)
    atkwidth = get_hitbox_value( AT_UAIR, 1, HG_WIDTH ) + 80;
    atkheight = get_hitbox_value( AT_UAIR, 1, HG_HEIGHT ) + 80;
    xpos = get_hitbox_value( AT_UAIR, 1, HG_HITBOX_X ) * spr_dir;
    ypos = get_hitbox_value( AT_UAIR, 1, HG_HITBOX_Y );
    in_range = false;
    if !edgeguard and (ydist < ((atkheight * 0.5) - ypos)) and (ydist > ((atkheight * -0.5) - ypos)) and (xdist < ((atkwidth * 0.5) + xpos)) and (xdist > ((atkwidth * -0.5) + xpos)){
        in_range = true;
    }
    
    if in_range and !goingforspike{ // Uair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = true;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }


// Position Check (I wouldn't have had to repeat this if there was custom function support...)
   if (y > ai_target.y - 80) and (y < ai_target.y) and xdist < 40{ // Dair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
}


//recover


if (ai_recovering and attack == AT_USPECIAL) or xrange < 100{
	
	      	special_down = true;

}


if (ai_recovering and offstage){
	
		if x > room_width/2 {
			  left_down = true;
            right_down = false;
		}
        
        if x < room_width/2 {
			  left_down = false;
            right_down = true;
		}
		
	 if (has_airdodge and vsp < 2){
	      	up_down = true;
            left_down = false;
            right_down = false;
            shield_pressed = true;
	 }
	
     if (move_cooldown[AT_USPECIAL] > 0 and vsp < 2){
        if (!has_airdodge and (has_walljump || y < get_stage_data(SD_Y_POS) + 16) && y > get_stage_data(SD_Y_POS) - 32){
            jump_pressed = true
        }
    }
}

if can_attack and (ai_recovering and offstage and !has_airdodge and !has_walljump and move_cooldown[AT_USPECIAL] > 0 and djumps == max_djumps and vsp < 2){
	        
	        joy_pad_idle = true;
	      	up_down = false;
            left_down = false;
            right_down = false;
            down_down = true;
            attack_pressed = true;
            special_pressed = false;
	 }




// Ladder Combo 
if djumps < max_djumps and can_jump and yrange > 70 and y > ai_target.y and xrange < 70 and abs(hsp) < 50 {
    jump_down = true;
}

//Fast fall

if !offstage and free and ai_target.y - 120 > y {
	joy_pad_idle = true;
	down_hard_pressed = true;
}

if !offstage and !free and ai_target.y - 70 > y and !ai_target.free {
	joy_pad_idle = true;
	down_hard_pressed = true;
}

if !offstage and free and has_hit_player and hitpause and can_fast_fall and get_stage_data(SD_Y_POS) - y > 60 and 1 > get_stage_data(SD_Y_POS) - y {
	joy_pad_idle = true;
	down_hard_pressed = true;
}
	

//Ustrong
if (ai_target.state_cat == SC_HITSTUN and abs(hsp) < 50 and y > ai_target.y and  can_strong and !free and xrange < 100 and xrange > 45 and yrange < 60 and damage >= 60 and !targetbusy){
    joy_pad_idle = true; 

    special_pressed = false;
    attack_pressed = false;
    if ai_target.x < x{
    	left_down = true
        up_strong_pressed = true;
    } else {
        right_down = true;
        up_strong_pressed = true;
    }
}


//Dstrong
if (ai_target.state_cat == SC_HITSTUN and abs(hsp) < 50 and can_strong and  y > ai_target.y and !free and facing and xrange < 45 and yrange < 120 and damage >= 40 and !targetbusy){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    special_pressed = false;
    attack_pressed = false;
    if ai_target.x < x{
        down_strong_pressed = true;
    } else {
        down_strong_pressed = true;
    }
}

if (attack == AT_DSTRONG){
    if (window == 8){
   special_pressed = true ;

            
    }
}




///Counter


if (move_cooldown[AT_DSPECIAL] = 0 and attack != AT_DSPECIAL and can_attack and ai_target.state == PS_ATTACK_AIR and xrange < 80 and yrange < 80) { 
	set_attack (AT_DSPECIAL);
}
if (move_cooldown[AT_DSPECIAL] = 0 and attack != AT_DSPECIAL and can_attack and ai_target.state == PS_ATTACK_GROUND and xrange < 80 and yrange < 80) { 
	set_attack (AT_DSPECIAL);
}




if(attack == AT_USPECIAL){
	
	can_fast_fall = false ;
}



///DI


if state_cat = SC_HITSTUN{
	hsp /= 1.002
	vsp /= 1.002
	if hitpause {
		
	
			if zwill = 1 {
				if x > ai_target.x{
					left_down = false;
					right_down = true;
				} else {
					left_down = true;
					right_down = false;
				}
			}
			if zwill = 2 {
				if x > ai_target.x{
					left_down = true;
					right_down = false;
				} else {
					left_down = false;
					right_down = true;
				}
			}
			if zwill = 3 {
				down_down = true
			}
			if zwill = 4 {
				up_down = true
			}
		
		}
	}


}

}
