//
timer++;
state_timer++;
attackFxTimer++;
missTimer++;

if get_gameplay_time() == 1 {
	//var dev = instance_create(room_width/2, room_height/2 + 150, "obj_stage_article", 69);
}

with oPlayer {
	if url != 1933111975 && trummelcodecneeded {
	    trummelcodec = 17;
	    trummelcodecmax = 26;
	    with other {
	    	other.trummelcodecsprite1 = sprite_get("codec");
	    	other.trummelcodecsprite2 = sprite_get("X");
	    }
	    var page = 0;
	    /*
	    //Page X
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    */
	    
	    //Page 0
	    trummelcodecspeaker[page] = 0;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "What on earth are you";
	    trummelcodecline[page,2] = "guys doing over there!?";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 1
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;
	
	    trummelcodecline[page,1] = "I DON'T KNOW!!!";
	    trummelcodecline[page,2] = "WHY DOES HE DO SO";
	    trummelcodecline[page,3] = "MUCH DAMAGE!?!?!?";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 2
	    trummelcodecspeaker[page] = 3;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "im surprised the pink";
	    trummelcodecline[page,2] = "dude didnt warn you";
	    trummelcodecline[page,3] = "beforehand.";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 3
	    trummelcodecspeaker[page] = 0;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "I thought the only way";
	    trummelcodecline[page,2] = "to fight Sans is by";
	    trummelcodecline[page,3] = "doing a genocide run.";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 4
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;
	
	    trummelcodecline[page,1] = "I was sleeping!";
	    trummelcodecline[page,2] = "I have no idea how this";
	    trummelcodecline[page,3] = "happened! I didn't kill";
	    trummelcodecline[page,4] = "anyone!";
	    page++;
	    
	    //Page 5
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 2;
	
	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 6
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;
	
	    trummelcodecline[page,1] = "Trummel...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 7
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "i can explain";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 8
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;
	
	    trummelcodecline[page,1] = "Tell me how many.";
	    trummelcodecline[page,2] = "Spit it out.";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 9
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "it was just a few";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 10
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;
	
	    trummelcodecline[page,1] = "JUST A FEW?";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 11
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;
	
	    trummelcodecline[page,1] = "Judging by our";
	    trummelcodecline[page,2] = "current situation,";
	    trummelcodecline[page,3] = "I think you have killed";
	    trummelcodecline[page,4] = "more than 'just a few'.";
	    page++;
	    
	    //Page 12
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "i couldn't help it";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "fight button go brrr";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 13
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;
	
	    trummelcodecline[page,1] = "You do know killing";
	    trummelcodecline[page,2] = "people is a bad thing?";
	    trummelcodecline[page,3] = "Do you feel no remorse";
	    trummelcodecline[page,4] = "for your actions?";
	    page++;
	    
	    //Page 14
	    trummelcodecspeaker[page] = 3;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "i dont know.";
	    trummelcodecline[page,2] = "he seemed to be";
	    trummelcodecline[page,3] = "pretty...";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 15
	    trummelcodecspeaker[page] = 3;
	    trummelcodecexpression[page] = 1;
	
	    trummelcodecline[page,1] = "...shell-bent in murdering";
	    trummelcodecline[page,2] = "them.";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 16
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 3;
	
	    trummelcodecline[page,1] = "OMG";
	    trummelcodecline[page,2] = "...";
	    trummelcodecline[page,3] = "Well at least your puns";
	    trummelcodecline[page,4] = "are better than Trum's.";
	    page++;
	    
	    //Page 17
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "hey mine arent that";
	    trummelcodecline[page,2] = "bad";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 18
	    trummelcodecspeaker[page] = 3;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "guess you could say";
	    trummelcodecline[page,2] = "that i...";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 19
	    trummelcodecspeaker[page] = 3;
	    trummelcodecexpression[page] = 1;
	
	    trummelcodecline[page,1] = "...stole your thunder.";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 20
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "lol that was a good one";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 21
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "I've changed my mind.";
	    trummelcodecline[page,2] = "These puns are trash.";
	    trummelcodecline[page,3] = "Lets just get this";
	    trummelcodecline[page,4] = "over with.";
	    page++;
	    
	    //Page 22
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "ok lets do this";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 23
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;
	
	    trummelcodecline[page,1] = "Shut up, Trummel.";
	    trummelcodecline[page,2] = "You have no say in";
	    trummelcodecline[page,3] = "this matter.";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 24
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;
	
	    trummelcodecline[page,1] = "I can't believe you left";
	    trummelcodecline[page,2] = "EXW just so you could";
	    trummelcodecline[page,3] = "waste your time killing";
	    trummelcodecline[page,4] = "for this stupid run.";
	    page++;
	    
	    //Page 25
	    trummelcodecspeaker[page] = 0;
	    trummelcodecexpression[page] = 0;
	
	    trummelcodecline[page,1] = "(shhhh, people aren't";
	    trummelcodecline[page,2] = "supposed to know about";
	    trummelcodecline[page,3] = "that!)";
	    trummelcodecline[page,4] = "";
	    page++;
	    
	    //Page 26
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;
	
	    trummelcodecline[page,1] = "(oops. sorry.)";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;
	}
	
	if url == 1933111975 {
		if codec && speaker == 3 {
			if (codecindex == 1){
				if (currentcodecline == 1){
					sans_speech = 0;
				}
			}
				if (currentcodecline <= 4) {
					sans_speech++;
					if (sans_speech >= 4) {
						with other {
							sound_play(sound_get("sans_speak"), false, 0);
						}
						sans_speech = 0;
					}
				}
		}
	}
}

//cpu destroy code;
with oPlayer {
    if (temp_level != 0) { //temp_level > 0 = player
        cpuId = id;
        state = PS_DEAD;
        jump_down = true;
		has_airdodge = false;
		state_timer = 0;
		hsp = 0;
		vsp = 0;
		can_move = false;
		left_down = true;
		right_down = true;
		up_down = true;
		down_down = true;
		shield_down = true;
		max_djumps = 0;
		can_fast_fall = false;
		invincible = true;
		invince_time = 10;
		if (other.survivalMode) {
			set_player_damage(player, 183);
		} else if (other.expertMode) {
			set_player_damage(player, 83);
		} else {
			set_player_damage(player, 91);
		}
		
    } else {
    	cpuId = undefined;
    	
    	if (KR > playerHP) {
    		KR = playerHP;
    	}
    	
    	var drainRate = 0;
    	if (KR > 40) {
    		drainRate = 3;
    	} else if (KR > 30) {
    		drainRate = 5;
    	} else if (KR > 20) {
    		drainRate = 10;
    	} else if (KR > 10) {
    		drainRate = 30;
    	} else {
    		drainRate = 60;
    	}
    	
    	if (other.timer mod drainRate == 0) && (KR > 0) {
    		KR--;
    		if (playerHP > 1) {
    			take_damage(player, -1, 1);
    		}
    	}
    	
    	//print_debug(string(KR));
    }
}

with oPlayer {
	temp_x = 100000;
	temp_y = 100000;
}

//press taunt during spawn to activate skip text mode
if (timer < 100) {
	with oPlayer {
		if (cpuId == undefined) {
			if (taunt_pressed) {
				print_debug("Text skip mode");
				other.textSkipMode = true;
			}
		}
	}
}

//player health code
with oPlayer {
	if (cpuId == undefined) {
		var newHP = playerHPMax - get_player_damage(player);
		if (newHP < playerHP) /*|| (!other.expertMode)*/ {
			playerHP = playerHPMax - get_player_damage(player); //heal player
		} else {
			set_player_damage(player, playerHPMax - playerHP);
		}
		
		
		if (playerHP <= 0) {
			dead = true;
		}
		
		if (dead) {
			if (killTimer == 0) && (cpuId == undefined) {
				other.deadPlayerCount++;
    			resultTimer = other.inBattleTimer;
    			deathAnim = true;
			}
			if (killTimer == 10) {
				with other {
					sound_play(sound_get("soul_break1"), false, 0);
				}
				
			}
			
			if (killTimer == 80) {
				with other {
					sound_play(sound_get("soul_break2"), false, 0);
				}
			}
			
			if (killTimer == 180) {
				state = PS_DEAD;
			} else {
				if (free) {
					state = PS_PRATFALL;
				} else {
					state = PS_LAND;
				}
			}
			jump_down = true;
			has_airdodge = false;
			state_timer = 1;
			killTimer++;
			hsp = 0;
			vsp = 0;
			can_move = false;
			left_down = false;
			right_down = false;
			up_down = false;
			down_down = true;
			shield_down = true;
			prat_fall_accel = 0;
			max_djumps = 0;
			can_fast_fall = false;
		}
	}
}

var numPlayers = 0;
with oPlayer {
	if (cpuId == undefined) {
		numPlayers++;
		
		//anti cheese code
		if (y < 400) { //out of bounds
			y = 800;
		}
	}
}
//print_debug(string(numPlayers))

if (is_aether_stage() && !survivalMode) {
	expertMode = true;
	if (timer == 1) {
		with oPlayer {
			playerHPMax = 84;
			playerHP = 84;
		}
	}
}

//player shadows
if (timer == 2) {
	with oPlayer {
		if !dead && cpuId == undefined {
			with other {
				var shadow = instance_create(other.x, other.y, "obj_stage_article", 5);
					shadow.target_id = other.id;
					shadow.depth = -10;
			}
		}
	}
}

if (timer == 2) {
	with oPlayer {
		playerHPMax += (numPlayers-1)*15;
		playerHP += (numPlayers-1)*15;
	}
}

if (timer == 2) && (numPlayers == 1) {
	var seed = 0;
	with oPlayer {
		if (cpuId == undefined) {
			if (url != "") && (url != undefined) && (url != noone) {
				seed = real(url);
			} else {
				seed = 0;
			}	
		}
	}
	
	for (var i = 0; i < array_length(survivalModeInputs); i++) {
		var inputVar1 = random_func_2(seed*(i+1) mod 199, 4, true);
		survivalModeInputs[i] = inputVar1;
		
		switch inputVar1 {
			case 0: //left
			survivalModeStr = survivalModeStr + "left";
			//survivalModeStr = string_insert("left ", survivalModeStr, string_length(survivalModeStr));
			break;
			
			case 1: //right
			survivalModeStr = survivalModeStr + "right";
			//survivalModeStr = string_insert("right ", survivalModeStr, string_length(survivalModeStr));
			break;
			
			case 2: //up
			survivalModeStr = survivalModeStr + "up";
			//survivalModeStr = string_insert("up ", survivalModeStr, string_length(survivalModeStr));
			break;
			
			case 3: //down
			survivalModeStr = survivalModeStr + "down";
			//survivalModeStr = string_insert("down ", survivalModeStr, string_length(survivalModeStr));
			break;
		}
		
		if (i < array_length(survivalModeInputs) - 1) {
			survivalModeStr = survivalModeStr + " - ";
		}
	}
}

//print_debug(string(survivalModeInputs));
//print_debug(survivalModeStr);


if (deadPlayerCount == numPlayers) || (winEndState) {
	everyoneAlivent = true;
	aliventTimer++;
    if (aliventTimer == 1) {
    	if (winEndState) {
    		state = 10;
    	} else {
    		state = 9;
    	}
    	state_timer = 0;
    	music_stop();
		removeAttacks();
		with (obj_stage_article_platform) {
	        if (get_article_script(id) == 96) || (get_article_script(id) == 95) {
	            instance_destroy(id);
	        }
	    }
    }
}

if (winEndState) {
	with oPlayer {
		if (cpuId == undefined) {
			dead = true;
			killTimer = 180;
		}
	}
}

if (sansAttackIndex != 21) && (sansAttackIndex != 16) && (!dunkedOn) {
	with (obj_stage_article) {
		if (get_article_script(id) == 50) || (get_article_script(id) == 51) {
	        if (x < get_marker_x(4) || x > get_marker_x(25)) {
	        	instance_destroy(id);
	        }
	    }
	}
}

if (sansAttackIndex == 7) || (sansAttackIndex == 9) || (sansAttackIndex == 20) || (sansAttackIndex == 23) {
	with (obj_stage_article) {
		if (get_article_script(id) == 51) {
	        if (y < get_marker_y(27) - 100 || y > get_marker_x(26) + 100) {
	        	instance_destroy(id);
	        }
	    }
	}
}

with (obj_stage_article_platform) {
	if (get_article_script(id) == 53) {
        if (x < get_marker_x(4) - 200 || x > get_marker_x(25) + 200) {
        	instance_destroy(id);
        }
    }
}

var boneCount = 0;
with (obj_stage_article) {
	if (get_article_script(id) == 51) {
        boneCount++;
    }
}

//print_debug(string(boneCount));

set_view_position(room_width/2 + roomXmod, room_height/2 + roomYmod + 32);
roomXmod = 0;
roomYmod = 0;


with obj_article1 {
    if (player_id == other.cpuId) {
        instance_destroy(id);
    }
}

with obj_article_solid {
    if (player_id == other.cpuId) {
        instance_destroy(id);
    }
}

with obj_article_platform {
    if (player_id == other.cpuId) {
        instance_destroy(id);
    }
}

var playerTauntPressed = false;
with oPlayer {
	if (taunt_pressed) {
		playerTauntPressed = true;
	}
}

var buttonPressed = false;
with oPlayer {
	if (cpuId == undefined) {
		if (attack_pressed) || (special_pressed) || (shield_pressed) {
			buttonPressed = true;
		}
	}
}

if (videoMode) {
	with oPlayer {
		if (cpuId == undefined) {
			if (state == PS_PARRY) {
				end_match();
			}
			
			if (down_pressed) {
				buttonPressed = true;
			}
		}
	}
}

if (state >= 3) {
	inBattleTimer++;
}

//player interaction stuff

if (timer <= 10) {
	with oPlayer {
		if (cpuId == undefined) && (other.interactionSpeech == undefined) {
			if (url != "") && (url != undefined) && (url != noone) {
				if (url == other.urlSans) {
					other.interactionSpeech = other.interactionSans;
				} else if (url == other.urlDog) {
					other.interactionSpeech = other.interactionDog;
				} else {
					if (other.interactionSpeech == undefined) {
						for (var i = 0; i < array_length(other.urlKris); i++) {
							if (url == other.urlKris[i]) {
								other.interactionSpeech = other.interactionKris;
								break;
							}
						}
					}
					
					if (other.interactionSpeech == undefined) {
						for (var i = 0; i < array_length(other.urlPapyrus); i++) {
							if (url == other.urlPapyrus[i]) {
								other.interactionSpeech = other.interactionPapyrus;
								break;
							}
						}
					}
					
					if (other.interactionSpeech == undefined) {
						for (var i = 0; i < array_length(other.urlSkin); i++) {
							if (url == other.urlSkin[i,0]) && (get_player_color(other.player) == other.urlSkin[i,1]) {
								other.interactionSpeech = other.interactionSkin;
								break;
							}
						}
					}
				}
			}
		}	
	}
}

if (survivalMode) {
	survivalTimer++;
}

//print_debug(string(interactionSpeech));

