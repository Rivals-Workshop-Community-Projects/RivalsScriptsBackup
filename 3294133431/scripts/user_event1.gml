
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



if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack != AT_TAUNT && attack != AT_TAUNT_2 && attack != AT_NSPECIAL && attack != AT_EXTRA_1)
	user_event(2);//Cancel Disguise


if(!free)
    mechCanDjump = true;
	
if(disguised && !disguisedAsSelf && chars[charIndex] == "mech") 
{
	if(jump_down && !jump_down_last && state_cat == SC_AIR_NEUTRAL && mechCanDjump)
	{
		mechCanDjump = !mechOverheated;
    	set_attack(AT_EXTRA_1);
		sound_play(asset_get("sfx_ell_hover"), true);
		mechSoundPlaying = true;
	}
	
	if(mechHeat == mechHeatMax)
	{
    	mechOverheated = true;
		if(!mechSoundPlaying2)
			sound_play(asset_get("sfx_ell_overheat"));
		mechSoundPlaying2 = true;
	}
	if(mechHeat == 0 && mechOverheated)
	{
    	mechOverheated = false;
		sound_play(asset_get("sfx_ell_cooldown"));
	}
	
	if(mechSoundPlaying2 && mechHeat == 0)
		sound_stop(asset_get("sfx_ell_overheat"));
	    	
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
			sound_stop(asset_get("sfx_ell_hover"));
	}
}
else
{
	if(mechSoundPlaying)
		sound_stop(asset_get("sfx_ell_hover"));
	if(mechSoundPlaying2)
		sound_stop(asset_get("sfx_ell_hover"));
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
    
inDodgeOrRoll = state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD;

if(taunt_down && (inDodgeOrRoll || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || state == PS_LAND || state == PS_WALK_TURN
|| state == PS_PRATFALL || state == PS_PRATLAND
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
	    else//select a char
	    {
            disguised = true;
			disguisedThroughDodgeOrRoll = inDodgeOrRoll;

			tauntAnimStartDelay = tauntAnimStartDelayDisguised;

            var charIndexLast = charIndex;
            charIndex = tauntIndex2 + 4 * tauntIndex1;
            if(chars[charIndex] == "custom")
            {
            	playerDisguise = GetWorkshopPlayerOrSelf();
        		disguisedAsSelf = playerDisguise == player;
        		if(playerDisguise)
        		{
        			if(disguisedAsSelf)//TODO: should it choose that guys alt?
	            		currAlt = (currAlt+1) % num_alts;
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
			
			if(chars[charIndex] == "cat" && charIndex != charIndexLast)
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
			
			if(!free || state != PS_PRATFALL)
			{
				if(disguisedAsSelf)
				{
					set_attack(AT_TAUNT);
					state = free ? PS_ATTACK_AIR : PS_ATTACK_GROUND;
					window = 2;
				}
				else if(!disguisedThroughDodgeOrRoll)
					state = free ? PS_IDLE_AIR : PS_IDLE;
			}

			user_event(6);//Update Taunt
			
			if(!invis && (charIndex != charIndexLast || disguisedAsSelf) && !hitpause)
        		user_event(5);//Disguise Fx
	    }
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

#define GetWorkshopPlayerOrSelf()
var playerChars = ds_list_create();
with(oPlayer)
{
	if(self.player == other.player || (url != "" && real(url) > 50))
		ds_list_add(playerChars, player);
}
if(ds_list_size(playerChars) == 0)
	return player;
playerDisguiseIndex--;
if(playerDisguiseIndex < 0)
	playerDisguiseIndex = ds_list_size(playerChars)-1;
return playerChars[| playerDisguiseIndex];

#define UpdatePlayerVariables(disguisedPlayer)
updateVariablesToPlayer = disguisedPlayer;
user_event(8);//Update Player Variables