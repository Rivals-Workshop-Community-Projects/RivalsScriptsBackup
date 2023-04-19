//update
// Online/Versus Mode Testing
if get_player_color(player) == 29{
	if wearing_hat == 1 {
		if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
			wearing_hat = -1;
			if get_player_color(player) == 29{
				var newfx = spawn_hit_fx(x, y, fx_sprites[5]);
			} else {
				var newfx = spawn_hit_fx(x, y, fx_sprites[0]);
			}
			newfx.depth = depth-1;
		}
	} else if wearing_hat == -1 {
		if state == PS_RESPAWN or state == PS_SPAWN {
			wearing_hat = 1;
		}
	}
}

if get_gameplay_time() < 120 and futurechanges{
	if jump_pressed{
		clear_button_buffer(PC_JUMP_PRESSED);
		if proposed_balance{
			print_debug("Testing Mode Deactivated");
	        proposed_balance = false;
		} else {
			print_debug("Testing Mode Active");
	        proposed_balance = true;
		}
	}
}

if get_gameplay_time() < 120{
	if get_player_color(player) == 29{
		if attack_pressed and !change_color{
			change_color = true;
			sound_play(asset_get("mfx_star"))
		}
	}
}

if change_color{
	switch(get_player_color(player)){
		case 29:
			set_character_color_slot( 0, 255, 247, 1 ); //Fur
			set_character_color_slot( 1, 209, 189, 76 ); //Hair/Tail
			set_character_color_slot( 2, 99, 211, 171 ); //Floof
			set_character_color_slot( 3, 89, 150, 93 ); //Jacket
			set_character_color_slot( 4, 54, 109, 67 ); //Skirt
			set_character_color_slot( 5, 54, 109, 67 ); //Boots
			set_character_color_slot( 6, 125, 225, 240 ); //Umbrella
			set_character_color_slot( 7, 255, 247, 1 ); //IceIceBaby
			break;
	}
}

if get_gameplay_time() == 2{
	if taunt_down{
		sound_play(asset_get("mfx_star"));
		clear_button_buffer(PC_TAUNT_PRESSED);
		sfx_snap = sound_get("sfx_secretsnap");
	}
}

//tipper sprite replacer
with pHitBox {
	if player_id == other && hitbox_timer == 0 {
	    is_tipperbox = 0;
	    with other {
	    	other.hboxShape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
	    	other.is_tipperbox = get_hitbox_value(other.attack, other.hbox_num, HG_TIPPER);
	    }
	    if is_tipperbox {
	    	switch(hboxShape){
	    		case 0:
	    			sprite_index = other.tipperbox_cir_sprite;
	    			break;
	    		case 1:
	    			sprite_index = other.tipperbox_rec_sprite;
	    			break;
	    		case 2:
	    			sprite_index = other.tipperbox_roundrec_sprite;
	    			break;
	    	}
	    }
	}
}

if move_cooldown[AT_FSTRONG] != 0{
	col_arrow = c_dkgray;
	if move_cooldown[AT_FSTRONG] == 1{
		// Play Sound
		sound_play(asset_get("mfx_star"));
	}
} else {
	col_arrow = get_player_hud_color(player);
}

if(variable_instance_exists(id,"diag"))
{
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Bold of you to assume I care.",
    "This is a brand new coat. You had best hope you don't get it dirty.",
    "I'm a busy woman, and you're not exactly worth my time.",
	"(I'm sure Everest won't mind if I return home a little late...)",
	"Fair warning, you may well regret picking this fight."]
}

switch(get_player_color(player)){
	case 16:	// Pride
		hue+=1 if hue>255 hue-=255;
		//make hue shift every step + loop around
	
		color_rgb=make_color_rgb(240, 112, 160);
		//make a gamemaker color variable using kris' default color (sword)
		hue2=(color_get_hue(color_rgb)+hue) mod 255;
		//shift that colour by Hue, make sure it also loops
		color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
		//make a gamemaker color variable using the new hue
		set_character_color_slot(7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
		//set the new color using rgb values from the gamemaker color
		break;
	case 18:	// Gold
		outline_color = [76, 53, 0];
		init_shader();
		break;
}
if state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD{
	if state_timer == 1{
		spawn_hit_fx(x-6, y-8, vfx_roll_clone);
	}
}

if state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND{
	// check if you're on the ground
	if !free{
		gliding = false;
		uspecialcap = 0;
		boom_rune_touched = false;
		speed_rune_touched = false;
		// prevents people from being stupid >:(
	}
	charging = false;
	uspec_cool_time = 0;
	do_dairhit2 = false;
	//max_fall = 9.5;		// 6    -  11
}

if (state == PS_PRATFALL and uspec_cool_time <= 0) and gliding = true{
	if up_pressed{
		state = PS_ATTACK_AIR;
		attack = AT_USPECIAL;
		window = 3;
		window_timer = get_window_value(attack, 3, AG_WINDOW_LENGTH);
		uspec_cool_time = uspec_cooldown;
	}
}
if state == PS_PRATFALL and uspec_cool_time > 0 and gliding{
	uspec_cool_time--;
}

if gliding{
	can_fast_fall = false;
}

if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
	if attack == AT_NSPECIAL{
		if window == 2{
	    	if (shield_pressed){
	        	clear_button_buffer(PC_SHIELD_PRESSED);
	            window = 5;
	            window_timer = 0;
	        }
		}
	}
	if attack == AT_FSPECIAL{
		if window == 1 and window_timer == 0{
			if charge <= 0{
				attack = AT_FSPECIAL_2;
			} else {
				charge--;
			}
		}
	}
}

