
//---------------- Update Disguise/Taunt


// if(disguised && !disguisedAsSelf)
// {
// 	if(state == PS_CROUCH)
// 		hurtboxID.sprite_index = crouchbox_spr;//TODO: fix this
// 	else if(free)
// 		hurtboxID.sprite_index = air_hurtbox_spr;
// 	else
// 		hurtboxID.sprite_index = hurtbox_spr;
// }


if(matchTimer == 2)
	user_event(7);//Initialise Player Variables


with(oPlayer)//record custom character sprites during the match since we cant read them directly(?)
{
	if(get_match_setting(SET_RUNES) && other.player != self.player)
		continue;
	if(other.player != self.player && other.playerSpriteMaps[player-1][? get_state_name(state)] == undefined && state_timer > 0)
		ds_map_set(other.playerSpriteMaps[player-1], get_state_name(state), sprite_index);
	
	//TODO: should also record timing for ones that have drastically different ones eg epinel
	//		but states can be cancelled, so need to always listen if we can add new frames
	//		and the problem is for eg jump the timing is different based on height, so only for walk/crouch/etc?
	//		first try with base cast, eg zetterburn crouch
	//		could then either safe export base cast or improve it when there is one in the match
	
	// if(other.player != self.player)
	// {
	// 	print(get_state_name(state) + " -> " + string(state_timer) + " -> " + string(sprite_index)+ " / " + string(image_index));
		
	// 	// ds_map_set(other.playerToStateToSpriteIndexMap[player-1], state, sprite_index);

	// 	var list = other.playerToStateToStateTimerToImageIndexMap[player-1][? state];
	// 	if(state_timer > ds_list_size(list))
	// 		ds_list_add(other.playerToStateToStateTimerToImageIndexMap[player-1][? state], image_index);//TODO: how to prevent adding endlessly on idle? check if image_index loops
	// }
}



if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack != AT_TAUNT && attack != AT_TAUNT_2 && attack != AT_NSPECIAL && attack != AT_EXTRA_1 && attack != AT_EXTRA_2 && attack != AT_EXTRA_3)
	user_event(2);//Cancel Disguise



if(!free)
    mechCanDjump = true;

if(disguised && !disguisedAsSelf && chars[charIndex] == "mouse")
{
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
				
				floatMoveSpeed *= 1.4;
				
				if (floatMoveSpeed > air_max_speed){
					floatMoveSpeed = air_max_speed;
				}
				
				floatDriftSpeed = floatMoveSpeed*(down_down - up_down);
				
			} else {
					floatMoveSpeed = 2;
					floatDriftSpeed *= .96;
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
		
		// if (songAir){
		// 	songAir = 0;
		// 	move_cooldown[AT_DSPECIAL] = 10;
		// }
	} else if (floatCancel && !free && state != 5){
		floating = 0;
	}

	if (freeFloat > 0){
		freeFloat -= 1;
	}
}

if(disguised && !disguisedAsSelf && chars[charIndex] == "mech")
{
	if(jump_down && !jump_down_last && state_cat == SC_AIR_NEUTRAL && mechCanDjump)
	{
		mechCanDjump = !mechOverheated;
    	set_attack(AT_EXTRA_1);
		sfx_ell_hoverSfx = sound_play(asset_get("sfx_ell_hover"), true);
		mechSoundPlaying = true;
	}
	
	if(mechHeat == mechHeatMax)
	{
    	mechOverheated = true;
		if(!mechSoundPlaying2)
			sfx_ell_overheatSfx = sound_play(asset_get("sfx_ell_overheat"));
		mechSoundPlaying2 = true;
	}
	if(mechHeat == 0 && mechOverheated)
	{
    	mechOverheated = false;
		sound_play(asset_get("sfx_ell_cooldown"));
	}
	
	if(mechSoundPlaying2 && mechHeat == 0)
		sound_stop(sfx_ell_overheatSfx);
	    	
	if(state == PS_ATTACK_AIR && attack == AT_EXTRA_1)
	{
		if(!free)
    		set_state(PS_LAND);
    		
	    if(mechOverheated && window > 1 && window < 3)
	    {
			mechCanDjump = !mechOverheated;
	    	window = 3;
	    	window_timer = 0;
	    }
	    
	    if(window > 1 && window < 3)
	    {
	    	var dir = 0;
	    	if(hsp > 0.1) dir += 1;
	    	if(hsp < -0.1) dir -= 1;
    		dir *= spr_dir;
	    	if(dir == 0)
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	    	if(dir == 1)
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 8);
	    	if(dir == -1)
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 13);
	    }
	    	
		if(!jump_down && jump_down_last)
	    {
			mechCanDjump = !mechOverheated;
	    	window = 3;
	    	window_timer = 0;
	    }
		else
		{
			if(window > 2 && jump_down && !mechOverheated)
				window = 2;
			
			if(!mechOverheated)
				mechHeat = min(mechHeat+1, mechHeatMax);
			if(window < 4)
				vsp = vsp * 0.9 + -10 * 0.1;
			if(!left_down && !right_down)
				hsp *= 0.9;
		}
	}
	else
	{
		mechHeat = max(mechHeat-0.333, 0);
		if(mechSoundPlaying)
			sound_stop(sfx_ell_hoverSfx);
	}
}
else
{
	if(mechSoundPlaying)
		sound_stop(sfx_ell_hoverSfx);
	if(mechSoundPlaying2)
		sound_stop(sfx_ell_hoverSfx);
	mechSoundPlaying = false;
	mechSoundPlaying2 = false;
}	