switch (state) {
    case 0: //judgement hall
    with oPlayer {
    	move_cooldown[AT_JAB] = 10;
    	move_cooldown[AT_FTILT] = 10;
    	move_cooldown[AT_DTILT] = 10;
    	move_cooldown[AT_UTILT] = 10;
    	move_cooldown[AT_FSTRONG] = 10;
    	move_cooldown[AT_DSTRONG] = 10;
    	move_cooldown[AT_USTRONG] = 10;
    	move_cooldown[AT_DATTACK] = 10;
    	move_cooldown[AT_FAIR] = 10;
    	move_cooldown[AT_BAIR] = 10;
    	move_cooldown[AT_DAIR] = 10;
    	move_cooldown[AT_DAIR] = 10;
    	move_cooldown[AT_UAIR] = 10;
    	move_cooldown[AT_NAIR] = 10;
    	move_cooldown[AT_FSPECIAL] = 10;
    	move_cooldown[AT_DSPECIAL] = 10;
    	move_cooldown[AT_USPECIAL] = 10;
    	move_cooldown[AT_NSPECIAL] = 10;
    	move_cooldown[AT_EXTRA_1] = 10;
    	move_cooldown[AT_EXTRA_2] = 10;
    	move_cooldown[AT_EXTRA_3] = 10;
    	move_cooldown[AT_FSPECIAL_AIR] = 10;
    	move_cooldown[AT_DSPECIAL_AIR] = 10;
    	move_cooldown[AT_NSPECIAL_AIR] = 10;
    }
    if timer < 180 {
    	music_stop();
    }
    
    //survival mode
    if (survivalModeInputCounter >= array_length(survivalModeInputs)) {
    	survivalMode = true;
    } else if (survivalModeInputCounterTest >= array_length(survivalModeInputsTest)) {
    	survivalModeTest = true;
    } else {
    	var inputIndex = survivalModeInputCounter;
    	var inputIndexTest = survivalModeInputCounterTest;
	    if (numPlayers == 1) && (timer > 2) {
	    	with oPlayer {
	    		if (cpuId == undefined) {
	    			switch other.survivalModeInputs[inputIndex] {
	    				case 0: //left
	    				if (left_pressed) {
	    					other.survivalModeInputCounter++;
	    					break;
	    				} else if (right_pressed || up_pressed || down_pressed) {
	    					other.survivalModeInputCounter = 0;
	    				}
	    				break;
	    				
	    				case 1: //right
	    				if (right_pressed) {
	    					other.survivalModeInputCounter++;
	    					break;
	    				} else if (left_pressed || up_pressed || down_pressed) {
	    					other.survivalModeInputCounter = 0;
	    				}
	    				break;
	    				
	    				case 2: //up
	    				if (up_pressed) {
	    					other.survivalModeInputCounter++;
	    					break;
	    				} else if (right_pressed || left_pressed || down_pressed) {
	    					other.survivalModeInputCounter = 0;
	    				}
	    				break;
	    				
	    				case 3: //down
	    				if (down_pressed) {
	    					other.survivalModeInputCounter++;
	    					break;
	    				} else if (right_pressed || up_pressed || left_pressed) {
	    					other.survivalModeInputCounter = 0;
	    				}
	    				break;
	    			}
	    			
	    			switch other.survivalModeInputsTest[inputIndexTest] {
	    				case 0: //left
	    				if (left_pressed) {
	    					other.survivalModeInputCounterTest++;
	    					break;
	    				} else if (right_pressed || up_pressed || down_pressed) {
	    					other.survivalModeInputCounterTest = 0;
	    				}
	    				break;
	    				
	    				case 1: //right
	    				if (right_pressed) {
	    					other.survivalModeInputCounterTest++;
	    					break;
	    				} else if (left_pressed || up_pressed || down_pressed) {
	    					other.survivalModeInputCounterTest = 0;
	    				}
	    				break;
	    				
	    				case 2: //up
	    				if (up_pressed) {
	    					other.survivalModeInputCounterTest++;
	    					break;
	    				} else if (right_pressed || left_pressed || down_pressed) {
	    					other.survivalModeInputCounterTest = 0;
	    				}
	    				break;
	    				
	    				case 3: //down
	    				if (down_pressed) {
	    					other.survivalModeInputCounterTest++;
	    					break;
	    				} else if (right_pressed || up_pressed || left_pressed) {
	    					other.survivalModeInputCounterTest = 0;
	    				}
	    				break;
	    			}
	    		}
	    	}
	    	//print_debug(string(survivalModeInputCounter));
	    }
    }
    //print_debug(string(survivalMode));
    
    if (survivalMode) {
    	with oPlayer {
    		if (cpuId == undefined) {
    			playerHPMax = 184;
				playerHP = 184;
    		}
    	}
    	expertMode = false;
    	sound_play(sound_get("dumbvictory"), false, 0);
    	state = 2;
    	state_timer = 0;
    	textSkipMode = true;
    }
    
    
    //debug stuff
    if (debug) {
    	if (state_timer < 300) {
	    	with oPlayer {
		    	if (shield_pressed) {
			    	other.state = 2;
			    	other.state_timer = 0;
			    }
		    }
	    }
    }
    
    with (obj_stage_article_platform) {
        if (get_article_script(id) == 96) {
            if (moveCounter <= -500) { //default is -500
                other.state++;
                other.state_timer = 0;
            }
        }
    }
    break;
    
    case 1: //sans talk
    with oPlayer {
    	if (cpuId == undefined) {
    		if (state != PS_ROLL_BACKWARD) && (state != PS_ROLL_FORWARD) && (state != PS_AIR_DODGE) {
				if (state_timer == 1) {
					state = PS_IDLE;
				} else {
					if (!free) {
						state = PS_SPAWN;
					} else {
						state = PS_PRATFALL;
					}
		    	}
    		}
    		hsp = 0;
			can_move = false;
			has_airdodge = false;
			
			left_down = false;
			left_pressed = false;
			left_hard_pressed = false;
			right_down = false;
			right_pressed = false;
			right_hard_pressed = false;
			
			up_down = false;
			down_down = false;
			attack_down = false;
			special_down = false;
			shield_down = false;
			jump_down = false;
			spr_dir = 1;
			
			move_cooldown[AT_JAB] = 10;
	    	move_cooldown[AT_FTILT] = 10;
	    	move_cooldown[AT_DTILT] = 10;
	    	move_cooldown[AT_UTILT] = 10;
	    	move_cooldown[AT_FSTRONG] = 10;
	    	move_cooldown[AT_DSTRONG] = 10;
	    	move_cooldown[AT_USTRONG] = 10;
	    	move_cooldown[AT_DATTACK] = 10;
	    	move_cooldown[AT_FAIR] = 10;
	    	move_cooldown[AT_BAIR] = 10;
	    	move_cooldown[AT_DAIR] = 10;
	    	move_cooldown[AT_DAIR] = 10;
	    	move_cooldown[AT_UAIR] = 10;
	    	move_cooldown[AT_NAIR] = 10;
	    	move_cooldown[AT_FSPECIAL] = 10;
	    	move_cooldown[AT_DSPECIAL] = 10;
	    	move_cooldown[AT_USPECIAL] = 10;
	    	move_cooldown[AT_NSPECIAL] = 10;
	    	move_cooldown[AT_EXTRA_1] = 10;
	    	move_cooldown[AT_EXTRA_2] = 10;
	    	move_cooldown[AT_EXTRA_3] = 10;
	    	move_cooldown[AT_FSPECIAL_AIR] = 10;
	    	move_cooldown[AT_DSPECIAL_AIR] = 10;
	    	move_cooldown[AT_NSPECIAL_AIR] = 10;
    	}
	}
    
    if (state_timer == 1) {
        with (obj_stage_article_platform) {
            if (get_article_script(id) == 96) || (get_article_script(id) == 95) {
                state++;
                state_timer = 0;
            }
        }
    }
    var skipTimer = 300;
    if (textSkipMode) {
    	skipTimer = 150;
    }
    
    if (state_timer == skipTimer) {
        with (obj_stage_article_platform) {
            if (get_article_script(id) == 96) || (get_article_script(id) == 95) {
                state++;
                state_timer = 0;
            }
        }
    }
    
    //sans talk stuff
    if (drawTextbox) {
    	if (textSkipMode) {
    		var textArr = sansSpeechSkip;
    	} else {
    		if (interactionSpeech != undefined) {
    			var textArr = interactionSpeech;
    		} else {
    			var textArr = sansSpeech;
    		}
    	}
    	if (textboxIndex == array_length(textArr)) {
    		drawTextbox = false;
    		state++;
    		state_timer = 0;
    	} else {
	    	//print_debug(string(textboxTime))
	    	if (textboxTime > 10) && (buttonPressed) {
	    		textboxTime = 0;
	    		lineTime = 0;
	    		lineTextNum = 0;
	    		
	    		textboxIndex++;
	    		lineIndex = 0;
	    		
	    		currentText[0] = "";
	    		currentText[1] = "";
	    		currentText[2] = "";
	    		currentText[3] = 0;
	    	}
	    	
	    	if (textboxIndex == 6) || (textboxIndex == 13) { //slight pause in his speech, exits textbox mode, player steps forward
	    		drawTextbox = false;
	    		textboxPauseTimer = 60;
	    	}
	    	
	    	if (lineIndex < 3) && (textboxIndex < array_length(textArr)) {
	    		var str = textArr[textboxIndex,lineIndex]; //string to print on line
	    		var face = textArr[textboxIndex,3]; //sans face emotion
	    		currentText[3] = face;
	    		
		    	speechTime++;
		    	textboxTime++;
		    	lineTime++;
		    	
		    	if (lineTime mod 3 == 0) { //advance text every n frames
		    		lineTextNum++;
		    		
		    		//currentText = string_char_at(str, lineTextNum);
		    		currentText[lineIndex] = string_copy(str, 1, lineTextNum);
			    	//print_debug(string(currentText));
			    	
			    	if (lineTextNum > string_length(str)) { //end of string, move to next line if not last line
			    		lineTextNum = 0;
			    		lineTime = 0;
			    		lineIndex++;
			    	}
		    	}
		    	
		    	if (lineTime mod 4 == 0) && (string_char_at(str, lineTextNum) != " ") && (lineTextNum != 0) {
		    		sound_play(sound_get("sans_speak"), false, 0);
		    	}
	    	}
    	}
    }
    
    if (textboxPauseTimer > 0) {
    	textboxPauseTimer--;
    	if (textboxPauseTimer == 1) {
    		drawTextbox = true;
    		textboxIndex++;
    	}
    	
    	if (textboxPauseTimer > 30) {
    		with oPlayer {
    			x++;
    		}
    	} else {
    		with oPlayer {
    			state = PS_SPAWN;
    		}
    	}
    }
    break;
    
    case 2: //pre-battle speech
    
    //chk chk belouboop
    if (state_timer <= 1) {
        with (obj_stage_article_platform) {
            if (get_article_script(id) == 96) || (get_article_script(id) == 95) {
                state = 9;
                state_timer = 0;
            }
        }
        with (obj_stage_article_platform) {
            if (get_article_script(id) == 96) {
                drawSans = false;
            }
        }
        with (obj_stage_article) {
			if (get_article_script(id) == 5) {
		        instance_destroy(id);
		    }
		}
    }
    
    if (state_timer == 40) {
    	music_play_file("birdnoise");
    	sansSpeak = true;
    	if (textSkipMode) {
    		sansSpeakScript = preBattleSpeechSkip;
    	} else {
    		sansSpeakScript = preBattleSpeech;
    	}
    	textInit();
    }
    break;
    
    case 3: //battle
    if (state_timer == 1) {
    	music_stop();
    }
    attack_timer++;
    
    //debug border changing
    /*
    with oPlayer {
    	if (taunt_pressed) {
    		with (obj_stage_article_solid) {
		        if (get_article_script(id) == 1) || (get_article_script(id) == 2) {
		            moveDir = 1;
		        }
		    }
    	} else if (shield_pressed) {
    		with (obj_stage_article_solid) {
		        if (get_article_script(id) == 1) || (get_article_script(id) == 2) {
		            moveDir = -1;
		        }
		    }
    	}
    }
    */
    
    //debug stuff
    if (debug) {
	    if (state_timer < 300) {
	    	with oPlayer {
		    	if (shield_pressed) {
			    	other.state = 4;
			    	other.state_timer = 0;
			    }
		    }
	    }
    }
    
    switch (attack) {
        case 0: //waiting
        if (attack_timer == 1) {
            attack++;
            attack_timer = 0;
        }
        break;
        
        case 1: //box shrink + bone attack 1
        //box shrink
        if (attack_timer == 1) {
        	wasTalking = true;
            sound_play(sound_get("gravity_change"), false, 0);
            resizeBox(1, 0, 0);
            sansGravityDraw = true;
            sansGravityDrawSpeed = 3;
            sansGravityDrawTimer = 0;
            sansGravityMoveTime = 10;
            sansGravityDir = undefined;
        }
        
        if (attack_timer == 10) {
        	sansGravityDir = 3;
        	sansGravityDrawTimer = 0;
        }
        
        if (attack_timer == 15) {
        	sound_play(sound_get("impact"), false, 0);
        }
        
        if (attack_timer > 10) && (attack_timer < 25) {
        	with oPlayer {
            	if (cpuId == undefined) {
            		vsp = 20;
            	}
            }
        }
        
        if (attack_timer < 40) {
        	sansGravityFaceIndex = 15 + (floor(attack_timer/3) mod 2);
        }
        
        if (attack_timer == 40) { //bone rise 1
            spawnBoneStab(3, 35, 35, false);
            with obj_stage_article {
            	if (get_article_script(id) == 50) {
            		mute = true;
            	}
            }
            attack++;
            attack_timer = 0;
            sansGravityDir = 2;
        	sansGravityDrawTimer = 0;
        	sansGravityFaceIndex = 5;
        }
        break;
        
        case 2: //bone slalom
    	/*
        topHeightArr[0] = 15;
        topHeightArr[1] = 22;
        topHeightArr[2] = 31;
        topHeightArr[3] = 39;
        topHeightArr[4] = 43;
        topHeightArr[5] = 42;
        topHeightArr[6] = 39;
        topHeightArr[7] = 31;
        topHeightArr[8] = 21;
        topHeightArr[9] = 14;
        topHeightArr[10] = 11;
        topHeightArr[11] = 9;
        topHeightArr[12] = 8;
        topHeightArr[13] = 13;
        topHeightArr[14] = 23;
        topHeightArr[15] = 34;
        */
        
        if (attack_timer == 110) { //bone slalom
            sound_play(sound_get("gravity_change"), false, 0);
            sansGravityDir = 0;
        	sansGravityDrawTimer = 0;
        }
        
        var slalomDelay = 90;
        
        if (attack_timer >= slalomDelay) {
        	var topHeightArr = array_create(16);
	    	for (var i = 0; i < array_length(topHeightArr); i++) {
	    		var heightVar = dsin(i*360/16) * 20;
	    		var heightOffset = 35;
	    		topHeightArr[i] = floor(heightVar + heightOffset);
	    	}
            if (attack_timer mod 5 == 0) {
                var topHeight = topHeightArr[floor((attack_timer - slalomDelay)/5)];
                var bottomHeight = 75 - topHeight;
                var offset = -150 + (topHeight*2);
                
                spawnBone(0, topHeight, offset, 10, false, 0);
                spawnBone(0, bottomHeight, 156, 10, false, 0);
            }
            
            if (floor((attack_timer - slalomDelay)/5) >= 15) {
                attack++;
                attack_timer = 0;
            }
        }
        break;
        
        case 3: //blasters 1
        if (attack_timer == 60) { //blasters 1;
        	spawnBlaster(get_marker_x(5), get_marker_y(5), 1, 1, 0, -1, 0, 0, 1, 1);
        	spawnBlaster(get_marker_x(6), get_marker_y(6), 1, 1, -1, 0, 90, 0, 1, 1);
        	spawnBlaster(get_marker_x(7), get_marker_y(7), -1, -1, 1, 0, -90, 0, 1, 1);
        	spawnBlaster(get_marker_x(8), get_marker_y(8), -1, -1, 0, 1, 180, 0, 1, 1);
            attack++;
            attack_timer = 0;
        }
        sansGravityEndTimer++;
        break;
        
        case 4: //blasters 2
        if (attack_timer == 60) { //blasters 2;
        	spawnBlaster(get_marker_x(9), get_marker_y(9), 1, 1, -1, -1, 45, 0, 1, 1);
        	spawnBlaster(get_marker_x(10), get_marker_y(10), -1, 1, 1, -1, -45, 0, 1, 1);
        	spawnBlaster(get_marker_x(11), get_marker_y(11), -1, -1, 1, 1, -135, 0, 1, 1);
        	spawnBlaster(get_marker_x(12), get_marker_y(12), 1, -1, -1, 1, 135, 0, 1, 1);
            attack++;
            attack_timer = 0;
        }
        sansGravityEndTimer++;
        break;
        
        case 5: //blasters 3
        if (attack_timer == 60) { //blasters 3;
            spawnBlaster(get_marker_x(5), get_marker_y(5), 1, 1, 0, -1, 0, 0, 1, 1);
        	spawnBlaster(get_marker_x(6), get_marker_y(6), 1, 1, -1, 0, 90, 0, 1, 1);
        	spawnBlaster(get_marker_x(7), get_marker_y(7), -1, -1, 1, 0, -90, 0, 1, 1);
        	spawnBlaster(get_marker_x(8), get_marker_y(8), -1, -1, 0, 1, 180, 0, 1, 1);
            attack++;
            attack_timer = 0;
            sansGravityDraw = false;
			sansGravityDrawSpeed = 0;
            sansGravityDrawTimer = 0;
            sansGravityMoveTime = 0;
            sansGravityDir = undefined;
            sansGravityEndTimer = 0;
            sansGravityFaceIndex = 0;
        }
        break;
        
        case 6: //blasters 4
        if (attack_timer == 50) { //blasters 4;
        	spawnBlaster(get_marker_x(13), get_marker_y(13), 1, 0, -1, 0, 90, 15, 1.8, 1.8);
        	spawnBlaster(get_marker_x(14), get_marker_y(14), -1, 0, 1, 0, -90, 15, 1.8, 1.8);
            attack++;
            attack_timer = 0;
        }
        break;
        
        case 7: //next state
        if (attack_timer == 120) {
        	state++;
        	state_timer = 0;
        	attack = 0;
        	attack_timer = 0;
        }
        break;
    }
    sansGravityDrawTimer++;
    break;
    
    case 4: //resize box, after-first-attack speech
    //box expand
    if (survivalMode) {
    	state = 6;
    	state_timer = 0;
    	sansSpeechIndex = 1;
    	sansAttackIndex = 1;
    	music_play_file("megalovania");
    	break;
    }
    if (state_timer == 1) {
        resizeBox(-1, 0, 0);
    }
    
    if (state_timer == 60) {
    	sansSpeak = true;
    	if (textSkipMode) {
    		sansSpeakScript = firstAttackSpeechSkip;
    	} else {
    		sansSpeakScript = firstAttackSpeech;
    	}
    	textInit();
    }
    
    break;
    
    case 5: //your turn + sans talk
    
    menuIndexTimer++;
    
    if (metaBones == 1 || metaBones == 3) {
    	if (timer mod 130 == 2) && (menuIndex == 0 || menuIndex == 1) {
    		spawnBone(0, 30, 150, 10, false, 0);
    	}
    	
    	with obj_stage_article {
    		if (get_article_script(id) == 51) {
    			isMeta = true;
    			if (length == 30) {
    				boneHspeed -= 0.2;
    			}
    		}
    	}
    }
    
    if (metaBones == 2) || (metaBones == 3) {
    	if (timer mod 70 == 2) && (menuIndex == 0 || menuIndex == 1) {
    		spawnBone(0, 40, 40, 6, false, 0);
    	}
    }
    
    if (debug) {
    	if (sansSpeechIndex < debugVar) {
    		sansSpeechIndex = debugVar;	
    	}
    	
    	if (sansAttackIndex < debugVar) && (!randAttacks) && (!randAttacks1) {
    		sansAttackIndex = debugVar;	
    	}
    }
    
    switch menuIndex {
    	case 0: //normal menu
    	if (menuIndexTimer == 1) {
    		if (battleTextIndex == 0) {
    			music_play_file("megalovania");
    		}
    		
    		with oPlayer {
				if (cpuId == undefined) {
					//print_debug(string(other.sansSpeechIndex));
					//print_debug(string(other.sansAttackIndex));
					other.battleTextIndex = 1;
					if (other.sansSpeechIndex == 13) {
						other.battleTextIndex = 8;
					} else if (other.sansAttackIndex == 0) {
						other.battleTextIndex = 0;
					} else if (other.sansSpeechIndex == 1) {
						other.battleTextIndex = 1;
					} else if (other.sansSpeechIndex == 2) {
						other.battleTextIndex = 2;
					} else if (other.sansSpeechIndex == 21) {
						other.battleTextIndex = 13;
					} else if (other.sansSpeechIndex == 22) {
						other.battleTextIndex = 14;
					} else if (other.sansSpeechIndex >= 14) {
						other.battleTextIndex = 9 + (other.timer mod 4);
					}
					
					if (KR > 0) && (other.sansSpeechIndex != 21) && (other.sansSpeechIndex != 22) && (other.battleTextIndex != 0) && (other.sansAttackIndex != 13) {
						if (KR <= 10) {
    						other.battleTextIndex = 4;
    					} else if (KR <= 20) {
    						other.battleTextIndex = 5;
    					} else if (KR <= 30) {
    						other.battleTextIndex = 6;
    					} else {
    						other.battleTextIndex = 7;
    					}
					}
					
				}
			}
    		
	    	spawnButtons();
	    	battleTextActive = true;
	    	
	    	battleTextScript[0] = battleText[battleTextIndex,0];
	    	battleTextScript[1] = battleText[battleTextIndex,1];
	    	battleTextScript[2] = battleText[battleTextIndex,2];
	    	battleTextScript[3] = battleText[battleTextIndex,3];
	    	
	    	currentText[0] = "";
	    	currentText[1] = "";
	    	currentText[2] = "";	
	    	currentText[3] = 0;	
	    }
    	break;
    	
    	case 1: //fight
    	if (menuIndexTimer == 1) {
    		removeButtons();
    		battleTextActive = false;
    		if (sansAttackIndex < 25) {
    			drawAttackBar = true;
    			attackMarkerMove = true;
    			attackMarkerx = -300;
    		}
    		
    		if (sansAttackIndex != 25) { //already created
    			var sans = instance_create(get_marker_x(24), get_marker_y(24), "obj_stage_article", 4);
    				sans.weapon = 0;
    			attack_bar_type = 0;
    			//attacks_left = 4;
    		}
    	}
    	
    	if attack_bar_type == 0 {
    		var bar_active_time = 300;
    	} else if attack_bar_type == 1 {
    		var bar_active_time = 600;
    	}
    	
    	if (attackMarkerx > bar_active_time) && (sansAttackIndex < 25) {
    		state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
			
    		drawAttackBar = false;
    		attackMarkerMove = false;
    		
    		speechTime = 0;
    		textboxTime = 0;
    		lineTime = 0;
    		lineTextNum = 0;
	    	lineIndex = 0;
    	}
    	break;
    	
    	case 2: //act
    	if (menuIndexTimer == 1) {
    		wasTalking = false;
    		with oPlayer {
    			if (!dead) {
    				timesActed++;
    			}
			}
    		textInit();
    		speechTime = 0;
    		textboxTime = 0;
    		lineTime = 0;
    		lineTextNum = 0;
	    	lineIndex = 0;
	    	
	    	if (sansSpeechIndex <= 0) {
	    		battleTextScript[0] = battleText[69,0];
	    		battleTextScript[1] = battleText[69,1];
	    		battleTextScript[2] = battleText[69,2];
	    		battleTextScript[3] = battleText[69,3];
	    	} else {
	    		battleTextScript[0] = battleText[70,0];
	    		battleTextScript[1] = battleText[70,1];
	    		battleTextScript[2] = battleText[70,2];
	    		battleTextScript[3] = battleText[70,3];
	    	}
	    	
	    	
	    	currentText[0] = "";
	    	currentText[1] = "";
	    	currentText[2] = "";
	    	currentText[3] = 0;
	    	
	    	removeButtons();
    	}
    	if (lineIndex == 3 && buttonPressed) {
    		if (sansAttackIndex != 13) {
    			removeButtons();
	    		battleTextActive = false;
	    		state++;
	    		state_timer = 0;
	    		sansAttackIndex++;
	    		textInit();
    		} else {
    			menuIndex = 0;
    			menuIndexTimer = 0;
    			textInit();
    		}
    	}
    	break;
    	
    	case 3: //item
    	if (menuIndexTimer == 1) {
    		wasTalking = false;
    		foodCount++;
    		sound_play(sound_get("heal"), false, 0);
    		var foodIndex = undefined;
    		if (foodCount == 1) {
    			foodIndex = 21; //butterscotch pie
    		} else if (foodCount == 2) {
    			foodIndex = 23; //face steak
    		} else if (foodCount <= 5) {
    			foodIndex = 22; //snowman piece
    		} else if (foodCount == 10) {
    			foodIndex = 24; //instant noodles
    		} else {
    			foodIndex = 20; //legendary hero
    		}
    		
    		var foodHP = battleText[foodIndex,4];
    		
    		with oPlayer {
    			if (cpuId == undefined) && (!dead) {
    				if (foodHP > playerHPMax) {
    					foodHP = playerHPMax;
    				}
    				
    				if (get_player_damage(player) >= foodHP) {
    					take_damage(player, -1, -foodHP);
    					playerHP += foodHP;
    					healthRecovered += foodHP;
    				} else {
						healthRecovered += get_player_damage(player);
						playerHP = playerHPMax;
						set_player_damage(player, 0);
    				}
    			}
    		}
    		textInit();
    		speechTime = 0;
    		textboxTime = 0;
    		lineTime = 0;
    		lineTextNum = 0;
	    	lineIndex = 0;
	    	
	    	battleTextScript[0] = battleText[foodIndex,0];
	    	battleTextScript[1] = battleText[foodIndex,1];
	    	battleTextScript[2] = battleText[foodIndex,2];
	    	battleTextScript[3] = battleText[foodIndex,3];
	    	
	    	currentText[0] = "";
	    	currentText[1] = "";
	    	currentText[2] = "";
	    	currentText[3] = 0;
	    	
	    	removeButtons();
    	}
    	if (lineIndex == 3 && buttonPressed) {
    		if (sansAttackIndex != 13) {
    			removeButtons();
	    		battleTextActive = false;
	    		state++;
	    		state_timer = 0;
	    		sansAttackIndex++;
	    		textInit();
    		} else {
    			menuIndex = 0;
    			menuIndexTimer = 0;
    			textInit();
    		}
    	}
    	break;
    	
    	case 4: //mercy
    	if (menuIndexTimer == 1) {
    		wasTalking = false;
    		if (battleTextIndex == 8) { //spare
    			removeButtons();
    			battleTextActive = false;
    			sansSpeechIndex = 69; //nice.
    			sansAttackIndex = 69; //not quite nice.
	    		menuIndex = 6;
    			menuIndexTimer = 0;
	    	}
    	}
    	
    	break;
    	
    	case 5: //miss
    	if (menuIndexTimer == 1) {
    		wasTalking = true;
    		attackMarkerMove = false;
    		drawAttackFx = true;
    		attackFxTimer = 0;
    		sound_play(sound_get("knife_swipe"), false, 0);
    		if (abs(attackMarkerx) < 25) {
    			with oPlayer {
    				if (cpuId == undefined) {
    					perfectAttacks++;
    				}
    			}
    		}
    	}
    	
    	if (menuIndexTimer == 60) {
    		drawMiss = true;
    		missTimer = 0;
    	}
    	
    	if (menuIndexTimer == 100) && (sansAttackIndex < 25) {
    		drawAttackBar = false;
    		attackBarFade = 30;
    	}
    	
    	if (menuIndexTimer == 130) {
    		menuIndex = 6;
    		menuIndexTimer = 0;
    	}
    	
    	break;
    	
    	case 6: //after attack speech
    	if (menuIndexTimer == 1) {
    		if (sansSpeechIndex == 12) { //spare speech
    			//sweatLevel: 1 = light, 2 = med, 3 = heavy
    			sweatLevel = 2;
    			battleTextIndex = 8;
    			music_stop();
    		} else { //normal flavour text
    			battleTextIndex = 0;
    		}
    		
    		if (sansSpeechIndex == 19) {
    			sweatLevel = 1;
    		}
    		
    		if (sansSpeechIndex == 21) {
    			sweatLevel = 2;
    		}
    		
    		sansSpeak = true;
    		
    		if (textSkipMode) && (sansSpeechIndex == 12) { //text skip stuff
    			sansSpeakScript = battleSpeech12Skip;
    		} else {
    			sansSpeakScript = battleSpeechArr[sansSpeechIndex];
    		}
	    	
	    	textInit();
	    	if (sansAttackIndex < 25) {
	    		sansAttackIndex++;
	    	}
    		sansSpeechIndex++;
    	}
    	break;
    }
    break;
    
    case 6: //sans turn
    
    //print_debug(string(state))
    
    if (state_timer == 1) {
    	removeAttacks();
    	with oPlayer {
    		if (!dead) {
    			attacksSurvived++;
    		}
    	}
    	if (sansAttackIndex == 23 && sansSpeechIndex < 23) { //do random attacks until speech has fully progressed
	    	randAttacks = true;
	    }
	    
	    if (sansAttackIndex == 13 && sansSpeechIndex < 13) { //phase 1 rand attacks
	    	randAttacks1 = true;
	    }
	    
    	if (randAttacks) {
	    	var attackArr = array_create(3);
	    		attackArr[0] = 22;
	    		attackArr[1] = 19;
	    	
	    	var randVar = random_func_2((floor(timer/29) mod 100) + (state_timer mod 100), 2, true);
	    	sansAttackIndex = attackArr[randVar];
	    }
	    
	    if (randAttacks1) {
	    	var attackArr = array_create(3);
	    		attackArr[0] = 8;
	    		attackArr[1] = 11;
	    	
	    	var randVar = random_func_2((floor(timer/29) mod 100) + (state_timer mod 100), 2, true);
	    	sansAttackIndex = attackArr[randVar];
	    }
	    
	    if (sansSpeechIndex == 23) && (randAttacks) {
	    	sansAttackIndex = 23;
	    	randAttacks = false;
	    }
	    
	    if (sansSpeechIndex == 13) && (randAttacks1) {
	    	sansAttackIndex = 13;
	    	randAttacks1 = false;
	    }
    }
    
    
    switch sansAttackIndex { //attack pattern
    	//each case is a separate attack pattern
    	//starts from case 1 because technically case 0 is beginning attack
    	//sansAttackIndex incremented at the beginning of his speech (previous state)
    	
    	case 1: //bone jump 1
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
    	
		if (boneCounter1 < 8) {
			if (state_timer > 30) && (state_timer mod 40 == 0) {
    			boneCounter1++;
    			spawnBone(0, 60, -28, 6, false, 0);
    			spawnBone(0, 20, 156, 6, false, 0);
    			spawnBone(1, 60, -28, -6, false, 0);
    			spawnBone(1, 20, 156, -6, false, 0);
    		}
		} else {
			temp_timer++;
		}
		
		if (temp_timer == 150) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 170) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	
    	case 2: //blue bone jump
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
    	
		if (boneCounter1 < 3) {
			if (state_timer > 30) {
				if (state_timer mod 50 == 0) {
					spawnBone(0, 100, 156, 10, true, 0);
				}
				
				if (state_timer mod 50 == 20) {
					spawnBone(0, 20, 156, 10, false, 0);
					boneCounter1++;
				}
    		}
		} else if (boneCounter1 < 6) {
			if (state_timer >= 200) {
				if (state_timer mod 50 == 18) {
					spawnBone(1, 20, 156, -10, false, 0);
				}
				
				if (state_timer mod 50 == 44) {
					spawnBone(1, 100, 156, -10, true, 0);
					boneCounter1++;
				}
			}
		} else {
			temp_timer++;
		}
		
		if (temp_timer == 100) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 120) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	
    	case 3: //bone jump random 1
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
    	var randHeightTop = random_func_2((floor(timer/25) mod 100) + (state_timer mod 100), 30, true) + 30;
    	var randSpeed = (random_func_2((floor(timer/20) mod 100) + (state_timer mod 100), 2, false)/2) + 6;
    	
		if (boneCounter1 < 5) {
			if (state_timer > 30) && (state_timer mod 60 == 0) {
				var topHeight = randHeightTop;
				var bottomHeight = 85 - topHeight;
				var offset = -150 + (topHeight*2);
				var speedVar = randSpeed;
				
    			spawnBone(0, topHeight, offset, speedVar, false, 0);
    			spawnBone(0, bottomHeight, 156, speedVar, false, 0);
    			spawnBone(1, topHeight, offset, -speedVar, false, 0);
    			spawnBone(1, bottomHeight, 156, -speedVar, false, 0);
    			boneCounter1++;
    		}
		} else {
			temp_timer++;
		}
		
		if (temp_timer == 150) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 170) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	
    	case 4: //left parkour
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		boneCounter2 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
    	if (state_timer < 480) {
    		if (boneCounter1 < 45) {
				if (state_timer > 30) && (state_timer mod 8 == 0) {
	    			spawnBone(0, 25, 156, 4, false, 0);
	    			boneCounter1++;
	    		}
			}
			
			if (state_timer == 40) || (state_timer == 150) || (state_timer == 260) {
    			spawnPlat(get_marker_x(4) - 80, get_marker_y(4) + 80, 1, 4);
    		}
    		
    		if (boneCounter2 < 3) {
    			if (state_timer > 290) && (state_timer mod 6 == 0) {
    				var topHeight = 70;
					var offset = -150 + (topHeight*2);
	    			spawnBone(0, topHeight, offset, 5, false, 0);
    				boneCounter2++;
	    		}
    		}
    		
    		if (state_timer == 470) {
    			var topHeight = 120;
				var offset = -150 + (topHeight*2);
    			spawnBone(0, topHeight, offset, 8, false, 0);
    		}
    	} else {
			temp_timer++;
		}
		
		if (temp_timer == 120) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 140) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	
    	case 5: //right parkour
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		boneCounter2 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
    	if (state_timer < 550) {
    		if (boneCounter1 < 55) {
				if (state_timer > 30) && (state_timer mod 8 == 0) {
	    			spawnBone(1, 35, 156, -4, false, 0);
	    			boneCounter1++;
	    		}
			}
			
			if (state_timer == 55) || (state_timer == 145) {
    			spawnPlat(get_marker_x(25) + 100, get_marker_y(25) + 65, 1, -5);
    		}
    		
    		if (state_timer == 125) {
    			spawnBone(1, 80, 156, -5, false, 0);
    		}
    		
    		if (state_timer == 105) {
    			spawnPlat(get_marker_x(25) + 100, get_marker_y(25) - 40, 1, -5);
    		}
    		
    		if (state_timer == 255) {
    			spawnPlat(get_marker_x(25) + 80, get_marker_y(25) - 35, 0, -2);
    		}
    		
    		if (state_timer == 233) {
    			spawnPlat(get_marker_x(25) + 100, get_marker_y(25) + 30, 1, -5);
    		}
    		if (state_timer == 250) {
    			var topHeight = 40;
				var offset = -150 + (topHeight*2);
    			spawnBone(1, topHeight, offset, -5, false, 0);
    		}
    		
    		if (state_timer == 283) {
    			spawnPlat(get_marker_x(25) + 100, get_marker_y(25) + 50, 1, -5);
    		}
    		if (state_timer == 300) {
    			var topHeight = 50;
				var offset = -150 + (topHeight*2);
    			spawnBone(1, topHeight, offset, -5, false, 0);
    		}
    		
    		if (state_timer == 333) {
    			spawnPlat(get_marker_x(25) + 100, get_marker_y(25) + 10, 1, -5);
    		}
    		if (state_timer == 350) {
    			var topHeight = 30;
				var offset = -150 + (topHeight*2);
    			spawnBone(1, topHeight, offset, -5, false, 0);
    		}
    		
    		if (state_timer == 460) {
    			spawnBone(1, 110, 156, -7, false, 0);
    		}
    		
    		if (state_timer == 470) {
    			var topHeight = 110;
				var offset = -150 + (topHeight*2);
    			spawnBone(0, topHeight, offset, 6, false, 0);
    		}
    	} else {
			temp_timer++;
		}
		
		if (temp_timer == 70) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 90) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	case 6: //bone plats
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		boneCounter2 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
    	if (state_timer >= 1) {
    		if (state_timer mod 130 == 50) {
	    		spawnPlat(get_marker_x(4) - 160, get_marker_y(4) - 50, 3, 4);
	    	}
	    	
	    	if (state_timer mod 100 == 80) {
	    		spawnPlat(get_marker_x(25) + 160, get_marker_y(25) + 70, 2, -4);
	    	}
    	}
    	
    	if (state_timer < 540) {
    		var randVar = random_func_2((floor(timer/25) mod 100) + (state_timer mod 100), 2, true);
    	
	    	if (state_timer mod 73 == 0) && (randVar == 0) { //top bones
				var topHeight = 45;
				var offset = -150 + (topHeight*2);
				spawnBone(1, topHeight, offset, -4, false, 0);
			}
			
			if (state_timer mod 51 == 0) && (randVar == 0) { //middle bones
				spawnBone(0, 55, 65, 4, false, 1);
			}
			
			if (state_timer mod 37 == 0) && (randVar == 0) { //bottom bones
				spawnBone(1, 35, 156, -4, false, 0);
			}
    	} else {
    		if (temp_timer == 0) || (debug && playerTauntPressed) {
    			if (survivalMode) {
					state_timer = 0;
			    	sansSpeechIndex++;
			    	sansAttackIndex++;
			    	removeAttacks();
			    	break;
				}
				resizeBox(-1, 0, 0);
				removeAttacks();
			}
			
			if (temp_timer == 20) || (debug && playerTauntPressed) {
				state = 5;
				state_timer = 0;
				temp_timer = 0;
				menuIndex = 0;
				menuIndexTimer = 0;
			}
			
			temp_timer++;
    	}
    	break;
    	
    	case 7: //monorail 1
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		boneCounter2 = 0;
    		resizeBox(1, 400, 20);
    		temp_timer = 0;
    	}
    	
    	if (state_timer == 40) {
    		with oPlayer {
    			if (!dead) {
	    			x = 700;
	    			y = 745;
    			}
    		}
    		spawnPlat(700, 750, 0, 0);
    		with obj_stage_article_platform {
    			if (get_article_script(id) == 53) {
    				controlled = true;
    			}
    		}
    		
    		//ground bone spawning
    		var bones = instance_create(get_marker_x(4), get_marker_y(3), "obj_stage_article", 55);
    			bones.hsp = 2;
    		/*
    		var incrementX = 25;
    		for (var i = 0; i < 40; i++) {
    			var bone = instance_create(get_marker_x(4) + (i*incrementX), get_marker_y(4) + 160, "obj_stage_article", 51);
				    bone.length = 18;
				    bone.boneHspeed = 2;
				    bone.halfSide = 1;
    		}
    		*/
    		
    		//vertical bone spawning
    		var boneLength = 32;
    		var bone1 = instance_create(get_marker_x(27) - 60, get_marker_y(27) + 160, "obj_stage_article", 51);
    			bone1.length = boneLength;
			    bone1.boneVspeed = -3.5;
			    
			var bone1a = instance_create(get_marker_x(27) - 60, get_marker_y(27) + 360, "obj_stage_article", 51);
    			bone1a.length = boneLength;
			    bone1a.boneVspeed = -3.5;
			
			var bone2 = instance_create(get_marker_x(27) + 80, get_marker_y(27) + 200, "obj_stage_article", 51);
    			bone2.length = boneLength;
			    bone2.boneVspeed = 4;
			
			var bone2a = instance_create(get_marker_x(27) + 80, get_marker_y(27) + 440, "obj_stage_article", 51);
    			bone2a.length = boneLength;
			    bone2a.boneVspeed = 4;
			    
			var bone3 = instance_create(get_marker_x(27) + 220, get_marker_y(27) + 165, "obj_stage_article", 51);
    			bone3.length = boneLength;
			    bone3.boneVspeed = -3;
			    
			var bone3a = instance_create(get_marker_x(27) + 220, get_marker_y(27) + 380, "obj_stage_article", 51);
    			bone3a.length = boneLength;
			    bone3a.boneVspeed = -3;
			
    	}
    	
    	//ground bones
    	/*
    	if (state_timer > 40) && (state_timer mod 13 == 1) && (temp_timer == 0) {
    		spawnBone(0, 18, 160, 2, false, 1);
    	}
    	*/
    	
    	//vertical bones
    	var boneLength = 37;
    	if (state_timer mod 56 == 55) && (temp_timer == 0) {
    		spawnBone(3, boneLength, -60, -3.5, false, 0);
    	}
    	if (state_timer mod 60 == 50) && (temp_timer == 0) {
    		spawnBone(2, boneLength, 80, 4, false, 0);
    	}
    	if (state_timer mod 70 == 69) && (temp_timer == 0) {
    		spawnBone(3, boneLength, 220, -3, false, 0);
    	}
    	
    	with obj_stage_article_platform {
    		if (get_article_script(id) == 53) {
    			if (other.state_timer < 150) && (state_timer mod 20 == 0) {
					if (hsp < 3) {
						hsp += 1;
					} else {
						hsp = 3;
					}
				}
				
				if place_meeting(x, y, obj_stage_article_solid) {
					hsp *= -1;
				}
    		}
		}
		
		if (state_timer > 430) {
			temp_timer++;
		}
		
		if (temp_timer == 1) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 21) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	case 8: //blaster plats
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		boneCounter2 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
    	if (state_timer >= 1) && (temp_timer == 0) {
    		if (state_timer mod 100 == 50) {
	    		spawnPlat(get_marker_x(4) - 80, get_marker_y(4) - 40, 1, 3);
	    	}
	    	
	    	if (state_timer mod 90 == 50) {
	    		spawnPlat(get_marker_x(25) + 80, get_marker_y(25) + 80, 1, -3);
	    	}
	    	
	    	var randVar = random_func_2((floor(timer/25) mod 100) + (state_timer mod 100), 3, true);
	    	var layerOffset = 0;
	    	
	    	if (randVar == 0) {
	    		layerOffset = 135;
	    	} else if (randVar == 1) {
	    		layerOffset = 30;
	    	} else if (randVar == 2) {
	    		layerOffset = -75;
	    	}
	    	
	    	if (state_timer mod 80 == 0) {
	    		spawnBlaster(get_marker_x(25) - 70, get_marker_y(25) + layerOffset, -1, 1, 1, 0, -90, 0, 0.9, 1.5);
	    	}
	    	
	    	if (state_timer mod 80 == 40) {
	    		spawnBlaster(get_marker_x(4) + 70, get_marker_y(4) + layerOffset, 1, 1, -1, 0, 90, 0, 0.9, 1.5);
	    	}
	    	
	    	
    	}
    	
    	if (state_timer > 480) {
			temp_timer++;
		}
		
		if (temp_timer == 1) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 21) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	
    	break;
    	
    	case 9: //monorail 2
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		boneCounter2 = 0;
    		resizeBox(1, 400, 20);
    		temp_timer = 0;
    	}
    	
    	if (state_timer == 40) {
    		with oPlayer {
    			if (!dead) {
	    			x = 700;
	    			y = 745;
    			}
    		}
    		spawnPlat(700, 750, 0, 0);
    		with obj_stage_article_platform {
    			if (get_article_script(id) == 53) {
    				controlled = true;
    			}
    		}
    		
    		//ground bone spawning
			var bones = instance_create(get_marker_x(4), get_marker_y(3), "obj_stage_article", 55);
    			bones.hsp = 2;
    		/*
    		var incrementX = 25;
    		for (var i = 0; i < 40; i++) {
    			var bone = instance_create(get_marker_x(4) + (i*incrementX), get_marker_y(4) + 160, "obj_stage_article", 51);
				    bone.length = 18;
				    bone.boneHspeed = 2;
				    bone.halfSide = 1;
    		}
    		*/
    		
    		//vertical bone spawning
    		var boneLength = 28;
    		var bone1 = instance_create(get_marker_x(27) - 60, get_marker_y(27) + 175, "obj_stage_article", 51);
    			bone1.length = boneLength;
			    bone1.boneVspeed = -3;
			    
			var bone1a = instance_create(get_marker_x(27) - 60, get_marker_y(27) + 360, "obj_stage_article", 51);
    			bone1a.length = boneLength;
			    bone1a.boneVspeed = -3;
			
			var bone2 = instance_create(get_marker_x(27) + 80, get_marker_y(27) + 230, "obj_stage_article", 51);
    			bone2.length = boneLength;
			    bone2.boneVspeed = 4;
			
			var bone2a = instance_create(get_marker_x(27) + 80, get_marker_y(27) + 470, "obj_stage_article", 51);
    			bone2a.length = boneLength;
			    bone2a.boneVspeed = 4;
			
			var bone3 = instance_create(get_marker_x(27) + 220, get_marker_y(27) + 175, "obj_stage_article", 51);
    			bone3.length = boneLength;
			    bone3.boneVspeed = -3;
			    
			var bone3a = instance_create(get_marker_x(27) + 220, get_marker_y(27) + 360, "obj_stage_article", 51);
    			bone3a.length = boneLength;
			    bone3a.boneVspeed = -3;
			
    	}
    	
    	//ground bones
    	/*
    	if (state_timer > 40) && (state_timer mod 13 == 1) && (temp_timer == 0) {
    		spawnBone(0, 18, 160, 2, false, 1);
    	}
    	*/
    	
    	//vertical bones
    	var boneLength = 28;
    	if (state_timer mod 60 == 45) && (temp_timer == 0) {
    		spawnBone(3, boneLength, -60, -3, false, 0);
    		spawnBone(3, boneLength, 220, -3, false, 0);
    	}
    	if (state_timer mod 52 == 40) && (temp_timer == 0) {
    		spawnBone(2, boneLength, 80, 4, false, 0);
    	}
    	
    	with obj_stage_article_platform {
    		if (get_article_script(id) == 53) {
				if (other.state_timer < 150) && (state_timer mod 20 == 0) {
					if (hsp < 3) {
						hsp += 1;
					} else {
						hsp = 3;
					}
				}
				
				if place_meeting(x, y, obj_stage_article_solid) {
					hsp *= -1;
				}
    		}
		}
		
		if (state_timer > 430) {
			temp_timer++;
		}
		
		if (temp_timer == 1) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 21) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	case 10: //bone jump 2
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
		if (boneCounter1 < 8) {
			if (state_timer > 30) && (state_timer mod 40 == 0) {
    			boneCounter1++;
    			var topHeight = 65;
    			var bottomHeight = 30;
				var offset = -150 + (topHeight*2);
    			spawnBone(0, topHeight, offset, 7.5, false, 0);
    			spawnBone(0, bottomHeight, 156, 7.5, false, 0);
    			spawnBone(1, topHeight, offset, -7.5, false, 0);
    			spawnBone(1, bottomHeight, 156, -7.5, false, 0);
    		}
		} else {
			temp_timer++;
		}
		
		if (temp_timer == 100) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 120) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	case 11: //bone insert
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
    	if (boneCounter1 < 8) {
			if (state_timer > 30) && (state_timer mod 45 == 0) {
    			boneCounter1++;
    			var topHeight = 110;
    			var bottomHeight = 20;
				var offset = -150 + (topHeight*2);
    			spawnBone(1, topHeight, offset, -4, false, 0);
    			spawnBone(0, bottomHeight, 156, 4, false, 0);
    		}
		} else {
			temp_timer++;
		}
		
		if (temp_timer == 200) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 220) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	case 12: //bone jump random 2
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		resizeBox(1, 300, 0);
    		temp_timer = 0;
    	}
    	
    	var randHeightTop = random_func_2((floor(timer/25) mod 100) + (state_timer mod 100), 50, true) + 30;
    	
		if (boneCounter1 < 5) {
			if (state_timer > 30) && (state_timer mod 60 == 0) {
				var topHeight = randHeightTop;
				var bottomHeight = 90 - topHeight;
				var offset = -150 + (topHeight*2);
				
    			spawnBone(0, topHeight, offset, 8, false, 0);
    			spawnBone(0, bottomHeight, 156, 8, false, 0);
    			spawnBone(1, topHeight, offset, -8, false, 0);
    			spawnBone(1, bottomHeight, 156, -8, false, 0);
    			boneCounter1++;
    		}
		} else {
			temp_timer++;
		}
		
		if (temp_timer == 100) || (debug && playerTauntPressed) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex = 14; //skip the spare section
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 120) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	case 13: //spare, no battle
		state = 5;
		state_timer = 0;
		temp_timer = 0;
		menuIndex = 0;
		menuIndexTimer = 0;
    	break;
    	
    	case 14:
    	if (state_timer == 1) {
    		removeAttacks();
    		boneCounter1 = 0;
    		boneCounter2 = 0;
    		temp_timer = 0;
    		attack_timer = 0;
    		attack = 0;
    		attack_count = 0;
    	}
    	
    	//chk chk sounds + screen black
    	if (attack_timer == 0) {
    		sound_play(sound_get("chk"), false, 0);
    		blackScreen = true;
    		music_set_volume(0);
    		removeAttacks();
    		
    		if (attack_count == 5) {
    			resizeBox(-1, 0, 0);
    			removeAttacks();
    		}
    	} else if (attack_timer == 30) {
    		blackScreen = false;
    		sound_play(sound_get("chk"), false, 0);
    		music_set_volume(1);
    		if (attack_count == 5) {
    			if (survivalMode) {
					state_timer = 0;
			    	sansSpeechIndex++;
			    	sansAttackIndex++;
			    	removeAttacks();
			    	break;
				}
    			state = 5;
				state_timer = 0;
				temp_timer = 0;
				menuIndex = 0;
				menuIndexTimer = 0;
				metaBones = 1;
    		}
    	}
    	
    	//randomised attacks
    	var randVar = random_func_2((floor(timer/25) mod 100) + (state_timer mod 100), 4, true) + 1;
    	
    	if (attack_timer == 0) {
    		attack += randVar;
    		if (attack > 4) {
    			attack -= 5;
    		}
    	}
    	
    	attack_timer++;
    	
    	/*
		with oPlayer {
			//print_debug(string(x));
			//print_debug(string(y));
		}
		*/
    	if (attack_count < 5) {
	    	switch attack {
	    		case 0: //jail
	    		if (attack_timer == 1) || (attack_timer == 20) {
	    			resizeBox(1, 260, 0);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	    		
	    		var boneSpeed = 7;
	    		if (attack_timer mod 4 == 0) && (boneCounter1 < 4) && (attack_timer > 10) {
	    			spawnBone(0, 40, 156, boneSpeed, false, 0);
	    			spawnBone(1, 40, 156, -boneSpeed, false, 0);
	    			boneCounter1++;
	    		} else if (attack_timer mod 4 == 0) && (boneCounter1 == 4) && (attack_timer > 10) {
	    			spawnBone(0, 120, 156, boneSpeed, false, 0);
	    			spawnBone(1, 120, 156, -boneSpeed, false, 0);
	    			boneCounter1 = 5;
	    		}
	    		
	    		if (attack_timer == 85) {
	    			attack_timer = 0;
	    			boneCounter1 = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 1: //blue jail
	    		if (attack_timer == 1) || (attack_timer == 20) {
	    			resizeBox(1, 260, 0);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	    		
	    		var boneSpeed = 7;
	    		if (attack_timer == 2) {
	    			spawnBone(0, 120, 156, boneSpeed, true, 0);
	    			spawnBone(1, 120, 156, -boneSpeed, true, 0);
	    		} else if (attack_timer == 25) {
	    			spawnBone(0, 25, 156, boneSpeed, false, 0);
	    			spawnBone(1, 25, 156, -boneSpeed, false, 0);
	    		} else if (attack_timer = 35) {
	    			spawnBone(0, 120, 156, boneSpeed, false, 0);
	    			spawnBone(1, 120, 156, -boneSpeed, false, 0);
	    		}
	    		
	    		if (attack_timer == 95) {
	    			attack_timer = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 2: //fringe left/right
	    		if (attack_timer == 1) {
	    			randSwitch = timer mod 2;
	    		}
	    		if (attack_timer >= 1) && (randSwitch == 0) {
	    			if (attack_timer == 2) || (attack_timer == 20)	{
		    			resizeBox(1, 260, 0);
		    			with oPlayer {
		    				if (!dead) {
			    				x = 600;
			    				y = 848;
			    				hsp = 0;
			    				vsp = 0;
		    				}
		    			}
		    		}
		    		
		    		if (attack_timer mod 4 == 0) && (boneCounter1 < 11) {
		    			spawnBone(1, 60, 156, -9, false, 0);
		    			boneCounter1++;
		    		} else if (attack_timer mod 4 == 0) && (boneCounter1 < 21) {
		    			spawnBone(1, 20, 156, -9, false, 0);
		    			boneCounter1++;
		    		} else if (attack_timer mod 4 == 0) && (boneCounter1 = 21) {
		    			boneCounter1 = 22;
		    		}
		    		
		    		if (attack_timer == 140) {
		    			attack_timer = 0;
		    			boneCounter1 = 0;
		    			attack_count++;
		    		}
	    		} else {
	    			if (attack_timer == 1) || (attack_timer == 20)	{
		    			resizeBox(1, 260, 0);
		    			with oPlayer {
		    				x = 1320;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
		    			}
		    		}
		    		
		    		if (attack_timer mod 4 == 0) && (boneCounter1 < 11) {
		    			spawnBone(0, 60, 156, 9, false, 0);
		    			boneCounter1++;
		    		} else if (attack_timer mod 4 == 0) && (boneCounter1 < 21) {
		    			spawnBone(0, 20, 156, 9, false, 0);
		    			boneCounter1++;
		    		} else if (attack_timer mod 4 == 0) && (boneCounter1 = 21) {
		    			boneCounter1 = 22;
		    		}
		    		
		    		if (attack_timer == 140) {
		    			attack_timer = 0;
		    			boneCounter1 = 0;
		    			attack_count++;
		    		}
	    		}
	    		break;
	    		
	    		case 3: //jump small
	    		if (attack_timer == 1) || (attack_timer == 20)	{
	    			resizeBox(1, 260, -40);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	
				if (attack_timer mod 40 == 2) {
					var topHeight = 40;
					var offset = -110 + (topHeight*2);
	    			spawnBone(0, topHeight, offset, 6, false, 0);
	    			spawnBone(0, 30, 156, 6, false, 0);
	    			spawnBone(1, topHeight, offset, -6, false, 0);
	    			spawnBone(1, 30, 156, -6, false, 0);
	    		}
	    		
	    		if (attack_timer == 140) {
	    			attack_timer = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 4: //jump random
	    		if (attack_timer == 1) || (attack_timer == 20)	{
	    			resizeBox(1, 260, -40);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	    		
	    		var randHeightTop = random_func_2((floor(timer/22) mod 100) + (attack_timer mod 100), 40, true) + 20;
		    	var randSpeed = (random_func_2((floor(timer/26) mod 100) + (attack_timer mod 100), 2, false)/2) + 6.5;
		    	
				if (attack_timer mod 40 == 2) {
					var topHeight = randHeightTop;
					var bottomHeight = 70 - topHeight;
					var offset = -110 + (topHeight*2);
					var speedVar = randSpeed;
					
	    			spawnBone(0, topHeight, offset, speedVar, false, 0);
	    			spawnBone(0, bottomHeight, 156, speedVar, false, 0);
	    			spawnBone(1, topHeight, offset, -speedVar, false, 0);
	    			spawnBone(1, bottomHeight, 156, -speedVar, false, 0);
	    		}
				
	    		if (attack_timer == 130) {
	    			attack_timer = 0;
	    			attack_count++;
	    		}
	    		break;
	    	}
	    }
    	break;
    	
    	case 69: //nice. get dunked on.
    	if (state_timer == 1) {
    		dunkedOn = true;
    		for (var i = 0; i < 36; i++) {
	    		var bone = instance_create(get_marker_x(26) - 560 + (32*i), get_marker_y(26) + 1000, "obj_stage_article", 51);
				    bone.length = 220;
				    bone.boneHspeed = 0;
				    bone.boneVspeed = -20;
				    bone.blue = false;
				    bone.halfSide = 0;
	    	}
    	}
    	
    	if (state_timer == 57) {
    		with obj_stage_article {
    			if (get_article_script(id) == 51) {
    				boneVspeed = 0;
    			}
    		}
    	}
    	
    	break;
    	
    	
    	
    	//phase 2 start
    	case 15: //tracker blasters small
    	if (state_timer == 1) {
    		resizeBox(1, 300, 100);
    		temp_timer = 0;
    		boneCounter1 = 0; //counting blasters not bones this time
    	}
    	
    	if (state_timer mod 35 == 0) && (boneCounter1 < 15) {
    		boneCounter1++;
    		var randAngle = random_func_2((floor(timer/21) mod 100) + (state_timer mod 100), 360, true) - 180;
	    	var spawnDist = 130; //distance blaster spawns from player;
	    	var playerX = 0;
	    	var playerY = 0;
	    	with oPlayer {
	    		if (cpuId == undefined) && (!dead) {
	    			playerX = x;
	    			playerY = y - 30;
	    		}
	    	}
	    	
	    	//print_debug(string(playerY));
	    	//print_debug(string(randAngle));
	    	
	    	if (playerY > 790) {
	    		if (randAngle > 75) {
	    			randAngle -= 180;
	    		} else if (randAngle < -75) {
	    			randAngle += 180;
	    		}
	    	}
	    	
	    	var distX = spawnDist * dcos(randAngle + 90);
	    	var distY = -spawnDist * dsin(randAngle + 90);
	    	
	    	var spawnX = floor(playerX + distX);
	    	var spawnY = floor(playerY + distY);
	    	var approachX = dcos(randAngle + 90);
	    	var approachY = -dsin(randAngle + 90);
	    	
			spawnBlaster(spawnX, spawnY, -4*approachX, -4*approachY, 0, 0, 0, 10, 0.6, 1.2);
    	}
    	
    	with obj_stage_article {
    		if (get_article_script(id) == 52) {
    			if (timer < 20) {
    				var playerX = 0;
		    		var playerY = 0;
	    			with oPlayer {
			    		if temp_level == 0 { //is hooman
			    			playerX = x;
			    			playerY = y - 30;
			    		}
			    	}
			    	
			    	var aimAngle = darctan2(-(playerY - y), playerX - x);
			    	angleEnd = aimAngle + 90;
			    	if (angleEnd > 180) {
			    		angleEnd -= 360;
			    	} else if (angleEnd < -180) {
			    		angleEnd += 360;
			    	}
			    	
			    	exitDirX = -dcos(aimAngle);
			    	exitDirY = dsin(aimAngle);
    			}
    			
    		}
    	}
    	
    	
    	if (boneCounter1 == 15) {
    		temp_timer++;
		}
		
		if (temp_timer == 1) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 21) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
			boneCounter1 = 0;
		}
    	break;
    	
    	case 16:
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		boneCounter2 = 0;
    		temp_timer = 0;
    		attack_timer = 0;
    		attack = 0;
    		attack_count = 0;
    	}
    	
    	//print_debug(string(attack))
    	
    	//chk chk sounds + screen black
    	if (attack_timer == 0) {
    		sound_play(sound_get("chk"), false, 0);
    		blackScreen = true;
    		music_set_volume(0);
    		removeAttacks();
    		
    		if (attack_count == 5) {
    			resizeBox(-1, 0, 0);
    		}
    	} else if (attack_timer == 30) {
    		blackScreen = false;
    		sound_play(sound_get("chk"), false, 0);
    		music_set_volume(1);
    		if (attack_count == 5) {
    			if (survivalMode) {
					state_timer = 0;
			    	sansSpeechIndex++;
			    	sansAttackIndex++;
			    	removeAttacks();
			    	break;
				}
    			state = 5;
				state_timer = 0;
				temp_timer = 0;
				menuIndex = 0;
				menuIndexTimer = 0;
				metaBones = 2;
    		}
    	}
    	
    	//randomised attacks
    	var randVar = random_func_2((floor(timer/31) mod 100) + (state_timer mod 100), 4, true) + 1;
    	
    	if (attack_timer == 0) {
    		attack += randVar;
    		if (attack > 4) {
    			attack -= 5;
    		}
    	}
    	
    	attack_timer++;
    	
    	if (attack_count < 5) {
	    	switch attack {
	    		case 0: //bone wave left/right
	    		var randVar2 = random_func_2((floor(timer/43) mod 100) + (state_timer mod 100), 2, true);
	    		if (attack_timer == 1) {
	    			if (randVar2 mod 2 == 0) {
	    				waveSide = 0;
	    			} else {
	    				waveSide = 1;
	    			}
	    		}
	    		if (waveSide == 0) {
	    			if (attack_timer == 1) || (attack_timer == 20) {
		    			resizeBox(1, 120, 0);
		    			with oPlayer {
		    				if (!dead) {
			    				x = 1160;
			    				y = 848;
			    				hsp = 0;
			    				vsp = 0;
		    				}
		    			}
		    		}
		    		
		    		var topHeightArr = array_create(16);
			        
			        for (var i = 0; i < 16; i++) {
			        	topHeightArr[i] = floor((dsin(i * 270/16) + 1)*25 + 15);
			        }
			            
		            if (attack_timer mod 5 == 0) && (floor(attack_timer/5) < 16) {
		                var topHeight = topHeightArr[floor(attack_timer/5)];
		                var bottomHeight = 80 - topHeight;
		                var offset = -150 + (topHeight*2);
		                
		                var side = 0;
		                var spd = 10;
		                
		                spawnBone(side, topHeight, offset, spd, false, 0);
		                spawnBone(side, bottomHeight, 156, spd, false, 0);
		            }
		    		
		    		if (attack_timer == 140) {
		    			attack_timer = 0;
		    			boneCounter1 = 0;
		    			attack_count++;
		    		}
	    		} else {
	    			if (attack_timer == 1) || (attack_timer == 20) {
		    			resizeBox(1, 120, 0);
		    			with oPlayer {
		    				x = 750;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
		    			}
		    		}
		    		
		    		var topHeightArr = array_create(16);
			        
			        for (var i = 0; i < 16; i++) {
			        	topHeightArr[i] = floor((dsin(i * 270/16) + 1)*25 + 15);
			        }
			            
		            if (attack_timer mod 5 == 0) && (floor(attack_timer/5) < 16) {
		                var topHeight = topHeightArr[floor(attack_timer/5)];
		                var bottomHeight = 80 - topHeight;
		                var offset = -150 + (topHeight*2);
		                
		                var side = 1;
		                var spd = -10;
		                
		                spawnBone(side, topHeight, offset, spd, false, 0);
		                spawnBone(side, bottomHeight, 156, spd, false, 0);
		            }
		    		
		    		if (attack_timer == 140) {
		    			attack_timer = 0;
		    			boneCounter1 = 0;
		    			attack_count++;
		    		}
	    		}
	    		break;
	    		
	    		case 1: //diagonal blasters
	    		if (attack_timer == 1) || (attack_timer == 20)	{
	    			resizeBox(1, 0, 0);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 748;
		    				hsp = 0;
		    				vsp = -12;
		    				has_airdodge = true;
	    				}
	    			}
	    		}
	    		
	    		if (attack_timer == 1) {
	    			var delay = 20;
	    			var xScale = 1.3;
	    			var yScale = 1.3;
	    			spawnBlaster(get_marker_x(9), get_marker_y(9), 1, 1, -1, -1, 45, delay, xScale, yScale);
		        	spawnBlaster(get_marker_x(10), get_marker_y(10), -1, 1, 1, -1, -45, delay, xScale, yScale);
		        	spawnBlaster(get_marker_x(11), get_marker_y(11), -1, -1, 1, 1, -135, delay, xScale, yScale);
		        	spawnBlaster(get_marker_x(12), get_marker_y(12), 1, -1, -1, 1, 135, delay, xScale, yScale);
		        	
		        	with obj_stage_article {
		        		if (get_article_script(id) == 52) {
		        			silent = 1;
		        		}
		        	}
	    		}
	    		
	    		if (attack_timer == 30) {
	    			sound_play(sound_get("blaster_spawn"), false, 0);
	    		}
	    		
	    		if (attack_timer == 100) {
	    			attack_timer = 0;
	    			boneCounter1 = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 2: //horizontal blasters
	    		if (attack_timer == 1) || (attack_timer == 20)	{
	    			resizeBox(1, 0, 0);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 748;
		    				hsp = 0;
		    				vsp = -9;
		    				has_airdodge = true;
	    				}
	    			}
	    		}
	    		
	    		if (attack_timer == 1) {
	    			var delay = 30;
	    			var xScale = 1.5;
	    			var yScale = 1.5;
	    			var dist = 250;
	    			spawnBlaster(get_marker_x(26), get_marker_y(13) + dist, -1, 0, 0, 1, 180, delay, xScale, yScale);
		        	spawnBlaster(get_marker_x(26), get_marker_y(13) - dist, 1, 0, 0, -1, 0, delay, xScale, yScale);
		        	spawnBlaster(get_marker_x(26) + dist, get_marker_y(13), 0, -1, 1, 0, -90, delay, xScale, yScale);
		        	spawnBlaster(get_marker_x(26) - dist, get_marker_y(13), 0, 1, -1, 0, 90, delay, xScale, yScale);
		        	
		        	with obj_stage_article {
		        		if (get_article_script(id) == 52) {
		        			silent = 1;
		        		}
		        	}
	    		}
	    		
	    		if (attack_timer == 30) {
	    			sound_play(sound_get("blaster_spawn"), false, 0);
	    		}
	    		
	    		if (attack_timer == 110) {
	    			attack_timer = 0;
	    			boneCounter1 = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 3: //slot bones
	    		if (attack_timer == 1) || (attack_timer == 20)	{
	    			resizeBox(1, 260, 0);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 750;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	    		
	    		if (attack_timer == 1) {
	    			for (var i = 0; i < 6; i++) {
		    			var topHeight = 100;
						var offset = -150 + (topHeight*2);
						var bottomHeight = 40;
						
		    			var bone1 = instance_create(get_marker_x(4) - 600 + (180*i), get_marker_y(4) + offset, "obj_stage_article", 51); //horizontal bones
						    bone1.length = topHeight;
						    bone1.boneHspeed = 4;
						    bone1.boneVspeed = 0;
						    bone1.blue = false;
						    bone1.halfSide = 0;
						
						var bone2 = instance_create(get_marker_x(25) + 600 - (180*i), get_marker_y(25) + 156, "obj_stage_article", 51); //horizontal bones
						    bone2.length = bottomHeight;
						    bone2.boneHspeed = -4;
						    bone2.boneVspeed = 0;
						    bone2.blue = false;
						    bone2.halfSide = 0;
		    		}
	    		}
	    		
	    		
	    		if (attack_timer == 170) {
	    			attack_timer = 0;
	    			boneCounter1 = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 4: //diamond
	    		if (attack_timer == 1) || (attack_timer == 20)	{
	    			resizeBox(1, 260, -40);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 645;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	    		
	    		if (attack_timer == 1) {
	                
	    			spawnPlat(960, 660, 0, 0);
	    			spawnPlat(960, 760, 0, 0);
	    			
	    			var bones = instance_create(get_marker_x(4), get_marker_y(3), "obj_stage_article", 55);
	    				bones.tall = true;
	    		}
	    		
	    		if (attack_timer == 30) {
	    			var topHeight = 30;
	                var offset = -100 + (topHeight*2);
	                spawnBone(0, topHeight, offset, 8, false, 0);
	    		}
	    		
	    		if (attack_timer == 70) {
	    			spawnBone(1, 90, 156, -8, false, 0);
	    		}
	    		
	    		if (attack_timer == 150) {
	    			attack_timer = 0;
	    			attack_count++;
	    		}
	    		break;
	    	}
	    }
    	break;
    	
    	case 17: //slammer 1
    	if (state_timer == 1) {
            sound_play(sound_get("gravity_change"), false, 0);
            resizeBox(1, 0, 8);
            attack_count = 0;
            temp_timer = 0;
            sansGravityDraw = true;
            sansGravityDrawSpeed = 3;
            sansGravityDrawTimer = 0;
            sansGravityMoveTime = 60;
            sansGravityDir = undefined;
        }
        
        sansGravityDrawTimer++;
        
        var delay = 30;
        var activeTime = 20;
        if (state_timer mod 70 == 0) {
        	var randVar = random_func_2((floor(timer/21) mod 100) + (state_timer mod 100), 4, true);
        	spawnBoneStab(randVar, delay, activeTime, true);
        	attack_count++;
        	sansGravityDir = randVar;
        	sansGravityDrawTimer = 0;
        }
        
        if (attack_count > 8) {
        	temp_timer++;
        }
        
        if (temp_timer == 50) || (debug && playerTauntPressed) {
        	if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
			sansGravityDraw = false;
			sansGravityDrawSpeed = 0;
            sansGravityDrawTimer = 0;
            sansGravityMoveTime = 0;
            sansGravityDir = undefined;
		}
		
		if (temp_timer == 70) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			attack_count = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
			with oPlayer {
				outline_color = [0, 0, 0];
				init_shader();
			}
		}
    	break;
    	
    	case 18: //slammer 2
    	if (state_timer == 1) {
            sound_play(sound_get("gravity_change"), false, 0);
            resizeBox(1, 0, 8);
            attack_count = 0;
            temp_timer = 0;
            sansGravityDraw = true;
            sansGravityDrawSpeed = 3;
            sansGravityDrawTimer = 0;
            sansGravityMoveTime = 60;
            sansGravityDir = undefined;
        }
        
        sansGravityDrawTimer++;
        
        var delay = 25;
        var activeTime = 18;
        if (state_timer mod 60 == 0) {
        	var randVar = random_func_2((floor(timer/21) mod 100) + (state_timer mod 100), 4, true);
        	spawnBoneStab(randVar, delay, activeTime, true);
        	attack_count++;
        	sansGravityDir = randVar;
        	sansGravityDrawTimer = 0;
        }
        
        if (attack_count > 8) {
        	temp_timer++;
        }
        
        if (temp_timer == 30) || (debug && playerTauntPressed) {
        	sansGravityDraw = false;
			sansGravityDrawSpeed = 0;
            sansGravityDrawTimer = 0;
            sansGravityMoveTime = 0;
            sansGravityDir = undefined;
        	if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 50) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			attack_count = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
			metaBones = 3;
			with oPlayer {
				outline_color = [0, 0, 0];
				init_shader();
			}
		}
    	break;
    	
    	case 19: //tracker blasters large
    	if (state_timer == 1) {
    		resizeBox(1, 300, 100);
    		temp_timer = 0;
    		boneCounter1 = 0; //counting blasters not bones this time
    	}
    	
    	if (state_timer mod 40 == 0) && (boneCounter1 < 13) {
    		boneCounter1++;
    		var randAngle = random_func_2((floor(timer/21) mod 100) + (state_timer mod 100), 360, true) - 180;
	    	var spawnDist = 200; //distance blaster spawns from player;
	    	var playerX = 0;
	    	var playerY = 0;
	    	with oPlayer {
	    		if (cpuId == undefined) && (!dead) { //is hooman
	    			playerX = x;
	    			playerY = y - 30;
	    		}
	    	}
	    	
	    	//print_debug(string(playerY));
	    	//print_debug(string(randAngle));
	    	
	    	if (playerY > 790) {
	    		if (randAngle > 75) {
	    			randAngle -= 180;
	    		} else if (randAngle < -75) {
	    			randAngle += 180;
	    		}
	    	}
	    	
	    	var distX = spawnDist * dcos(randAngle + 90);
	    	var distY = -spawnDist * dsin(randAngle + 90);
	    	
	    	var spawnX = floor(playerX + distX);
	    	var spawnY = floor(playerY + distY);
	    	var approachX = dcos(randAngle + 90);
	    	var approachY = -dsin(randAngle + 90);
	    	
    		spawnBlaster(spawnX, spawnY, approachX, approachY, 0, 0, 0, 10, 1.2, 1.2);
    	}
    	
    	with obj_stage_article {
    		if (get_article_script(id) == 52) {
    			if (timer < 20) {
    				var playerX = 0;
		    		var playerY = 0;
	    			with oPlayer {
			    		if (cpuId == undefined) {
			    			playerX = x;
			    			playerY = y - 30;
			    		}
			    	}
			    	
			    	var aimAngle = darctan2(-(playerY - y), playerX - x);
			    	angleEnd = aimAngle + 90;
			    	if (angleEnd > 180) {
			    		angleEnd -= 360;
			    	} else if (angleEnd < -180) {
			    		angleEnd += 360;
			    	}
			    	
			    	exitDirX = -dcos(aimAngle);
			    	exitDirY = dsin(aimAngle);
    			}
    			
    		}
    	}
    	
    	
    	if (boneCounter1 == 13) {
    		temp_timer++;
		}
		
		if (temp_timer == 1) {
			if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
		
		if (temp_timer == 21) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
			boneCounter1 = 0;
		}
    	break;
    	
    	case 20: //bone ladder
    	if (state_timer == 1) {
    		resizeBox(1, 0, 0);
    		temp_timer = 0;
    		boneCounter1 = 0;
    	}
    	
    	if (state_timer > 30) && (state_timer mod 50 == 31) && (temp_timer == 0) {
			var markerNum = 27;
			var sideOffsetX = -10;
			var boneVsp = 8;
		
			var bone = instance_create(get_marker_x(markerNum) + sideOffsetX, get_marker_y(markerNum) - 100, "obj_stage_article", 51); //horizontal bones
			    bone.length = 160;
			    bone.boneHspeed = 0;
			    bone.boneVspeed = boneVsp;
			    bone.blue = false;
			    bone.halfSide = 0;
			    bone.rotAngle = 90;
    	}
    	
    	if (state_timer > 30) && (state_timer mod 50 == 30) && (temp_timer == 0) {
			var markerNum = 26;
			var sideOffsetX = 340;
			var boneVsp = -8;
		
			var bone = instance_create(get_marker_x(markerNum) + sideOffsetX, get_marker_y(markerNum) + 100, "obj_stage_article", 51); //horizontal bones
			    bone.length = 160;
			    bone.boneHspeed = 0;
			    bone.boneVspeed = boneVsp;
			    bone.blue = false;
			    bone.halfSide = 0;
			    bone.rotAngle = 90;
			
			boneCounter1++;
    	}
    	
    	if (boneCounter1 == 7) {
    		temp_timer++;
    	}
    	
    	if (temp_timer == 100) {
    		if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
		}
    	
    	if (temp_timer == 120) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			boneCounter1 = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
		}
    	break;
    	
    	case 21:
    	if (state_timer == 1) {
    		boneCounter1 = 0;
    		boneCounter2 = 0;
    		temp_timer = 0;
    		attack_timer = 0;
    		attack = 0;
    		attack_count = 0;
    	}
    	
    	//chk chk sounds + screen black
    	if (attack_timer == 0) {
    		sound_play(sound_get("chk"), false, 0);
    		blackScreen = true;
    		music_set_volume(0);
    		removeAttacks();
    		
    		if (attack_count == 5) {
    			resizeBox(-1, 0, 0);
    		}
    	} else if (attack_timer == 30) {
    		blackScreen = false;
    		sound_play(sound_get("chk"), false, 0);
    		music_set_volume(1);
    		if (attack_count == 5) {
    			if (survivalMode) {
					state_timer = 0;
			    	sansSpeechIndex++;
			    	sansAttackIndex++;
			    	removeAttacks();
			    	break;
				}
    			state = 5;
				state_timer = 0;
				temp_timer = 0;
				menuIndex = 0;
				menuIndexTimer = 0;
    		}
    	}
    	
    	//randomised attacks
    	var randVar = random_func_2((floor(timer/25) mod 100) + (state_timer mod 100), 5, true) + 1;
    	
    	if (attack_timer == 0) {
    		attack += randVar;
    		if (attack > 5) {
    			attack -= 6;
    		}
    	}
    	
    	attack_timer++;
    	
    	/*
		with oPlayer {
			//print_debug(string(x));
			//print_debug(string(y));
		}
		*/
    	if (attack_count < 5) {
	    	switch attack {
	    		case 0: //jail
	    		if (attack_timer == 1) || (attack_timer == 20) {
	    			resizeBox(1, 260, 0);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	    		
	    		var boneSpeed = 7;
	    		if (attack_timer mod 4 == 0) && (boneCounter1 < 4) && (attack_timer > 2) {
	    			spawnBone(0, 40, 156, boneSpeed, false, 0);
	    			spawnBone(1, 40, 156, -boneSpeed, false, 0);
	    			boneCounter1++;
	    		} else if (attack_timer mod 4 == 0) && (boneCounter1 == 4) && (attack_timer > 2) {
	    			spawnBone(0, 120, 156, boneSpeed, false, 0);
	    			spawnBone(1, 120, 156, -boneSpeed, false, 0);
	    			boneCounter1 = 5;
	    		}
	    		
	    		if (attack_timer == 77) {
	    			attack_timer = 0;
	    			boneCounter1 = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 1: //blue jail
	    		if (attack_timer == 1) || (attack_timer == 20) {
	    			resizeBox(1, 260, 0);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	    		
	    		var boneSpeed = 7;
	    		if (attack_timer == 2) {
	    			spawnBone(0, 120, 156, boneSpeed, true, 0);
	    			spawnBone(1, 120, 156, -boneSpeed, true, 0);
	    		} else if (attack_timer == 25) {
	    			spawnBone(0, 25, 156, boneSpeed, false, 0);
	    			spawnBone(1, 25, 156, -boneSpeed, false, 0);
	    		} else if (attack_timer = 35) {
	    			spawnBone(0, 120, 156, boneSpeed, false, 0);
	    			spawnBone(1, 120, 156, -boneSpeed, false, 0);
	    		}
	    		
	    		if (attack_timer == 95) {
	    			attack_timer = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 2: //bone wave left/right
	    		var randVar2 = random_func_2((floor(timer/43) mod 100) + (state_timer mod 100), 2, true);
	    		if (attack_timer == 1) {
	    			if (randVar2 mod 2 == 0) {
	    				waveSide = 0;
	    			} else {
	    				waveSide = 1;
	    			}
	    		}
	    		if (waveSide == 0) {
					if (attack_timer == 1) || (attack_timer == 20) {
		    			resizeBox(1, 120, 0);
		    			with oPlayer {
		    				if (!dead) {
			    				x = 750;
			    				y = 848;
			    				hsp = 0;
			    				vsp = 0;
		    				}
		    			}
		    		}
		    		
		    		var topHeightArr = array_create(16);
			        
			        for (var i = 0; i < 16; i++) {
			        	topHeightArr[i] = floor((dsin(i * 270/16) + 1)*25 + 15);
			        }
			            
		            if (attack_timer mod 5 == 0) && (floor(attack_timer/5) < 16) {
		                var topHeight = topHeightArr[floor(attack_timer/5)];
		                var bottomHeight = 80 - topHeight;
		                var offset = -150 + (topHeight*2);
		                
		                var side = 1;
		                var spd = -10;
		                
		                spawnBone(side, topHeight, offset, spd, false, 0);
		                spawnBone(side, bottomHeight, 156, spd, false, 0);
		            }
		    		
		    		if (attack_timer == 140) {
		    			attack_timer = 0;
		    			boneCounter1 = 0;
		    			attack_count++;
		    		}
	    		} else {
	    			if (attack_timer == 1) || (attack_timer == 20) {
		    			resizeBox(1, 120, 0);
		    			with oPlayer {
		    				x = 1160;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
		    			}
		    		}
		    		
		    		var topHeightArr = array_create(16);
			        
			        for (var i = 0; i < 16; i++) {
			        	topHeightArr[i] = floor((dsin(i * 270/16) + 1)*25 + 15);
			        }
			            
		            if (attack_timer mod 5 == 0) && (floor(attack_timer/5) < 16) {
		                var topHeight = topHeightArr[floor(attack_timer/5)];
		                var bottomHeight = 80 - topHeight;
		                var offset = -150 + (topHeight*2);
		                
		                var side = 0;
		                var spd = 10;
		                
		                spawnBone(side, topHeight, offset, spd, false, 0);
		                spawnBone(side, bottomHeight, 156, spd, false, 0);
		            }
		    		
		    		if (attack_timer == 140) {
		    			attack_timer = 0;
		    			boneCounter1 = 0;
		    			attack_count++;
		    		}
	    		}
	    		break;
	    		
	    		case 3: //jump small
	    		if (attack_timer == 1) || (attack_timer == 20)	{
	    			resizeBox(1, 260, -40);
	    			with oPlayer {
		    				if (!dead) {
		    				x = 960;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	
				if (attack_timer mod 40 == 2) {
					var topHeight = 40;
					var offset = -110 + (topHeight*2);
	    			spawnBone(0, topHeight, offset, 6, false, 0);
	    			spawnBone(0, 30, 156, 6, false, 0);
	    			spawnBone(1, topHeight, offset, -6, false, 0);
	    			spawnBone(1, 30, 156, -6, false, 0);
	    		}
	    		
	    		if (attack_timer == 140) {
	    			attack_timer = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 4: //jump random
	    		if (attack_timer == 1) || (attack_timer == 20)	{
	    			resizeBox(1, 260, -40);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 960;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	    		
	    		var randHeightTop = random_func_2((floor(timer/22) mod 100) + (attack_timer mod 100), 40, true) + 20;
		    	var randSpeed = (random_func_2((floor(timer/26) mod 100) + (attack_timer mod 100), 2, false)/2) + 6.5;
		    	
				if (attack_timer mod 40 == 2) {
					var topHeight = randHeightTop;
					var bottomHeight = 70 - topHeight;
					var offset = -110 + (topHeight*2);
					var speedVar = randSpeed;
					
	    			spawnBone(0, topHeight, offset, speedVar, false, 0);
	    			spawnBone(0, bottomHeight, 156, speedVar, false, 0);
	    			spawnBone(1, topHeight, offset, -speedVar, false, 0);
	    			spawnBone(1, bottomHeight, 156, -speedVar, false, 0);
	    		}
				
	    		if (attack_timer == 130) {
	    			attack_timer = 0;
	    			attack_count++;
	    		}
	    		break;
	    		
	    		case 5: //slot bones
	    		if (attack_timer == 1) || (attack_timer == 20)	{
	    			resizeBox(1, 260, 0);
	    			with oPlayer {
	    				if (!dead) {
		    				x = 750;
		    				y = 848;
		    				hsp = 0;
		    				vsp = 0;
	    				}
	    			}
	    		}
	    		
	    		if (attack_timer == 1) {
	    			for (var i = 0; i < 6; i++) {
		    			var topHeight = 100;
						var offset = -150 + (topHeight*2);
						var bottomHeight = 40;
						
		    			var bone1 = instance_create(get_marker_x(4) - 600 + (180*i), get_marker_y(4) + offset, "obj_stage_article", 51); //horizontal bones
						    bone1.length = topHeight;
						    bone1.boneHspeed = 4;
						    bone1.boneVspeed = 0;
						    bone1.blue = false;
						    bone1.halfSide = 0;
						
						var bone2 = instance_create(get_marker_x(25) + 600 - (180*i), get_marker_y(25) + 156, "obj_stage_article", 51); //horizontal bones
						    bone2.length = bottomHeight;
						    bone2.boneHspeed = -4;
						    bone2.boneVspeed = 0;
						    bone2.blue = false;
						    bone2.halfSide = 0;
		    		}
	    		}
	    		
	    		
	    		if (attack_timer == 170) {
	    			attack_timer = 0;
	    			boneCounter1 = 0;
	    			attack_count++;
	    		}
	    		break;
	    	}
	    }
    	break;
    	
    	case 22: //slammer 3
    	if (state_timer == 1) {
            resizeBox(1, 0, 8);
            attack_count = 0;
            temp_timer = 0;
            sansGravityDraw = true;
            sansGravityDrawSpeed = 3;
            sansGravityDrawTimer = 0;
            sansGravityMoveTime = 40;
            sansGravityDir = undefined;
        }
        
        sansGravityDrawTimer++;
        
        var delay = 25;
        var activeTime = 18;
        if (state_timer mod 50 == 0) && (temp_timer == 0) {
        	var randVar = random_func_2((floor(timer/21) mod 100) + (state_timer mod 100), 4, true);
        	spawnBoneStab(randVar, delay, activeTime, true);
        	attack_count++;
        	sansGravityDir = randVar;
        	sansGravityDrawTimer = 0;
        }
        
        if (attack_count > 8) {
        	temp_timer++;
        }
        
        if (temp_timer == 35) || (debug && playerTauntPressed) {
        	if (survivalMode) {
				state_timer = 0;
		    	sansSpeechIndex++;
		    	sansAttackIndex++;
		    	removeAttacks();
		    	break;
			}
			resizeBox(-1, 0, 0);
			removeAttacks();
			sansGravityDraw = false;
			sansGravityDrawSpeed = 0;
            sansGravityDrawTimer = 0;
            sansGravityMoveTime = 0;
            sansGravityDir = undefined;
		}
		
		if (temp_timer == 55) || (debug && playerTauntPressed) {
			state = 5;
			state_timer = 0;
			temp_timer = 0;
			attack_count = 0;
			menuIndex = 0;
			menuIndexTimer = 0;
			metaBones = 3;
		}
    	break;
    	
    	case 23: //long attack
    	if (state_timer == 1) {
            resizeBox(1, 0, 8);
            attack_count = 0;
            attack_timer = 0;
            attack = 0;
            temp_timer = 0;
            boneCounter1 = 0;
            sansGravityDraw = true;
            sansGravityDrawSpeed = 3;
            sansGravityDrawTimer = 0;
            sansGravityMoveTime = 40;
            sansGravityDir = undefined;
            sweatLevel = 0;
        }
        attack_timer++;
        
        switch attack {
        	case 0: //slammer
        	sansGravityDrawTimer++;
	        var delay = 20;
	        var activeTime = 18;
	        if (attack_timer mod 50 == 0) {
	        	var randVar = random_func_2((floor(timer/21) mod 100) + (attack_timer mod 100), 4, true);
	        	spawnBoneStab(randVar, delay, activeTime, true);
	        	attack_count++;
	        	sansGravityDir = randVar;
        		sansGravityDrawTimer = 0;
	        }
	        
	        if (attack_count > 3) {
	        	temp_timer++;
	        }
	        
	        if (temp_timer == 20) {
				attack_timer = 0;
				attack++;
				temp_timer = 0;
				attack_count = 0;
				sansGravityDraw = false;
				sansGravityDrawSpeed = 0;
	            sansGravityDrawTimer = 0;
	            sansGravityMoveTime = 0;
	            sansGravityDir = undefined;
	            
	            corridorDrawIndex = 1;
	            with oPlayer {
					outline_color = [0, 0, 0];
					init_shader();
				}
			}
        	break;
        	
        	case 1: //bone ladder
        	if (attack_timer > 30) && (attack_timer mod 50 == 31) && (temp_timer == 0) {
				var markerNum = 27;
				var sideOffsetX = -10;
				var boneVsp = 8;
			
				var bone = instance_create(get_marker_x(markerNum) + sideOffsetX, get_marker_y(markerNum) - 100, "obj_stage_article", 51); //horizontal bones
				    bone.length = 160;
				    bone.boneHspeed = 0;
				    bone.boneVspeed = boneVsp;
				    bone.blue = false;
				    bone.halfSide = 0;
				    bone.rotAngle = 90;
	    	}
	    	
	    	if (attack_timer > 30) && (attack_timer mod 50 == 30) && (temp_timer == 0) {
				var markerNum = 26;
				var sideOffsetX = 340;
				var boneVsp = -8;
			
				var bone = instance_create(get_marker_x(markerNum) + sideOffsetX, get_marker_y(markerNum) + 100, "obj_stage_article", 51); //horizontal bones
				    bone.length = 160;
				    bone.boneHspeed = 0;
				    bone.boneVspeed = boneVsp;
				    bone.blue = false;
				    bone.halfSide = 0;
				    bone.rotAngle = 90;
				
				boneCounter1++;
	    	}
	    	
	    	if (boneCounter1 == 3) {
	    		temp_timer++;
	    	}
	    	
	    	if (temp_timer == 60) {
				attack_timer = 0;
				attack++;
				temp_timer = 0;
				attack_count = 0;
				boneCounter1 = 0;
				corridorDrawIndex = 2;
			}
        	break;
        	
        	case 2: //corridor
        	if (attack_timer <= 10) {
        		with oPlayer {
        			if (!dead) {
		        		vsp = 0;
		        		hsp = -25;
        			}
	        	}
        	}
        	if (attack_timer == 6) {
        		sound_play(sound_get("impact"), false, 0);
        		roomXmod = -10;
        	}
        	
        	if (attack_timer == 10) {
        		resizeBox(9, 800, 0)
        	}
        	
        	if (attack_timer == 30) {
        		resizeBox(10, 800, 0)
        	}
        	
        	if (attack_timer >= 10) {
        		with oPlayer {
        			if (!dead) {
	        			if !jump_down {
	        				if up_down && !down_down {
		        				vsp = -4;
		        			} else if down_down && !up_down {
		        				vsp = 4;
		        			} else {
		        				vsp = 0;
		        			}
	        			}
        			}
        		}
        	}
        	
        	if (attack_timer == 120) {
        		corridorDrawIndex = 3;
        	}
        	
        	//bone wave
        	var topHeightArr = array_create(50);
	        for (var i = 0; i < 50; i++) {
	        	topHeightArr[i] = floor((dsin(i * 360/17) + 1)*25 + 15);
	        }
	            
            if (attack_timer mod 5 == 0) && (floor((attack_timer - 40)/5) < 50) && (attack_timer > 40) {
                var topHeight = topHeightArr[floor((attack_timer - 40)/5)];
                var bottomHeight = 90 - topHeight;
                var offset = -150 + (topHeight*2);
                
                var side = 1;
                var spd = -18;
                
                spawnBone(side, topHeight, offset, spd, false, 0);
                spawnBone(side, bottomHeight, 156, spd, false, 0);
                
                with obj_stage_article {
                	if (get_article_script(id) == 51) {
                		if (x < get_marker_x(4)) {
                			instance_destroy(id);
                		}
                	}
                }
            }
            
            if (attack_timer > 290) && (attack_timer mod 50 == 0 || attack_timer mod 50 == 2 || attack_timer mod 50 == 4) && (boneCounter1 < 15) {
            	var topHeight = 70;
                var offset = -150 + (topHeight*2);
            	spawnBone(1, topHeight, offset, -18, false, 0);
            	boneCounter1++;
            }
            
            if (attack_timer > 290) && (attack_timer mod 50 == 25 || attack_timer mod 50 == 27 || attack_timer mod 50 == 29) && (boneCounter1 < 15) {
            	var bottomHeight = 70;
                var offset = 156;
            	spawnBone(1, bottomHeight, offset, -18, false, 0);
            }
            
            //funnel
            if (attack_timer > 520) {
            	var topHeightArr = array_create(25);
		        for (var i = 0; i < 25; i++) {
		        	topHeightArr[i] = 8 + (2*i);
		        }
		        
		        if (attack_timer mod 4 == 0) && (floor((attack_timer - 520)/4) < 25) {
	                var topHeight = topHeightArr[floor((attack_timer - 520)/4)];
	                var bottomHeight = topHeight;
	                var offset = -150 + (topHeight*2);
	                
	                var side = 1;
	                var spd = -18;
	                
	                spawnBone(side, topHeight, offset, spd, false, 0);
	                spawnBone(side, bottomHeight, 156, spd, false, 0);
	                
	                with obj_stage_article {
	                	if (get_article_script(id) == 51) {
	                		if (x < get_marker_x(4)) {
	                			instance_destroy(id);
	                		}
	                	}
	                }
	            }
            }
            
            //end of corridor
            if (attack_timer == 680) {
            	resizeBox(11, 400, 0)
            }
            
            if (attack_timer >= 680) && (attack_timer < 720) {
            	with oPlayer {
            		if (!dead) {
	            		hsp = 9;
            		}
            	}
            }
            
            if (attack_timer == 740) {
				var sta = instance_create(get_marker_x(29) + 200, get_marker_y(29), "obj_stage_article", 50);
					sta.rotAngle = 90;
					sta.delay = 30;
					sta.boneActiveTime = 40;
					sta.slam = true;
					sta.spawnSide = 1;
            }
            
            if (attack_timer == 800) {
            	attack_timer = 0;
				attack++;
				temp_timer = 0;
				attack_count = 0;
				boneCounter1 = 0;
            }
        	break;
        	
        	case 3: //double slammer 1
        	if (attack_timer == 1) {
        		resizeBox(1, 0, 0);
	    		sound_play(sound_get("chk"), false, 0);
	    		blackScreen = true;
	    		music_set_volume(0);
	    		removeAttacks();
	    		with oPlayer {
	    			if (!dead) {
	    				x = 960;
	    				y = 848;
	    				hsp = 0;
	    				vsp = 0;
	    			}
    			}
	    	} else if (attack_timer == 40) {
	    		blackScreen = false;
	    		sound_play(sound_get("chk"), false, 0);
	    		music_set_volume(1);
	    		spawnBoneStab(3, 20, 30, false);
	    		spawnBoneStab(2, 20, 30, false);
	    		with obj_stage_article {
	    			if (get_article_script(id) == 50) {
	    				noShake = true;
	    			}
	    		}
	    	} else if (attack_timer == 80) {
	    		attack_timer = 0;
				attack++;
	    	}
        	break;
        	
        	case 4: //double slammer 2
        	if (attack_timer == 1) {
        		resizeBox(1, 0, 0);
	    		sound_play(sound_get("chk"), false, 0);
	    		blackScreen = true;
	    		music_set_volume(0);
	    		removeAttacks();
	    		with oPlayer {
	    			if (!dead) {
	    				x = 660;
	    				y = 448;
	    				hsp = 0;
	    				vsp = 0;
	    			}
    			}
	    	} else if (attack_timer == 20) {
	    		blackScreen = false;
	    		sound_play(sound_get("chk"), false, 0);
	    		music_set_volume(1);
	    		spawnBoneStab(0, 20, 30, false);
	    		spawnBoneStab(2, 20, 30, false);
	    		with obj_stage_article {
	    			if (get_article_script(id) == 50) {
	    				noShake = true;
	    			}
	    		}
	    	} else if (attack_timer == 60) {
	    		attack_timer = 0;
				attack++;
	    	}
        	break;
        	
        	case 5: //double slammer 3
        	if (attack_timer == 1) {
        		resizeBox(1, 0, 0);
	    		sound_play(sound_get("chk"), false, 0);
	    		blackScreen = true;
	    		music_set_volume(0);
	    		removeAttacks();
	    		with oPlayer {
	    			if (!dead) {
	    				x = 1160;
	    				y = 848;
	    				hsp = 0;
	    				vsp = 0;
	    			}
    			}
	    	} else if (attack_timer == 20) {
	    		blackScreen = false;
	    		sound_play(sound_get("chk"), false, 0);
	    		music_set_volume(1);
	    		spawnBoneStab(1, 20, 30, false);
	    		spawnBoneStab(3, 20, 30, false);
	    		with obj_stage_article {
	    			if (get_article_script(id) == 50) {
	    				noShake = true;
	    			}
	    		}
	    	} else if (attack_timer == 60) {
	    		attack_timer = 0;
				attack++;
	    	}
        	break;
        	
        	case 6: //single slammer
        	if (attack_timer == 1) {
        		resizeBox(1, 0, 0);
	    		sound_play(sound_get("chk"), false, 0);
	    		blackScreen = true;
	    		music_set_volume(0);
	    		removeAttacks();
	    		with oPlayer {
	    			if (!dead) {
	    				x = 660;
	    				y = 648;
	    				hsp = 0;
	    				vsp = 0;
	    			}
    			}
	    	} else if (attack_timer == 20) {
	    		blackScreen = false;
	    		sound_play(sound_get("chk"), false, 0);
	    		music_set_volume(1);
	    		spawnBoneStab(0, 20, 30, false);
	    		with obj_stage_article {
	    			if (get_article_script(id) == 50) {
	    				noShake = true;
	    			}
	    		}
	    	} else if (attack_timer == 50) {
	    		attack_timer = 0;
				attack++;
	    	}
        	break;
        	
        	case 7: //blaster ring
        	if (boneCounter1 < 170) { //counting blasters
        		var angle = (floor(attack_timer*2.25) mod 360);
        		
        		var centreX = get_marker_x(3);
        		var centreY = get_marker_y(28);
        		var radius = 180;
        		
        		var xMod = dcos(angle);
        		var yMod = -dsin(angle);
        		
        		if (attack_timer mod 4 == 0) {
        			spawnBlaster(floor(centreX + (radius*xMod)), floor(centreY + (radius*yMod)), -xMod * 10, -yMod * 10, xMod, yMod, angle - 90, 20, 0.4, 1);
        			boneCounter1++;
        		}
        	} else if (boneCounter1 >= 153) {
        		temp_timer++;
        	}
        	if (temp_timer == 80) {
        		attack_timer = 0;
				attack++;
				boneCounter1 = 0;
				boneCounter2 = 0;
				temp_timer = 0;
        	}
        	break;
        	
        	case 8: //sans rapid slamming
        	if (attack_timer == 1) {
        		corridorDrawIndex = 4;
        		sansGravityDraw = true;
        		sansGravityDrawFinal = true;
        		sansGravityDrawSpeed = 1;
	            sansGravityDrawTimer = 0;
	            sansGravityDir = undefined;
	            sansGravityMoveTime = 30;
	            sansGravityFaceIndex = 15;
        	}
        	metaBones = 0;
        	outlineSlamCounter++;
        	sansGravityDrawTimer++;
        	
        	if (attack_timer == 450) {
    			sansGravityDrawSpeed = 3;
    			sansGravityFaceIndex = 0;
    			sweatLevel = 1;
    			soundDelay = 3;
    		} else if (attack_timer == 700) {
    			sansGravityDrawSpeed = 5;
    			soundDelay = 6;
    		} else if (attack_timer == 900) {
    			sansGravityDrawSpeed = 7;
    			sansGravityFaceIndex = 2;
    			sweatLevel = 2;
    			soundDelay = 16;
    		} else if (attack_timer == 1100) {
    			sansGravityDrawSpeed = 11;
    			sansGravityFaceIndex = 9;
    			sweatLevel = 3;
    			soundDelay = 30;
    		}
    		
        	if (attack_timer < 450 && attack_timer mod 10 == 0)
        	|| (attack_timer >= 450 && attack_timer < 750 && attack_timer mod 20 == 0)
        	|| (attack_timer >= 700 && attack_timer < 900 && attack_timer mod 40 == 0)
        	|| (attack_timer >= 900 && attack_timer < 1100 && attack_timer mod 80 == 0)
        	|| (attack_timer >= 1100 && attack_timer < 1300 && attack_timer mod 120 == 0) {
        		tempSoundVar = 0;
        		
        		if (sansGravityFaceIndex == 15) {
        			sansGravityFaceIndex = 16;
        		} else if (sansGravityFaceIndex == 16) {
        			sansGravityFaceIndex = 15;
        		}
        		
        		if (attack_timer > 350) {
        			music_fade(0, 0.002)
        		}
        		var randVar = random_func_2((floor(timer/7) mod 100) + (floor(attack_timer/4) mod 100), 2, true);
        		boneCounter2++;
        		
        		var phsp = undefined;
        		var pvsp = undefined;
        		var speedvar = 30;
        		if (randVar == 0) {
        			phsp = speedvar;
        		} else if (randVar == 1) {
        			pvsp = speedvar;
        		}
	        	
	        	if (boneCounter2 mod 2 == 1) {
	        		if (phsp != undefined) {
        				phsp *= -1;
        			}
	        		if (pvsp != undefined) {
        				pvsp *= -1;
        			}
	        	}
	        	
	        	if (phsp != undefined) {
	        		if (phsp < 0) {
		        		sansGravityDir = 0;
		        		tempXmod = -10;
		        		tempYmod = 0;
		        	} else if (phsp > 0) {
		        		sansGravityDir = 1;
		        		tempXmod = 10;
		        		tempYmod = 0;
		        	}
	        	}
	        	
	        	if (pvsp != undefined) {
	        		if (pvsp < 0) {
		        		sansGravityDir = 2;
		        		tempYmod = -10;
		        		tempXmod = 0;
		        	} else if (pvsp > 0) {
		        		sansGravityDir = 3;
		        		tempYmod = 10;
		        		tempXmod = 0;
		        	}
	        	}
        		sansGravityDrawTimer = 0;
	        	
	        	outlineSlamCounter = 0;
	        	
	        	temppvsp = pvsp;
	        	tempphsp = phsp;
        	}
        	
        	if (tempSoundVar == soundDelay) {
        		sound_play(sound_get("impact"), false, 0);
        		roomXmod = tempXmod;
        		roomYmod = tempYmod;
        		with oPlayer {
        			if (cpuId == undefined) {
        				if (other.tempphsp != undefined) {
	        				hsp = other.tempphsp;
	        			}
	        			if (other.temppvsp != undefined) {
	        				vsp = other.temppvsp;
	        			}
	        			if (playerHP > 3) {
	        				take_damage(player, -1, 2);
	        			} else {
	        				set_player_damage(player, playerHPMax - 1);
	        			}
        			}
        		}
        	}
        	
        	tempSoundVar++;
        	
        	if (outlineSlamCounter == 0) {
        		with oPlayer {
        			if (cpuId == undefined) {
        				outline_color = [0, 0, 255];
						init_shader();
        			}
        		}
        	} else if (outlineSlamCounter == 30) {
        		with oPlayer {
        			if (cpuId == undefined) {
        				outline_color = [0, 0, 0];
						init_shader();
        			}
        		}
        	}
        	
        	if (attack_timer >= 1300) {
        		if (survivalMode) {
        			resizeBox(-1, 0, 0);
					state_timer = 0;
					state = 10;
					sansGravityDraw = false;
					winEndState = true;
					aliventTimer = 0;
					with oPlayer {
						if (cpuId == undefined) {
							dead = true;
							killTimer = 179;
						}
					}
					break;
				}
        		sansGravityEndTimer++;
        		attack_timer = 0;
        		attack = 0;
        		state_timer = 0;
        		sansAttackIndex++;
        		boneCounter1 = 0;
        		boneCounter2 = 0;
        		temp_timer = 0;
        	}
        	break;
        	
        }
    	break;
    	
    	case 24: //pre final attack speech
    	music_stop();
	    //box expand
	    if (state_timer == 1) {
	        resizeBox(-1, 0, 0);
	        sweatLevel = 3;
	        sansGravityDraw = false;
	    }
	    
	    if (state_timer == 60) {
	    	sansSpeak = true;
	    	sansSpeakScript = finalAttackSpeech;
	    	textInit();
	    }
    	break;
    }
    break;
    
    case 7: //outro
    if (state_timer == 1) {
    	with oPlayer {
    		resultTimer = other.timer;
    	}
        with (obj_stage_article_platform) {
            if (get_article_script(id) == 96) || (get_article_script(id) == 95) {
                state = 19;
                state_timer = 0;
            }
        }
        with oPlayer {
			if !dead && cpuId == undefined {
				with other {
					var shadow = instance_create(other.x, other.y, "obj_stage_article", 5);
						shadow.target_id = other.id;
						shadow.depth = -10;
				}
			}
		}
    }
    break;
    
    case 9: //death, show results
    //print_debug(string(state_timer));
    battleTextActive = false;
    sansSpeak = false;
    
    if (dunkedOn) {
    	if (state_timer == 200) {
    		music_play_file("dogsong");
    	}
    	if (state_timer == 300) {
    		textInit();
			dunkedText = true;
			currentText[0] = "";
			currentText[1] = "";
    	}
    } else {
    	if (state_timer == 200) {
    		displayStats = true;
	    	dataIndex = 0;
	    	textInit();
	    	music_play_file("game_over");
	    }
    }
    break;
    
    case 10: //win, show results
    battleTextActive = false;
    sansSpeak = false;
    if (state_timer == 1) {
    	with oPlayer {
	    	if (cpuId == undefined) {
	    		playerHP = playerHPMax;
	    		set_player_damage(player, 0);
	    	}
	    }
    	sound_play(sound_get("intronoise"), false, 0);
    }
    if (state_timer == 120) {
    	music_play_file("stmpwyfs");
    }
    if (state_timer == 240) {
		displayStats = true;
    	dataIndex = 0;
    	textInit();
    }
    break;
}

//sans talking in battle
if (sansSpeak) {
	if (textboxIndex == array_length(sansSpeakScript)) {
		sansSpeak = false;
		if (sansAttackIndex == 24) { //special attack speech end
			state = 5; //menu
			menuIndex = 1; //fight
			menuIndexTimer = 0;
			sansAttackIndex++;
			instance_create(get_marker_x(24), get_marker_y(24), "obj_stage_article", 4);
		} else {
			state++;
			state_timer = 0;
		}
	} else {
    	if (debug && (textboxTime > 8) && buttonPressed)
    	|| ((textboxTime > 8) && (buttonPressed) && ((state != 2 && state != 4 && state != 3 && (sansAttackIndex != 24) && (sansAttackIndex != 25)) || lineIndex == 4))
    	|| ((scriptText[7] == 11 || scriptText[7] == 10 || scriptText[7] == 120) && lineIndex == 4) {
    		textboxTime = 0;
    		lineTime = 0;
    		lineTextNum = 0;
    		
    		textboxIndex++;
    		lineIndex = 0;
    		
    		scriptText[0] = "";
    		scriptText[1] = "";
    		scriptText[2] = "";
    		scriptText[3] = "";
    		
    		typeSpecialAttack = false;
    		typeSpecialAttackCounter = 0;
    	}
    	
    	if (lineIndex < 4) && (textboxIndex < array_length(sansSpeakScript)) {
    		var str = sansSpeakScript[textboxIndex,lineIndex]; //string to print on line
    		
    		scriptText[4] = sansSpeakScript[textboxIndex,4]; //face
    		scriptText[5] = sansSpeakScript[textboxIndex,5]; //body
    		scriptText[6] = sansSpeakScript[textboxIndex,6]; //legs
    		scriptText[7] = sansSpeakScript[textboxIndex,7];
    		scriptText[8] = sansSpeakScript[textboxIndex,8];
    		
	    	speechTime++;
	    	textboxTime++;
	    	lineTime++;
	    	
	    	if (scriptText[7] == 69) && (textboxTime == 5) { //spare music
	    		music_play_file("spare");
	    	} else if (scriptText[7] == 70) & (textboxTime == 1) {
	    		music_stop();
	    	} else if (scriptText[7] == 71) & (textboxTime == 1) {
	    		music_play_file("megalovania");
	    		music_set_volume(0);
	    	}
	    	
	    	if (scriptText[7] == 120) && (textboxTime == 20) { //dissolve sound
	    		sound_play(sound_get("vaporized"), false, 0);
	    	}
	    	
	    	if (textboxIndex == 43) {
	    		sweatLevel = 2;
	    	} else if (textboxIndex == 44) {
	    		sweatLevel = 1;
	    	} else if (textboxIndex == 45) {
	    		sweatLevel = 0;
	    	}
	    	
	    	if !((scriptText[7] == 1) && (scriptText[8] >= textboxTime)) { //case 1 delays speech time
	    		if (scriptText[7] == 2) && (scriptText[8] >= textboxTime) { //case 2 does chk chk thing
	    			if (textboxTime == 1) || (textboxTime == 30) {
	    				music_stop();
	    				sound_play(sound_get("chk"), false, 0);
	    			}
	    		} else {
			    	
			    	var textSpd = 2;
			    	if (scriptText[7] == 2) {
			    		textSpd = 8;
			    	}
			    	
			    	if (lineTime mod textSpd == 0) { //advance text every n frames
			    		lineTextNum++;
			    		textboxTextNum++;
			    		
			    		//currentText = string_char_at(str, lineTextNum);
			    		scriptText[lineIndex] = string_copy(str, 1, lineTextNum);
				    	//print_debug(string(currentText));
				    	
				    	if (lineTextNum > string_length(str)) { //end of string, move to next line if not last line
				    		lineTextNum = 0;
				    		lineTime = 0;
				    		lineIndex++;
				    	}
				    	
				    	if (typeSpecialAttack == true) {
				    		typeSpecialAttackCounter++;
				    	}
			    	}
			    	
			    	if (lineTime mod 4 == 0) && (scriptText[7] != 2) && (string_char_at(str, lineTextNum) != " ") && (lineTextNum != 0) { //case 2 makes sans mute
			    		sound_play(sound_get("sans_speak"), false, 0);
			    	}
	    		}
    		}
    		
    		//red text stuff
    		if (scriptText[7] == 9) {
    			if (scriptText[8] == 1) && (textboxTime == 60) { //special attack text 1
	    			typeSpecialAttack = true;
		    	}
		    	if (scriptText[8] == 2) && (textboxTime == 18) { //special attack text 2
	    			typeSpecialAttack = true;
		    	}
		    	if (scriptText[8] == 3) && (textboxTime == 124) { //use it text
	    			typeSpecialAttack = true;
		    	}
		    	if (scriptText[8] == 4) && (textboxTime == 70) { //special attack text 3
	    			typeSpecialAttack = true;
		    	}
		    	if (scriptText[8] == 5) && (textboxTime == 34) { //special attack text 3
	    			typeSpecialAttack = true;
		    	}
    		}
    		
    	}
	}
}

//textbox in between attacks
if (battleTextActive) {
	if (lineIndex < array_length(battleTextScript)) {
		var str = battleTextScript[lineIndex]; //string to print on line
		currentText[3] = battleTextScript[3]
		speechTime++;
    	textboxTime++;
    	lineTime++;
    	
    	var textSpd = 2;
    	
    	if (lineTime mod textSpd == 0) { //advance text every n frames
    		lineTextNum++;
    		
    		if (lineIndex < 3) {
    			currentText[lineIndex] = string_copy(str, 1, lineTextNum);
    		}
    		
	    	
	    	if (lineIndex < 3) && (lineTextNum > string_length(str)) { //end of string, move to next line if not last line
	    		lineTextNum = 0;
	    		lineTime = 0;
	    		lineIndex++;
	    	}
    	}
    	
    	if (lineIndex < 3) && (lineTime mod 3 == 0) && (string_char_at(str, lineTextNum) != " ") && (lineTextNum != 0) {
    		sound_play(sound_get("text"), false, 0);
    	}
	}
}

//dunked on text
if (dunkedText) {
	if (textboxIndex < array_length(dunkedSpeech)) {
    	if (textboxTime > 8 && buttonPressed && lineIndex == 2) {
    		textboxTime = 0;
    		lineTime = 0;
    		lineTextNum = 0;
    		
    		textboxIndex++;
    		lineIndex = 0;
    		
    		scriptText[0] = "";
    		scriptText[1] = "";
    	}
    	
    	if (lineIndex < 2) && (textboxIndex < array_length(dunkedSpeech)) {
    		var str = dunkedSpeech[textboxIndex,lineIndex]; //string to print on line
    		
	    	speechTime++;
	    	textboxTime++;
	    	lineTime++;
			    	
	    	var textSpd = 4;
	    	
	    	if (lineTime mod textSpd == 0) { //advance text every n frames
	    		lineTextNum++;
	    		textboxTextNum++;
	    		
	    		scriptText[lineIndex] = string_copy(str, 1, lineTextNum);
		    	
		    	if (lineTextNum > string_length(str)) { //end of string, move to next line if not last line
		    		lineTextNum = 0;
		    		lineTime = 0;
		    		lineIndex++;
		    	}
	    	}
	    	
	    	if (lineTime mod 4 == 0) && (string_char_at(str, lineTextNum) != " ") && (lineTextNum != 0) {
	    		sound_play(sound_get("sans_speak"), false, 0);
	    	}
    	}
	} else {
		endTimer++;
	}
}


//end of game stats
if (displayStats) {
	var playerArr = array_create(4);
		playerArr[0] = 0;
		playerArr[1] = 0;
		playerArr[2] = 0;
		playerArr[3] = 0;
	with oPlayer {
		if (cpuId == undefined) {
			var dataArr = array_create(8);
				dataArr[0] = player;
				dataArr[1] = floor(resultTimer/60);
				dataArr[2] = damageTaken;
				dataArr[3] = karmaTaken;
				dataArr[4] = attacksSurvived;
				dataArr[5] = healthRecovered;
				dataArr[6] = perfectAttacks;
				dataArr[7] = timesActed;
			playerArr[player - 1] = dataArr;
		}
	}
	
	if (dataIndex < array_length(playerArr)) {
		if (playerArr[dataIndex] == 0) {
			dataIndex++;
			exit;
		}
		var arrLength = array_length(playerArr[dataIndex]);
		if (lineIndex < arrLength) {
			var prefix = "";
			var suffix = "";
			if (lineIndex == 0) {
				prefix = "Player ";
				suffix = "";
			} else if (lineIndex == 1) {
				prefix = "Time alive: ";
				suffix = "s";
			} else if (lineIndex == 2) {
				prefix = "Damage taken: ";
				suffix = "";
			} else if (lineIndex == 3) {
				prefix = "KR recieved: ";
				suffix = "";
			} else if (lineIndex == 4) {
				prefix = "Attacks survived: ";
				suffix = "";
			} else if (lineIndex == 5) {
				prefix = "HP recovered: ";
				suffix = "";
			} else if (lineIndex == 6) {
				prefix = "Perfect attacks: ";
				suffix = "";
			} else if (lineIndex == 7) {
				prefix = "Times ACTed: ";
				suffix = "";
			}
			
			var arr = playerArr[dataIndex];
			var str = prefix + string(arr[lineIndex]) + suffix + ""; //string to print on line
			
	    	textboxTime++;
	    	lineTime++;
	    	
	    	var textSpd = 2;
	    	
	    	if (lineTime mod textSpd == 0) { //advance text every n frames
	    		lineTextNum++;
	    		
	    		if (lineIndex < arrLength) {
	    			endText[dataIndex,lineIndex] = string_copy(str, 1, lineTextNum);
	    		}
		    	
		    	if (lineIndex < arrLength) && (lineTextNum > string_length(str)) { //end of string, move to next line if not last line
		    		lineTextNum = 0;
		    		lineTime = 0;
		    		lineIndex++;
		    	}
		    	
		    	if (lineIndex == arrLength) {
		    		dataIndex++;
		    		lineIndex = 0;
		    		lineTextNum = 0;
		    		lineTime = 0;
		    	}
	    	}
	    	
	    	if (lineIndex < arrLength) && (lineTime mod 3 == 0) && (string_char_at(str, lineTextNum) != " ") && (lineTextNum != 0) {
	    		sound_play(sound_get("text"), false, 0);
	    	}
		}
	} else {
		endTimer++;
	}
}

if (endTimer > 60) {
	with oPlayer {
    	if (attack_pressed || special_pressed) && (cpuId == undefined) {
    		with other {
    			end_match();
    		}
    	}
    }
}

if (endTimer > 2000) {
	end_match();
}

#define spawnButtons

var button1 = instance_create(get_marker_x(20), get_marker_y(20), "obj_stage_article", 3);
var button2 = instance_create(get_marker_x(21), get_marker_y(21), "obj_stage_article", 3);
var button3 = instance_create(get_marker_x(22), get_marker_y(22), "obj_stage_article", 3);
var button4 = instance_create(get_marker_x(23), get_marker_y(23), "obj_stage_article", 3);

button1.buttonIndex = 0;
button1.image_index = 0;
button2.buttonIndex = 2;
button2.image_index = 2;

if (expertMode) || (foodCount >= 10) {
	button3.buttonIndex = 8;
	button3.image_index = 8;
} else {
	button3.buttonIndex = 4;
	button3.image_index = 4;
}


button4.buttonIndex = 6;
button4.image_index = 6;

#define removeButtons
with obj_stage_article {
	if (get_article_script(id) == 3) {
        instance_destroy(id);
    }
}

#define textInit
speechTime = 0; //number of frames elapsed into speech
textboxIndex = 0; //text box number
textboxTime = 0; //number of frames elapsed into textbox
textboxTextNum = 0; //text symbol index per textbox.
lineIndex = 0; //line number
lineTime = 0; //number of frames elapsed into line, resets after new line
lineTextNum = 0; //text symbol index per line.
textboxPauseTimer = 0; //pauses in textbox speech.

#define resizeBox
with (obj_stage_article_solid) {
	if (get_article_script(id) == 1) || (get_article_script(id) == 2) {
        moveDir = argument[0];
        dimensionX = argument[1]/2;
        dimensionY = argument[2];
    }
}

#define spawnBone
var spawnSide = argument[0]; //0 = left, 1 = right, 2 = top, 3 = bottom. will always move in opposite direction of spawn
var length = argument[1];
var offset = argument[2];
var boneSpeed = argument[3];
var blue = argument[4];
var halfSide = argument[5]; //0 = none, 1 = remove bottom, 2 = remove top

var markerNum = undefined;
var sideOffsetX = 0;
var sideOffsetY = 0;
var boneHsp = 0;
var boneVsp = 0;
switch spawnSide {
	case 0:
	markerNum = 4;
	sideOffsetY = offset;
	boneHsp = boneSpeed;
	break;
	
	case 1:
	markerNum = 25;
	sideOffsetY = offset;
	boneHsp = boneSpeed;
	break;
	
	case 2:
	markerNum = 27;
	sideOffsetX = offset;
	boneVsp = boneSpeed;
	break;
	
	case 3:
	markerNum = 26;
	sideOffsetX = offset;
	boneVsp = boneSpeed;
	break;
}

var bone = instance_create(get_marker_x(markerNum) + sideOffsetX, get_marker_y(markerNum) + sideOffsetY, "obj_stage_article", 51); //horizontal bones
    bone.length = length;
    bone.boneHspeed = boneHsp;
    bone.boneVspeed = boneVsp;
    bone.blue = blue;
    bone.halfSide = halfSide;

#define spawnPlat
var spawnX = argument[0];
var spawnY = argument[1];
var size = argument[2];
var speed = argument[3];

var plat = instance_create(spawnX, spawnY, "obj_stage_article_platform", 53);
	plat.platSize = size;
	plat.platSpeed = speed;

return plat.id;
	
#define removeAttacks
with (obj_stage_article) {
	if (get_article_script(id) == 50) || (get_article_script(id) == 51) || (get_article_script(id) == 52) || (get_article_script(id) == 54) || (get_article_script(id) == 55) {
        instance_destroy(id);
    }
}
with (obj_stage_article_platform) {
	if (get_article_script(id) == 53) {
        instance_destroy(id);
    }
}

#define spawnBlaster
var spawnX = argument[0];
var spawnY = argument[1];
var approachX = argument[2]; //if +ve, approaches with +ve hsp (from left), if -ve from right, if 0 means none.
var approachY = argument[3]; //if +ve, approaches from top, -ve from bottom
var exitX = argument[4];
var exitY = argument[5];
var angleEnd = argument[6]; //final angle of blaster
var delay = argument[7]; //amount of delay on firing
var scaleX = argument[8]; //image x scaling
var scaleY = argument[9]; //image y scaling

var bla = instance_create(spawnX, spawnY, "obj_stage_article", 52);
    bla.moveDirX = approachX;
    bla.moveDirY = approachY;
    bla.exitDirX = exitX;
    bla.exitDirY = exitY;
    bla.angleEnd = angleEnd;
    bla.delayFire = delay;
    bla.scaleX = scaleX;
    bla.scaleY = scaleY;

#define spawnBoneStab
var spawnSide = argument[0]; //0 = left, 1 = right, 2 = top, 3 = bottom
var delay = argument[1];
var boneActiveTime = argument[2];
var slam = argument[3];

var marker = undefined;
var rotAngle = undefined;
var xMod = 0;
var yMod = 0;
switch spawnSide {
	case 0:
	marker = 28;
	rotAngle = 270;
	break;
	
	case 1:
	marker = 29;
	rotAngle = 90;
	break;
	
	case 2:
	marker = 30;
	rotAngle = 180;
	break;
	
	case 3:
	marker = 3;
	rotAngle = 0;
	break;
}

var sta = instance_create(get_marker_x(marker), get_marker_y(marker), "obj_stage_article", 50);
	sta.rotAngle = rotAngle;
	sta.delay = delay;
	sta.boneActiveTime = boneActiveTime;
	sta.slam = true;
	sta.spawnSide = spawnSide;