//update.gml

if (state != PS_ATTACK_AIR || attack != AT_DAIR) {
    ralsei_dair_consecutive_shots = 0;
    if (ralsei_dair_ammo < ralsei_dair_max_ammo) {
        ralsei_dair_ammo_regen_counter++;
        if (ralsei_dair_ammo_regen_counter >= 30) {
            ralsei_dair_ammo_regen_counter = 0;
            ralsei_dair_ammo++;
        }
    }
    draw_indicator = (attack != AT_USTRONG || state != PS_ATTACK_GROUND || window <= 1 || window >= 5);
}
else draw_indicator = true;



//courage handling
if (ralsei_courage > 0) {
    ralsei_courage--;
    ralsei_tp = 0;
    ralsei_draw_tp = 0;
    ralsei_draw_time_since_last_hit = 60;
}
else {
    //tp handing
    ralsei_tp = clamp(ralsei_tp, 0, ralsei_max_tp);
    ralsei_draw_tp = min(ralsei_draw_tp, ralsei_tp);
    if (ralsei_draw_time_since_last_hit >= 40) {
        ralsei_draw_tp = min(ralsei_draw_tp + 0.5, ralsei_tp);
    }
    else {
        ralsei_draw_time_since_last_hit++;
    }
}
if (ralsei_use_super_move && (state != PS_ATTACK_GROUND || (attack != AT_DSTRONG && attack != AT_FSTRONG && attack != AT_USTRONG) )) {
	ralsei_use_super_move = 0;
}


//store last platform height while airborne
if (!free) { 
	ralsei_most_recent_ground_height = y;
	if (state_timer == 1 && (state == PS_LAND || state == PS_LANDING_LAG)) {
		with (obj_article2) {
			if (player_id != other) continue;
			if (bounce_height < player_id.y) bounce_height = player_id.y;
		}
	}
	
}

//heart handling
if (ralsei_heart_active) {
    //can't run or shield
    can_shield = false;
    has_airdodge = false;
    
    //restore airdodge when landing
    if (!free) ralsei_heart_has_airdodge_before_activating = true;
    //clamp speed in the air
    else if (state == PS_IDLE_AIR) hsp = clamp(hsp, -walk_speed, walk_speed);

    switch (state) {
        case PS_DASH_START:
        	sound_stop(asset_get("sfx_dash_start"));
        	
        case PS_DASH_TURN:
        case PS_DASH:
        case PS_IDLE:
    	case PS_PARRY_START:	
            if (down_down) {
            	state = PS_CROUCH;
            }
            else {
            	set_state(PS_ATTACK_GROUND);
	            attack = AT_EXTRA_1;
	            window = 1;
	            window_timer = 0;
            }
        break;
        //case PS_PARRY_START:
        //    state = PS_IDLE;
        //break;
    }
    
    //disable after 5 seconds
    //if (ralsei_tp == ralsei_max_tp) {
    	ralsei_heart_deactivate_timer++;
    	if (ralsei_heart_deactivate_timer >= 300) {
    		ralsei_heart_active = false;
	    	has_airdodge = (!free || ralsei_heart_has_airdodge_before_activating);
			sound_play(sound_get("dr_powerup"), 0, noone, 0.5, 1);
    	}
    //}
}
else {
	ralsei_heart_deactivate_timer = 0;
}

if (instance_exists(ralsei_bair_bullet_hit_player_object_id)) {
    if (attack == AT_BAIR && has_hit_player && ralsei_bair_bullet_hit_player_object_id.activated_kill_effect) {
	    ralsei_bair_buffer = 120;
    }

    if (ralsei_bair_buffer > 0) {
    
        ralsei_bair_buffer--;
        
        if (ralsei_bair_bullet_hit_player_object_id.state == PS_DEAD || ralsei_bair_bullet_hit_player_object_id.state == PS_RESPAWN) {
            ralsei_bair_bullet_hit_player_object_id = noone;
            
            if (ralsei_bair_mlg_counter == 0) {
        		sound_play(sound_get("mlg"));
        	}
        	else {
        		sound_play(sound_get("mlg_short"));
        	}
        	ralsei_bair_mlg_counter++;
        	ralsei_bair_buffer = 0;
        }
    }
}
else {
    ralsei_bair_buffer = 0;
    
    //grenade roll rune
    if (has_rune("F") && (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) && state_timer == 10 && !hitpause) {
    	var nade = instance_create(x, y - 30, "obj_article1");
		nade.spr_dir = spr_dir;
		nade.article_index = 5;
		nade.vsp = -3;
    } 
}