if(disguised && disguisedThroughDodgeOrRoll && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_AIR_DODGE)
	disguisedThroughDodgeOrRoll = false;

if(taunt_down && disguised && !disguisedThroughDodgeOrRoll)
{
	//fix that now that cant disguise during attack -> cant stay in menu longer to swap multiple times...
	//so it basically fixes that there is no actual taunt state for disguised chars
	if(state == PS_WALK)
		set_state(PS_IDLE);
	if(state == PS_DASH_START)
		set_state(PS_IDLE);
	// if(!free && state == PS_ATTACK_GROUND && (!disguisedAsSelf || attack != AT_TAUNT))
	// 	set_state(PS_IDLE);
	// if(free && state == PS_ATTACK_AIR && (!disguisedAsSelf || attack != AT_TAUNT))
	// 	set_state(PS_IDLE_AIR);
	if(state == PS_PARRY_START && state_timer == 0)
		set_state(free ? PS_IDLE_AIR : PS_IDLE);
	if(state == PS_JUMPSQUAT && state_timer == 0)
		set_state(PS_IDLE);
	if(state == PS_DOUBLE_JUMP && state_timer == 0)
	{
		vsp = prev_vsp;
		set_state(PS_IDLE_AIR);
	}
}

//make disguise fx be on top of player (not sure why it is not enough when setting on creation)
with(hit_fx_obj)
{
	if(player_id == other.id && other.disguseFx == hit_fx)
		depth = -100;
}


if(invince_time > 89 && state == PS_ATTACK_AIR && attack == AT_TAUNT)//TODO: should instead stay on platform and have ground taunt animation, but then drop once done?
    state = PS_IDLE_AIR;

if((!disguised || disguisedAsSelf) && taunt_down && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL))
	set_attack(AT_TAUNT);
    

var inAttack = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
inDodgeOrRoll = state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD;

if(!inAttack)
	stateBeforeQuickDisguise = state;

//quick tap to get to last disguise
if((!disguised && !disguisedAsSelf) && !taunt_down && taunt_down_last && charSelectOpenTimer < 8 && charIndexLast != -1 && (!inAttack || attack == AT_TAUNT))
{
	SelectChar(true);
	clear_button_buffer(PC_TAUNT_PRESSED);//prevent immediately taunting in disguise
}

