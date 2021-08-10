//UPDATE


if (!free || state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
}

//Voice or no Voice
if (state == PS_SPAWN){
	if (taunt_down){
		voiceEnabled = 1; //Hold down parry during spawn to enable voice
	} else {
		voiceEnabled = 0;
	}
}


//Float Buffer
if (down_pressed){
	downBuffer = 8;
}

if (downBuffer > 0) {
	downBuffer--;
}

if (state == PS_CROUCH &&  jump_down && (down_down || downBuffer > 0)){
	if (!free){
		y = y - 2;
	}
}


//Floating
var air = (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR);

if((state == PS_IDLE_AIR || (air && vsp > 0)) && (jump_down || up_down && can_tap_jump()) && floating == 0 || (state == PS_IDLE_AIR || (air)) && (jump_down && ( (down_down || downBuffer > 0)|| place_meeting(x,y,obj_article2) && up_down)) && floating == 0){
    floating = 1;
    floatTimer = floatMax;
    floatAnimTimer = 0;
    floatCancel = 1;
    
    
    if (state == PS_DOUBLE_JUMP && state_timer < 9){
    	djumps = 0;
	}

}


if(floating){
	
	if (!free){
		if (down_down){
			freeFloatStop = 1;
		}
	    	
			y = y - 2; //This precents the weird crouching conflict
	}
		
    grav = 0;
    moved_up = 0;
    can_fast_fall = 0;
    
    if (freeFloat > 0 && !freeFloatStop){ //Free float
        vsp = floatMoveSpeed*(down_down - up_down) + (floatDriftSpeed*(!down_down*!up_down));
    
        if (abs(down_down - up_down) > 0){
        	
            floatMoveSpeed *= 1.2;
            
            if (floatMoveSpeed > 5.5){
                floatMoveSpeed = 5.5;
            }
            
            floatDriftSpeed = floatMoveSpeed*(down_down - up_down);
            
        } else {
                floatMoveSpeed = 2;
                floatDriftSpeed *= .85;
        }
    } else { // Regular float
    
    	vsp = 0;
    }
    

    if(!((jump_down || up_down & can_tap_jump()) && (state == PS_ATTACK_AIR || air))){
    	can_fast_fall = 1;
		floating = -1;
	}
	
	if(special_pressed){
		//can_fast_fall = 1;
		//floating = -1;
	}
    
    if(floatTimer > 0){
    	can_fast_fall = 1;
        floatTimer--;
        
    }else{
    	can_fast_fall = 1;
        floating = -1;
    }
}

if(state == PS_IDLE || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH){
    floating = 0;
    move_cooldown[AT_USPECIAL] = 0;
    floatCancel = 0;
    freeFloat = 0;
    freeFloatStop = 0;
    floatRestore = 0;
    
    if (songAir){
    	songAir = 0;
    	move_cooldown[AT_DSPECIAL] = 10;
    }
} else if (floatCancel && !free && state != 5){
	floating = 0;
}

if (freeFloat > 0){
	freeFloat -= 1;
}

with asset_get("oPlayer"){
	if (id != other.id && real(url) == 1913517643){
		otherPomme_id = other.id;
		
	}
}

with(obj_article2){
	
	if (real(player_id.url == 1913517643) && place_meeting(x,y,other)){ //Pomme's song field
	
		if (other.in_songfield == 0){
			other.in_songfield = 1;
		}
		
		if (other.freeFloatStop){
			if (other.up_down){
				other.freeFloatStop = 0;
			}
		}
	
	    other.freeFloat = 20;  //.33 secs of free float refunded each time song is entered
	    
	    if (other.state == PS_ATTACK_AIR && other.attack == AT_USPECIAL ){
	    	
	    	
	    	if (other.floatRestore == 0 && other.window == 4 && other.window_timer == 7) {
	    		other.floatRestore = 1;
	    		other.floating = 0;
		    	
	    	}
	    	
	    	if (other.window == 4 && other.window_timer == 7){
		    	other.window = 5;
		    	//other.state = PS_IDLE_AIR;
		    	other.move_cooldown[AT_USPECIAL] = 99999;
		    	
	    	}
	    	
	    } 
	 
	    
	} else {
		if (other.in_songfield == 1){
			other.in_songfield = 0;
		}
	}

}

if (!instance_exists(obj_article2)){
	
	if (in_songfield == 1){
		in_songfield = 0;
	}
}


if (state == PS_RESPAWN){
	char_height = 400000; //Gorilla code
} else if (state == PS_ATTACK_AIR || air){
	char_height = 52;
}

if (state == PS_PARRY){

    with(asset_get("obj_article3")){ //If the bodyguard article is active, delete the instance upon parry
        if (player_id == other.id){
            //state = 2;

        }
    }
}