//Update.gml
if(variable_instance_exists(id,"bTut_mssn_mode") && bTut_mssn_mode) //Checks if mission mode is on!
{
    switch(bTut_mssn) //checks what mission youre on
    {
        case 0:
        	for(var i = 0; i < 3; i++){
        		bTut_mssn_cmbo_moves[i] = "Place a Rune"; //Show off D-Special
        	}
            
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
            	case 0:
            	case 1:
            	case 2:
	            	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
	            		if (attack == AT_DSPECIAL){
	            			if window == 1 and window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) - 1{
	            				if !special_down{
	            					missionNext();
	            				}
	            			}
	            		}
	            	}
            		break;
            }
            break;
        case 1:
        	for(var i = 0; i < 3; i++){
        		bTut_mssn_cmbo_moves[i] = "USpecial"; //Show off U-Special
        	}
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
            	case 0:
            	case 1:
            	case 2:
	            	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
	            		if (attack == AT_USPECIAL){
	            			if window == 1 and window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH) - 1{
	            				missionNext();
	            			}
	            		}
	            	}
            		break;
            }
            break;
        case 2:
        	for(var i = 0; i < 3; i++){
        		bTut_mssn_cmbo_moves[i] = "Fully Charge NSpecial"; //Show off N-Special
        	}
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
            	case 0:
            	case 1:
            	case 2:
            		if (attack == AT_NSPECIAL and window == 2 and window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) - 1){
	            		if charge == charge_max{
	            			window = 4;
	            			window_timer = 0;
	            			missionNext();
	            			charge = 0;
	            		}
            		}
            		break;
            }
            break;
        case 3:
        	for(var i = 0; i < 3; i++){
        		bTut_mssn_cmbo_moves[i] = "Do A Short Distanced FSpecial"; //Show off short F-Special
        	}
        	for(var j = 3; j < 6; j++){
        		bTut_mssn_cmbo_moves[j] = "Do A Long Distanced FSpecial"; //Show off long F-Special
        	}
            
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
            	case 0:
            	case 1:
            	case 2:
	            	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
	            		if (attack == AT_FSPECIAL){
	            			if window == 1 and window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) - 1{
	            				if !special_down{
	            					missionNext();
	            				}
	            			}
	            		}
	            	}
            		break;
            	case 3:
            	case 4:
            	case 5:
	            	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
	            		if (attack == AT_FSPECIAL){
	            			if window == 1 and window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) - 1{
	            				if special_down{
	            					missionNext();
	            				}
	            			}
	            		}
	            	}
            		break;
            }
            break;
        case 4:
        	for(var i = 0; i < 3; i++){
        		bTut_mssn_cmbo_moves[i] = "Hit a Rune with NSpecial"; //Show off N-Special
        	}
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
            	case 0:
            	case 1:
            	case 2:
            		// Check for the hitbox to be updated
            		with(pHitBox){
            			if attack == AT_NSPECIAL{
            				if speed_buffed or damage_buffed{
            					with(oPlayer){
            						missionNext();
            					}
        						speed_buffed = false;
        						damage_buffed = false;
            				}
            			}
            		}
            		break;
            }
            break;
        case 5:
        	for(var i = 0; i < 3; i++){
        		bTut_mssn_cmbo_moves[i] = "Hit a Rune with FSpecial"; //Show off N-Special
        	}
        	
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
            	case 0:
            	case 1:
            	case 2:
            		// Check for the hitbox to be updated
            		with(pHitBox){
					    if attack == AT_FSPECIAL and hbox_num == 3{
					        if position_meeting(x, y, player_id.summon_tracker[0]) or position_meeting(x, y, player_id.summon_tracker[1]){
            					with(oPlayer){
            						missionNext();
            					}
					        }
					    }
            		}
            		break;
            }
            break;
        case 6:
        	for(var i = 0; i < 3; i++){
        		bTut_mssn_cmbo_moves[i] = "Touch A Rune while in USpecial"; //Show off N-Special
        	}
        	
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
            	case 0:
            	case 1:
            	case 2:
        			// Check if we touch a rune
        			if speed_rune_touched or boom_rune_touched{
        				// Advance
        				missionNext();
        				speed_rune_touched = false;
        				boom_rune_touched = false;
        			}
            		break;
            }
            break;
    }
}

// KEEP THIS DOWN HERE

if instance_exists(summon_tracker[0]) and instance_exists(summon_tracker[1]){
	summon_tracker[0].flash = true;
	summons = 2;
} else {
	if instance_exists(summon_tracker[0]){
		//summon_tracker[1] = noone;
		summon_tracker[0].flash = false;
		summon_tracker[0].art_col = get_player_hud_color(player);
		summons = 1;
	}
}
#define missionNext() //This lets the buddy know that you are going to the next part of the mission.
{
	bTut_mssn_part++; 
	sound_play(asset_get("mfx_coin"));
	if(array_length(bTut_mssn_cmbo_moves) <= bTut_mssn_part)
		bTut_mssn_finish = true;
}