//outline handling
//var prev_outline_color = outline_color;
if (ralsei_use_super_move || (ralsei_tp == ralsei_max_tp && get_gameplay_time() mod 30 > 20) ) {
	outline_color = ralsei_super_blink_color;
}
else if (ralsei_courage > 0) {
	outline_color = ralsei_courage_blink_color;
}
init_shader();
outline_color = [0, 0, 0];










//character compatibility
if (ralsei_check_character_compatibility == false) {
	ralsei_check_character_compatibility = true;
	
	ralsei_trummel_player_id = noone;
	if (url != 2249417003) { ralsei_trigger = 1; }
	with (oPlayer) {
	    switch (url) {
	        case 1933111975:
	            other.ralsei_trummel_player_id = id;
	            trummelcodecneeded = false;
	            trummelcodec_id = noone;
	            bonuscodec = false
	        break;
	        case 1932454633:
	            tcoart = sprite_get("tco_by_snolid_ice");
	        break;
	    }
	}
}


//trummel
if (ralsei_trummel_player_id == noone) exit;
	

if trummelcodecneeded {
    trummelcodec = 17;
    trummelcodecsprite1 = sprite_get("ralseicodec");
    trummelcodecsprite2 = sprite_get("altospooked");
    var page = 0;
    switch (bonuscodec) {
    case false: //Normal Codec
        trummelcodecmax = 7;
        //Page 0
        trummelcodecspeaker[page] = 1; //Alto
        trummelcodecexpression[page] = 2; //Alto's "thoughtful" face
 
        trummelcodecline[page,1] = "That's Ralsei, the Lonely";
        trummelcodecline[page,2] = "Prince of the Dark World!";
        trummelcodecline[page,3] = "But there's something,";
        trummelcodecline[page,4] = "weird, about him...";
        page++;
 
        //Page 1
        trummelcodecspeaker[page] = 2; //Trummel
        trummelcodecexpression[page] = 0; 
 
        trummelcodecline[page,1] = "for his everything";
        trummelcodecline[page,2] = "he uses a gun";
        trummelcodecline[page,3] = "";
        trummelcodecline[page,4] = "";
        page++;
 
        //Page 2
        trummelcodecspeaker[page] = 1; //Alto
        trummelcodecexpression[page] = 1; 
 
        trummelcodecline[page,1] = "Oh, yeah! Instead of only";
        trummelcodecline[page,2] = "using magic and Kris's TP";
        trummelcodecline[page,3] = "Meter, he'll use a whole";
        trummelcodecline[page,4] = "arsenal of weaponry."; 
        page++;
        
        //Page 3
        trummelcodecspeaker[page] = 2; //Trummel
        trummelcodecexpression[page] = 0; 
 
        trummelcodecline[page,1] = "what";
        trummelcodecline[page,2] = "";
        trummelcodecline[page,3] = "are we fighting katie 2";
        trummelcodecline[page,4] = ""; 
        page++;
        
        //Page 4
        trummelcodecspeaker[page] = 1; //Alto
        trummelcodecexpression[page] = 0; 
 
        trummelcodecline[page,1] = "Not really, the meter";
        trummelcodecline[page,2] = "is used with his strongs";
        trummelcodecline[page,3] = "while his neutral special";
        trummelcodecline[page,4] = "is a outright BUSTED gun."; 
        page++;
        
        //Page 5
        trummelcodecspeaker[page] = 1; //Alto
        trummelcodecexpression[page] = 2; 
 
        trummelcodecline[page,1] = "I'm serious! The frame";
        trummelcodecline[page,2] = "data on it means he'll";
        trummelcodecline[page,3] = "shoot us before we can";
        trummelcodecline[page,4] = "even shoot..."; 
        page++;
        
        //Page 6
        trummelcodecspeaker[page] = 1; //Alto
        trummelcodecexpression[page] = 4; 
 
        trummelcodecline[page,1] = "And due to his SOUL";
        trummelcodecline[page,2] = "mode, even if we shot";
        trummelcodecline[page,3] = "before him, he'll just";
        trummelcodecline[page,4] = "graze it and gain TP!"; 
        page++;
        
        //Page 7
        trummelcodecspeaker[page] = 1; //Alto
        trummelcodecexpression[page] = 0; 
 
        trummelcodecline[page,1] = "It is just a better idea";
        trummelcodecline[page,2] = "to rush him down instead,";
        trummelcodecline[page,3] = "as he doesn't pose much";
        trummelcodecline[page,4] = "threat when up close."; 
        page++;
    break;
    case true: //Bonus Codec
        trummelcodecmax = 6;
        //Page 0
        trummelcodecspeaker[page] = 1; //Alto
        trummelcodecexpression[page] = 0;
 
        trummelcodecline[page,1] = "Hey, Ralsei, aren't you";
        trummelcodecline[page,2] = "supposed to be the healer";
        trummelcodecline[page,3] = "of the trio? Why do you";
        trummelcodecline[page,4] = "even have those guns?";
        page++;
        //Page 1
        trummelcodecspeaker[page] = 3; //Ralsei
        trummelcodecexpression[page] = 0;
 
        trummelcodecline[page,1] = "Oh, they're not usually";
        trummelcodecline[page,2] = "weapons, I typically use";
        trummelcodecline[page,3] = "them as cooking utensils.";
        trummelcodecline[page,4] = "";
        page++;
        //Page 2
        trummelcodecspeaker[page] = 1; //Alto
        trummelcodecexpression[page] = 2;
 
        trummelcodecline[page,1] = "...cooking utensils?";
        trummelcodecline[page,2] = "";
        trummelcodecline[page,3] = "";
        trummelcodecline[page,4] = "";
        page++;
        //Page 3
        trummelcodecspeaker[page] = 3; //Ralsei
        trummelcodecexpression[page] = 0;
 
        trummelcodecline[page,1] = "Exactly! A revolver to";
        trummelcodecline[page,2] = "stir ramen, a buckshot";
        trummelcodecline[page,3] = "of spices and a missile";
        trummelcodecline[page,4] = "for extra punch.";
        page++;
        //Page 4
        trummelcodecspeaker[page] = 3; //Ralsei
        trummelcodecexpression[page] = 1;
 
        trummelcodecline[page,1] = "Even a cake will taste";
        trummelcodecline[page,2] = "better after cooking it";
        trummelcodecline[page,3] = "within a Pulsar Cannon,";
        trummelcodecline[page,4] = "after all!";
        page++;
        //Page 5
        trummelcodecspeaker[page] = 4; //Alto but scared
        trummelcodecexpression[page] = 0;
 
        trummelcodecline[page,1] = ". . . . .";
        trummelcodecline[page,2] = "";
        trummelcodecline[page,3] = "";
        trummelcodecline[page,4] = "";
        page++;
        //Page 6
        trummelcodecspeaker[page] = 1; //Alto
        trummelcodecexpression[page] = 1;
 
        trummelcodecline[page,1] = ". . .I'll, u-uh, keep";
        trummelcodecline[page,2] = "those tips in mind for";
        trummelcodecline[page,3] = "later? Thanks?";
        trummelcodecline[page,4] = "";
        page++;
    break;
    }
    trummelcodecmax = page-1
    
}


if (ralsei_trummel_player_id.state == PS_ATTACK_GROUND && ralsei_trummel_player_id.attack == AT_TAUNT) {
	//remove prompt when trummel taunts
	ralsei_training_prompt = false;
}
else {
	//bonus codec when ralsei has full meter + trummel isn't taunting
	if (ralsei_tp == ralsei_max_tp) bonuscodec = true;
}