if(taunt_down && state != PS_DEAD && state != PS_RESPAWN
&& (inDodgeOrRoll || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || state == PS_LAND || state == PS_WALK_TURN
|| state == PS_PRATFALL || state == PS_PRATLAND
|| state == PS_HITSTUN || state == PS_TUMBLE || state == PS_HITSTUN_LAND
|| ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_TAUNT || attack == AT_TAUNT_2 || attack == AT_NSPECIAL || attack == AT_EXTRA_1)))
{
	inTauntMenu = true;
	
    var tauntIndex = 0;
	if(tauntFirstMenu)
		tauntIndex = tauntIndex1;
	else
		tauntIndex = tauntIndex2;
		
	if((right_down && !right_down_last)//keyboard
	|| (right_stick_down && !right_stick_down_last))//controller
	{
		tauntIndex++;
		if(!invis)
			sound_play(asset_get("mfx_option"));//mfx_move_cursor
	}
	if((left_down && !left_down_last)//keyboard
	|| (left_stick_down && !left_stick_down_last))//controller
	{
		tauntIndex--;
		if(!invis)
			sound_play(asset_get("mfx_option"));//mfx_move_cursor
	}
	
	if(attack_down && !attack_down_last)
		tauntIndex = 0;
	if(special_down && !special_down_last)
		tauntIndex = 1;
	if(strong_down && !strong_down_last)
		tauntIndex = 2;
	if(shield_down && !shield_down_last)
		tauntIndex = 3;
	if(jump_down && !jump_down_last && tauntFirstMenu)
		tauntIndex = 4;
	
	
	if(tauntIndex > (tauntFirstMenu ? 4 : 3))
		tauntIndex = 0;
	if(tauntIndex < 0)
		tauntIndex = tauntFirstMenu ? 4 : 3;
		
	if(tauntFirstMenu)
		tauntIndex1 = tauntIndex;
	else
		tauntIndex2 = tauntIndex;
		
	if((down_down && !down_down_last)//keyboard
	|| (down_stick_down && !down_stick_down_last))//controller
	{
		if(!invis)
			sound_play(tauntFirstMenu ? asset_get("mfx_tut_fail") : asset_get("mfx_back"));//mfx_notice
		tauntFirstMenu = true;
	}

	if((up_down && !up_down_last)//keyboard
	|| (up_stick_down && !up_stick_down_last))//controller
		if(!invis)
			sound_play(tauntFirstMenu ? asset_get("mfx_forward") : asset_get("mfx_place_marker"));
	
	charSelectOpenTimer++;

	//select an option (category or char)
	if((attack_down && !attack_down_last)
	|| (special_down && !special_down_last)
	|| (strong_down && !strong_down_last)
	|| (shield_down && !shield_down_last)
	|| (up_down && !up_down_last)//keyboard
	|| (up_stick_down && !up_stick_down_last)//controller
	|| (jump_down && !jump_down_last && tauntFirstMenu))
	{
	    if(tauntFirstMenu)//select a category
	    {
	        tauntFirstMenu = false;
	        tauntIndex2 = 0;
	    }
	    else
            SelectChar(false);
	}
	
	if(free && has_airdodge)
		savedAirdodge = true;
	has_airdodge = false;
	
	can_move = false;
	can_jump = false;
	can_attack = false;
	can_strong = false;
	can_ustrong = false;
	can_special = false;
	can_shield = false;
	can_wall_jump = false;
	can_fast_fall = false;
	can_wall_cling = false;
	
    //can_jump = false; //TODO: (fix this doesn't work, have to manually disable by setting djumps to 1 and back to 0 if not used)
    //djumps = 1; 
    
	//joy_pad_idle = true;// = 0;
    //spr_dir = tauntSprDir;
    //walk_turn_time = 1000;
    
	if(state == PS_WALK || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_TURN || state == PS_CROUCH)
	{
    	//prevent animation reset on repeatedly going to same char
    	//TODO: why still stop on eg crouch and not continue anim?
        state = PS_IDLE;
	    state_timer = state_timer_last;
	}
	
	SetMoveCooldownsExceptNspecial(disguiseAttackCooldown);
}
else
{
	charSelectOpenTimer = 0;
	inTauntMenu = false;
    tauntFirstMenu = true;
	if(tauntAnimTimer1 == 0)
	{
    	tauntIndex1 = 0;//2;
	    scroll1 = 0;
    	scroll2 = 0;
	}
    
	if(!disguised)
	{
		charIndex = -1;
		disguisedAsSelf = false;
	}
	SetMoveCooldownsExceptNspecial(0);
		
	if(savedAirdodge)
	{
		savedAirdodge = false;
		has_airdodge = true;
	}
	
    if((!disguised || disguisedAsSelf)
	&& (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )
	&& (attack == AT_TAUNT || attack == AT_TAUNT_2)
	&& window < get_attack_value(AT_TAUNT, AG_NUM_WINDOWS))
    {
		window = get_attack_value(AT_TAUNT, AG_NUM_WINDOWS);
		window_timer = 0;
	}
}


