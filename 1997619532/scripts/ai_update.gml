//ai_update - called every frame for this character as a CPU
if (get_training_cpu_action() == CPU_FIGHT){	

has_walljump = true

if attack == AT_USPECIAL && window == 3 {
	y -= 3
}

if state_cat == SC_HITSTUN {
	hsp /= 1.008
	if x > room_width/2 - 400 and x < room_width/2 - 400 {
		vsp += 0.4
	} 
}

if get_gameplay_time() == 20 {
	sakura = 1
}



if !free and ground_type == 2 and ai_target.y < y {
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

if state == PS_RESPAWN && visible {
	move_cooldown[AT_TAUNT] = 0 ;
	set_attack(AT_TAUNT)
}

if (can_attack and attack != (AT_TAUNT) and targetbusy and move_cooldown[AT_TAUNT] == 0){
    taunt_pressed = true;
}

if get_gameplay_time() > 100 and !targetbusy or state_cat = SC_HITSTUN {
	move_cooldown[AT_TAUNT] = 80 ;
}


// Chase the opponent down

if  !free and ((ai_target.state != PS_ATTACK_AIR or ai_target.state != PS_ATTACK_GROUND) and (state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN) or (!ai_recovering  or edgeguard) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and !targetbusy and xrange > 100){

	if ai_target.x > x{
        right_hard_pressed = true;

        
    } else {
         left_hard_pressed  = true;

}
}

if !free and ((state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN) and (ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND) and xrange > 60) {
    if ai_target.x > x{
        right_down = true;
        shield_pressed = true;
        
    } else {
         left_down = true;
          shield_pressed = true;
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

if (can_attack and !free and xrange < 120 and yrange < 40 and !targetbusy){
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

    if get_gameplay_time() mod 5 == 0 and 80 > ydist and xdist > 160 and 420 > xdist{ // Dattack
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


    
    
// Ftilt    
    
 if (can_attack and !free and xrange < 160 and y > ai_target.y and xrange > 20 and yrange < 80 and !targetbusy){
    clear_button_buffer( PC_ATTACK_PRESSED );
    if ai_target.x < x{
        left_strong_pressed = true;
    } else {

        right_strong_pressed = true;
    }
}






// Utilt
if (can_attack and !free and xrange < 60 and yrange < 120 and yrange > 70 and y > ai_target.y and !targetbusy){
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


   

    
    
    
//Fspecial

if can_attack and xrange < 600 and xrange > 100  and yrange < 100 and move_cooldown[AT_FSPECIAL] = 0 {
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
    
if can_attack and yrange < 600 and yrange > 100 and ai_target.y < y  and xrange < 100 and move_cooldown[AT_USPECIAL] = 0 {
       if ai_target.x < x{
        left_down = true;

        right_down = false;
    } else {
        left_down = false;

        right_down = true;
    }
    up_down = true;
    special_pressed = true;
    attack_pressed = false;
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
    atkwidth = get_hitbox_value( AT_NAIR, 1, HG_WIDTH ) + 120;
    atkheight = get_hitbox_value( AT_NAIR, 1, HG_HEIGHT ) + 120;
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
    atkwidth = get_hitbox_value( AT_UAIR, 1, HG_WIDTH ) + 120;
    atkheight = get_hitbox_value( AT_UAIR, 1, HG_HEIGHT ) + 120;
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




if (ai_recovering and offstage){
	
			if x > room_width/2 {
				spr_dir = -1
			  left_down = true;
            right_down = false;
		}
        
        if x < room_width/2 {
        	spr_dir = 1
			  left_down = false;
            right_down = true;
		}
		
	if move_cooldown[AT_FSPECIAL] == 0 {

		   up_down = false
            special_pressed = true;
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

if (ai_recovering and offstage and !has_airdodge and !has_walljump and move_cooldown[AT_USPECIAL] > 0 and djumps == max_djumps and vsp < 2){
	        
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



if (move_cooldown[AT_DSPECIAL] = 0 and attack != AT_DSPECIAL and can_attack and ai_target.state == PS_ATTACK_GROUND and xrange < 80 and yrange < 30) { 
	shield_pressed = true
}



if(attack == AT_USPECIAL){
	
	can_fast_fall = false ;
}



///DI





}