if (freeFloat){
    if (floateffectAnimTimer < floateffectAnimStripLength)
        floateffectAnimTimer += floateffectAnimSpeed;
    else
        floateffectAnimTimer = 0;
}else if (floateffectAnimTimer != 0){
	floateffectAnimTimer = 0;
}
    
//Neutral B SFX Cooldown
if (voiceEnabled){
		if (singsfxCounter <= 0){
	    set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
	} else {
	    set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
	}
	
	singsfxCounter--;
	
	if singsfxCounter < 0 {
		singsfxCounter = 0;
	}
} else {
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
}

/*
if (freemd && groundLevel != y){
	groundLevel = y;
}*/

if (!moved_up && floating){
    if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
        for (var i = 0; i < 20; i++){
            if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                y -= i;
                moved_up = true;
                break;
            }
        }
    }
}
            


//Trummel code
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 11;
    trummelcodecsprite1 = sprite_get("trummel");
    trummelcodecsprite2 = sprite_get("X");

    //Page 0
    trummelcodecspeaker[0] = 2;
    trummelcodecexpression[0] = 0;

    trummelcodecline[0,1] = "who this";
    trummelcodecline[0,2] = "";
    trummelcodecline[0,3] = "";
	trummelcodecline[0,4] = "";

    //Page 1
    trummelcodecspeaker[1] = 1;
    trummelcodecexpression[1] = 1;

    trummelcodecline[1,1] = "OH, MY GOD!! I can't";
    trummelcodecline[1,2] = "believe it. It's pop";
	trummelcodecline[1,3] = "sensation Pomme in the";
	trummelcodecline[1,4] = "flesh!";

    //Page 2
    trummelcodecspeaker[2] = 3;
    trummelcodecexpression[2] = 0;

    trummelcodecline[2,1] = "Always a pleasure to";
    trummelcodecline[2,2] = "meet a fan. <3";
    trummelcodecline[2,3] = "";
    trummelcodecline[2,4] = "";
	
	//Page 3
    trummelcodecspeaker[3] = 2;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "wait who";
    trummelcodecline[3,2] = "";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";
	
	//Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 4;

    trummelcodecline[4,1] = "Do you live under a ro--";
    trummelcodecline[4,2] = "You know? Nevermind.";
    trummelcodecline[4,3] = "Strategies!";
	trummelcodecline[4,4] = "";
	
	//Page 5
    trummelcodecspeaker[5] = 1;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "Pomme's voice may sound";
    trummelcodecline[5,2] = "angelic but be on your";
    trummelcodecline[5,3] = "guard. It packs a mighty";
    trummelcodecline[5,4] = "punch as well!";

	
	//Page 6
    trummelcodecspeaker[6] = 1;
    trummelcodecexpression[6] = 0;

    trummelcodecline[6,1] = "Normally, she can float";
	trummelcodecline[6,2] = "in the air horizontally.";
	trummelcodecline[6,3] = "";
	trummelcodecline[6,4] = "";
	
	//Page 7
    trummelcodecspeaker[7] = 1;
    trummelcodecexpression[7] = 0;

    trummelcodecline[7,1] = "When she enters her song";
	trummelcodecline[7,2] = "however, she can float";
	trummelcodecline[7,3] = "in any direction she";
	trummelcodecline[7,4] = "wants.";
	
	//Page 8
    trummelcodecspeaker[8] = 1;
    trummelcodecexpression[8] = 0;

    trummelcodecline[8,1] = "When returning back to";
	trummelcodecline[8,2] = "the stage, avoid her";
	trummelcodecline[8,3] = "song! She edgeguards";
	trummelcodecline[8,4] = "like nobody's business!";
	
	//Page 9
    trummelcodecspeaker[9] = 3;
    trummelcodecexpression[9] = 1;

    trummelcodecline[9,1] = "Oh, wow. You've certainly";
	trummelcodecline[9,2] = "done your research...";
	trummelcodecline[9,3] = "stalkerish levels of";
	trummelcodecline[9,4] = "research...";
	
	//Page 10
    trummelcodecspeaker[10] = 1
    trummelcodecexpression[10] = 5;

    trummelcodecline[10,1] = "I-its not what it looks";
	trummelcodecline[10,2] = "like, I swear! I'm an";
	trummelcodecline[10,3] = "avid player of Ri--";
	trummelcodecline[10,4] = "";
	
	//Page 11
    trummelcodecspeaker[11] = 3;
    trummelcodecexpression[11] = 1;

    trummelcodecline[11,1] = "Yeah, that's enough.";
	trummelcodecline[11,2] = "SECURITY!!";
	trummelcodecline[11,3] = "";
	trummelcodecline[11,4] = "";
}