if(!taunt_down && tauntAnimTimer1 == 0)
	tauntAnimStartDelayTimer = 0;
if((inTauntMenu || tauntAnimTimer1 > 0) && !invis && invisAnimationAlpha == 1 && tauntAnimStartDelayTimer++ > tauntAnimStartDelay && !custom_clone)
{
	if(inTauntMenu)
	{
    	tauntAnimTimer1++;
		
		if(!tauntFirstMenu)
			tauntAnimTimer2++;
		else
			tauntAnimTimer2 = 0;
		tauntAnimTimer1 = min(tauntAnimTimer1, tauntAnimDur);
		tauntAnimTimer2 = min(tauntAnimTimer2, tauntAnimDur);
	}
	else if(tauntAnimTimer1 > 0)
	{
		tauntAnimTimer1--;
		tauntAnimTimer1 = max(tauntAnimTimer1, 0);
	}
}
else
{
    tauntAnimTimer1 = 0;
    tauntAnimTimer2 = 0;
}


#define SetMoveCooldownsExceptNspecial(cooldown)
// SetMoveCooldownsButDontOverrideExternalOne(AT_NSPECIAL, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_FSPECIAL, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_DSPECIAL, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_USPECIAL, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_NAIR, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_FAIR, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_DAIR, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_UAIR, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_BAIR, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_JAB, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_FTILT, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_DTILT, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_UTILT, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_FSTRONG, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_DSTRONG, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_USTRONG, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_DATTACK, cooldown);
SetMoveCooldownsButDontOverrideExternalOne(AT_TAUNT, cooldown);

#define SetMoveCooldownsButDontOverrideExternalOne(attack, cooldown)
if(cooldown > 0)
	move_cooldown[attack] = cooldown;
else if(move_cooldown[attack] > disguiseAttackCooldown-10)
	move_cooldown[attack] = cooldown;

#define GetWorkshopPlayerOrSelf(useLastDisguise)
var playerChars = ds_list_create();
with(oPlayer)
{
	if(self.player == other.player || (url != "" && real(url) > 50))
		ds_list_add(playerChars, self);
}
if(ds_list_size(playerChars) == 0)
	return player;
if(!useLastDisguise)
{
	playerDisguiseIndex--;
	if(playerDisguiseIndex < 0)
		playerDisguiseIndex = ds_list_size(playerChars)-1;
}
return playerChars[| playerDisguiseIndex];

#define UpdatePlayerVariables(disguisedPlayer)
updateVariablesToPlayer = disguisedPlayer;
user_event(8);//Update Player Variables

#define SelectChar(useLastDisguise)
{
	disguised = true;
	disguisedThroughDodgeOrRoll = inDodgeOrRoll;

	tauntAnimStartDelay = tauntAnimStartDelayDisguised;

	var charIndexBeforeChange = charIndex;
	charIndex = tauntIndex2 + 4 * tauntIndex1;
	if(useLastDisguise)
		charIndex = charIndexLast;
	charIndexLast = charIndex;
	if(chars[charIndex] == "custom")
	{
		playerDisguise = GetWorkshopPlayerOrSelf(useLastDisguise);
		if(url == playerDisguise.url)//TODO: count other spy as ourself
			playerDisguise = player;
		else
			playerDisguise = playerDisguise.player;
		disguisedAsSelf = playerDisguise == player;
		if(playerDisguise)
		{
			if(disguisedAsSelf)//TODO: should it choose that guys alt?
			{
				if(useLastDisguise)
					currAlt = lastAlt;
				else
					currAlt = (currAlt+1) % num_alts;
				lastAlt = currAlt;
				init_shader();
			}
		}
	}
	else
		disguisedAsSelf = false;


	disguisedPlayerIndex = -1;
	if(chars[charIndex] == "custom" && !disguisedAsSelf)
	{
		disguisedPlayerIndex = playerDisguise;
		
		with(oPlayer)
		{
			if(player == other.playerDisguise)
			{
				other.disguisedPlayerIndex = player;
				other.disguisedHeight = char_height;
				break;
			}
		}
	}
	else
	{
		with(oPlayer)
		{
			if(player != other.player && url == other.charUrls[other.charIndex])
			{
				other.disguisedPlayerIndex = player;
				other.disguisedHeight = char_height;
				break;
			}
		}
	}

	if(disguisedAsSelf)
		UpdatePlayerVariables(player-1);
	else if(chars[charIndex] == "custom" && disguisedPlayerIndex != -1)// && !disguisedAsSelf)
		UpdatePlayerVariables(disguisedPlayerIndex-1);
	else
		user_event(9);//Update Player Variables BaseCast

	if(disguisedPlayerIndex == -1)
		disguisedDmg = min(max(get_player_damage(player) + random_func(0, 50, true) - 25, 0), 999);
	else
	{
		disguisedDmg = get_player_damage(disguisedPlayerIndex);
		with(oPlayer)
			if(player == other.disguisedPlayerIndex && variable_instance_exists(self, "ai_target"))
				other.disguisedPlayerIndex = -1;
	}

	if(chars[charIndex] == "cat" && charIndex != charIndexBeforeChange)
	{
		seinX = x + seinOffX;
		seinY = y + seinOffY;
		for(var i = 0; i < trailCount; i++)
			trails[|i].height = 0;
	}
	if(chars[charIndex] == "bear")
	{
		for(var i = 0; i < iceShardCount; i++)
			iceShards[i].timer = 9999;
	}

	if((!free || state != PS_PRATFALL) && !hitpause)
	{
		if(disguisedAsSelf)
		{
			set_attack(AT_TAUNT);
			state = free ? PS_ATTACK_AIR : PS_ATTACK_GROUND;
			window = 2;
		}
		else if(!disguisedThroughDodgeOrRoll)
		{
			if(useLastDisguise)
				state = stateBeforeQuickDisguise;
			else
				state = free ? PS_IDLE_AIR : PS_IDLE;
		}
	}

	user_event(6);//Update Taunt

	if(!invis && (charIndex != charIndexBeforeChange || disguisedAsSelf) && !hitpause)
	{
		user_event(5);//Disguise Fx
		if(doVoiceLines && !free && (!disguisedAsSelf || charIndex != charIndexBeforeChange))
			PlayCharselectSfx();
	}
}

#define PlayCharselectSfx()
{
    if(disguisedAsSelf)
    {
		sound_play(asset_get("mfx_place_marker"), false, noone, 1);
		
		PlayRandomVoiceLine("Spy_positivevocalization01", "Spy_mvm_resurrect05", "Spy_battlecry02", "Spy_battlecry04", "Spy_highfive07", "Spy_taunt_int_16", "Spy_trade_08");
    }
	else if(chars[charIndex] == "custom")
    {
		sound_play(asset_get("mfx_place_marker"), false, noone, 1);
		
		//TODO: somehow get the charselect.ogg? but its not in the sound folder and there is no variable?
		
		// var testSounds = [
		//     "charselect",
		//     "charselect_zet",
		//     "zet_charselect",
		//     "char_select_sound",
		//     "menu_select_sound",
		//     "char_select",
		//     "menu_select",
		//     "menuselect",
		//     "charselect_sfx",
		//     "char_select_sfx",
		//     "sfx_charselect",
		//     "sfx_charselect_zet",
		//     "zet_charselect_sfx",
		//     "zet_charselect",
		// ];
		// var v = testSounds[soundTestCounter++];
		// print("index: " + string(soundTestCounter));
		// // print(sound_get(v));
		// print(resource_get(v));
		// sound_play(resource_get(v), false, noone, 1);
    }
    else
        sound_play(sound_get("charselect_"+chars[charIndex]), false, noone, 1);
}

//copied to other files
#define PlayRandomVoiceLine()
{
    var randSound = random_func(0, argument_count, true);
    PlayVoiceLine(argument[randSound]);
}
#define PlayRandomOpponentVoiceLine()
{
    var randSound = random_func(0, ds_list_size(opponentLines), true);
    PlayVoiceLine(opponentLines[|randSound]);
}
#define PlayVoiceLine()
{
	var clipName = argument[0];
	var volume = argument_count > 1 ? argument[1] : 1;
    sound_stop(lastVoiceLine);
    lastVoiceLine = sound_play(sound_get(clipName), false, noone, volume);
}