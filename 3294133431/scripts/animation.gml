
//if(invis)
draw_x = 9999999;
draw_indicator = false;

with(asset_get("new_dust_fx_obj"))
{
	if(player == other.player)
	// && (
	// dust_fx == 0 ||//land
	// dust_fx == 2 ||//djump
	// dust_fx == 3 ||//dashstart
	// dust_fx == 4 ||//dash
	// dust_fx == 5 ||//walk
	// dust_fx == 11||//jump
	// dust_fx == 17//fast fall
	// ))
	{
		if(image_index == 0)//TODO: this is not just true for one frame, but there is no state timer?
			hideFx = other.invis && other.invisAlpha == 0;
		if(variable_instance_exists(self, "hideFx") && hideFx)
			x = 9999999;
	}
}

//go invis
if(invis)
{
	var enterInvisAnimationMaxIndex = free ? 2 : 2;
	
	if(invisStateTimer < 1/invisFadeSpeed)
	{
		if(invisStateTimer % 2 == 0)
			invisStartAnimationIndex++;

		image_index = min(invisStartAnimationIndex, enterInvisAnimationMaxIndex);
		sprite_index = sprite_get(free ? "airdodge" : "nspecial");
	}
}
//leave invis
if(!invis && invisAlpha < 1 && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG && state != PS_PARRY && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state_cat != SC_HITSTUN)
{
	var startInvisAnimationIndex = free ? 2 : 2;
	var leaveInvisAnimationMaxIndex = free ? 4 : 4;
	
	if(invisExitStateTimer < 1/invisFadeSpeed)
	{
		if(invisExitStateTimer % 3 == 0)
			invisExitAnimationIndex++;

		image_index = min(startInvisAnimationIndex + invisExitAnimationIndex, leaveInvisAnimationMaxIndex);
		sprite_index = sprite_get(free ? "airdodge" : "nspecial");
	}
}


var isAttacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

if(isAttacking && attack == AT_USPECIAL)
{
	if(window == 1 && window_timer == 1)
		sound_play(asset_get("sfx_swipe_weak2"), false, noone, 1);//sfx_ell_eject sfx_absa_whip_charge sfx_referee_fly
	// if(window == 3 && window_timer == 1)
	// 	sound_play(asset_get("sfx_ell_eject"), false, noone, 0.5);
	if(window == 4 && window_timer == 1)
		sound_play(sound_get("helicopter_start"), false, noone, 1);
	if(window == 5 && window_timer == 1)
		sound_play(sound_get("helicopter"), true, noone, 0.75);
	if(window == 6 && window_timer == 1)
		sound_stop(sound_get("helicopter"));
}
else
	sound_stop(sound_get("helicopter"));

if(state == PS_DOUBLE_JUMP && state_timer == 0)
	sound_play(sound_get("helicopter_jump"), false, noone, 0.75);
	// sound_play(asset_get("sfx_ell_eject"), false, noone, 0.5);


if(isAttacking && attack == AT_USTRONG)
{
	var horFxOffset = 8 * spr_dir;
	var vertFxOffset = 142;

	if(window == 1 && window_timer == 1)
	{
		didPlayUstrongFx1 = false;
		didPlayUstrongFx2 = false;
		didPlayUstrongFx3 = false;
	}

	// print("WIN: " + string(window) + " == " + string(get_hitbox_value(AT_USTRONG, 1, HG_WINDOW)));
	// print("TIM: " + string(window_timer) + " == " + string(get_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME)));

	// if(window == get_hitbox_value(AT_USTRONG, 1, HG_WINDOW) && window_timer == get_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME))//doesnt work bcz effect has startup time?
	if(!didPlayUstrongFx1 && window == get_hitbox_value(AT_USTRONG, 1, HG_WINDOW)-1 && window_timer == get_window_value(AT_USTRONG, window, AG_WINDOW_LENGTH)-3)//hard coded
	{
		didPlayUstrongFx1 = true;
		var smokeStart = spawn_hit_fx(x+horFxOffset, y-vertFxOffset, 138);
		smokeStart.draw_angle = -90 * spr_dir + 180 * spr_dir;
		smokeStart.spr_dir = -spr_dir;
	}
	if(!didPlayUstrongFx2 && (has_hit || (window == get_hitbox_value(AT_USTRONG, 1, HG_WINDOW)-1 && window_timer == get_window_value(AT_USTRONG, window, AG_WINDOW_LENGTH)-1)))//hard coded
	{
		didPlayUstrongFx2 = true;
		var smokeStart = spawn_hit_fx(x+horFxOffset, y-vertFxOffset-8, 138);
		smokeStart.draw_angle = -90 * spr_dir;
		smokeStart.spr_dir = spr_dir;
	}

	if(!didPlayUstrongFx3 && (has_hit || (window == get_hitbox_value(AT_USTRONG, 2, HG_WINDOW) && window_timer == get_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME))))
	{
		didPlayUstrongFx3 = true;
		spawn_hit_fx(x+horFxOffset, y-vertFxOffset, 144);
	}
	//TODO: vfx should be slower? or draw over it?

	
	if(window == 2 && window_timer == 1)
		sound_play(asset_get("sfx_hod_steam_charge"), false, noone, 0.25);
	if(window == 3)
		sound_stop(asset_get("sfx_hod_steam_charge"));
	if(window == 3 && window_timer == 1)
		sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 0.75);
	if(window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 )
		sound_play(sound_get("cigarette"), false, noone, 0.333);
}

if(isAttacking && attack == AT_DSTRONG)
{
	if(window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW))
	{
		//keep shuffling during charge
		var shuffleLength = get_window_value(attack, window, AG_WINDOW_LENGTH);
		var frames = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
		var animSpeed = shuffleLength/frames;
		if(window_timer == shuffleLength-1)
			image_index = floor(get_window_value(attack, 1, AG_WINDOW_ANIM_FRAMES)+state_timer/animSpeed % frames);
	}
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
		sound_play(sound_get("money_count_start"), false, noone, 0.75);
	if(window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && state_timer % 10 == 0)
		sound_play(sound_get("money_count"), false, noone, 0.5);
		
		
	if(window == get_hitbox_value(attack, 1, HG_WINDOW) && window_timer == get_hitbox_value(attack, 1, HG_WINDOW_CREATION_FRAME)-1)
	{
		//TODO: maybe use panning spr_dir? but only ints are allowed?
		sound_play(sound_get("money_throw"), false, noone, 0.75);
		// sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.25);
	}
	if(window == get_hitbox_value(attack, 2, HG_WINDOW) && window_timer == get_hitbox_value(attack, 2, HG_WINDOW_CREATION_FRAME)-1)
	{
		sound_play(sound_get("money_throw"), false, noone, 0.75);
		// sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.25);
	}
}




if(isAttacking && attack == AT_DATTACK)
{
	if(window < 3)
		hudYOffsetMap[? AT_DATTACK] = 0;
	else if(window < 6)
		hudYOffsetMap[? AT_DATTACK] = -16;
	else
		hudYOffsetMap[? AT_DATTACK] = 24;
}
else
	hudYOffsetMap[? AT_DATTACK] = 0;



var isCrouching = state == PS_CROUCH && (!disguised || disguisedAsSelf);
var isBoxWalking = isAttacking && attack == AT_DATTACK && window == 4;
if(isCrouching || isBoxWalking)
{
	var crouchMoveDir = 0;
	if(right_down)
		crouchMoveDir++;
	if(left_down)
		crouchMoveDir--;
		
		
	var isNowMoving = crouchMoveDir != 0;
		
	if(isCrouching)
		isCrouchOrBoxMoving = isCrouchOrBoxMoving || isNowMoving;
	else if(isBoxWalking)
		isCrouchOrBoxMoving = isNowMoving;
	
	
    if(isCrouchOrBoxMoving)
        crouchAnimTimer += crouchMoveDir * spr_dir;
	        
	if(isCrouching)
	{
		if(isCrouchOrBoxMoving && down_down && abs(crouchAnimTimer) > 4)
		{
			sprite_index = sprite_get("crouchWalk");
			image_index = floor(image_number * crouchAnimTimer / (image_number * 8));
		}
	}
	else if(isBoxWalking)
	{
		if(free)
		{
			sprite_index = sprite_get("dattack");
			image_index = 8;
		}
		else if(isCrouchOrBoxMoving)
		{
			if(crouchTimer < 8)
			{
				sprite_index = sprite_get("boxWalkStart");
			    image_index = floor(crouchTimer/4);
				if(crouchTimer == 0)
					sound_play(sound_get("cardboard-box-up-half"));
			}
			else
			{
				sprite_index = sprite_get("boxWalk");
			    image_index = floor(image_number * crouchAnimTimer / (image_number * 8));
			}
			
	    	crouchStopTimer = 0;
		}
		else
		{
			if(crouchStopTimer < 9)
			{
				sprite_index = sprite_get("boxWalkStop");
			    image_index = floor(crouchStopTimer/3);
				if(crouchStopTimer == 6)
					sound_play(sound_get("cardboard-box-down-half"));
			    crouchStopTimer++;
			}
			if(crouchStopTimer > 4)//so low that should play animation when getting back up
				crouchTimer = 0;
		}
	}
	
	if(isCrouchOrBoxMoving)
		crouchTimer++;
}
else
{
	isCrouchOrBoxMoving = false;
    crouchAnimTimer = 0;
    crouchTimer = 0;
    crouchStopTimer = 10000000;
}


//-------------------- custom SFX --------------------
if(!invis)
{
	if(attack == AT_UAIR && isAttacking)
	{
		if(window == 1 && window_timer == 0)
		{
			sound_play(asset_get("sfx_swipe_weak2"));
			// sound_play(sound_get("spy_assassin_knife_draw"));
		}
	}

	if(attack == AT_DAIR && isAttacking)
	{
		if(window == 1 && window_timer == 4)
		{
			sound_play(asset_get("sfx_swipe_weak1"));
			sound_play(sound_get("spy_assassin_knife_draw"), false, noone, 0.5);
			dairPlayedSfx = false;
		}
		if(window == 3 && window_timer == 8 && !dairPlayedSfx)
			sound_play(sound_get("whoosh"), false, noone, 0.75);

		// if(window == 3 && ((window_timer == 8 && random_func( 0, 5, true) == 0) || window_timer == 42 ) && !dairPlayedSfx)
		if(window == 3 && window_timer == 8 && !dairPlayedSfx)//TODO: dont always play this, but randomly?
		{
			dairPlayedSfx = true;
			sound_play(sound_get("eagle"), false, noone, 0.05);
		}
	}
	else
		sound_stop(sound_get("whoosh"));
	
	if(attack == AT_FSTRONG && isAttacking)
	{
		// if(window == 1 && window_timer == 6)
		// 	sound_play(sound_get("knife_open1"));
		
		if(window == 3 && window_timer == 4)
			sound_play(asset_get("sfx_swipe_weak1"));
		if(window == 5 && window_timer == 2)
			sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.5);
		if(window == 9 && window_timer == get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-2)
		{
			sound_play(asset_get("sfx_swipe_heavy1"));
			// sound_play(asset_get("sfx_swipe_heavy1"), false, noone, 0.75);
			// sound_play(sound_get("spy_assassin_knife_draw"));
		}
	}

	if(attack == AT_TAUNT && isAttacking)
	{
		// if((window == 1 || window == 3) && window_timer == 0)
		// {
		// 	sound_stop(sound_get("draw_pda_spy"));
		// 	sound_play(sound_get("draw_pda_spy"));
		// }
		if(window == 1 && window_timer == 0)
			sound_play(sound_get("draw_pda_spy"));
		if(window == 3 && window_timer == 0)
			sound_play(sound_get("draw_pda_spy"));
	}

	if(isCrouching && image_index != last_crouch_imgage_index)
	{
		if(image_index == 3 && sprite_index != sprite_get("crouchWalk"))
			didPlayCrouchSfx = false;

		if((image_index == 1 || image_index == 3) && !didPlayCrouchSfx)
		{
			sound_play(sound_get("draw_pda_spy"), false, noone, 0.5);
			didPlayCrouchSfx = true;
		}
	}
	last_crouch_imgage_index = image_index;
	if(attack == AT_DTILT && isAttacking)
	{
		if((window == 1 && window_timer == 1) && !didPlayCrouchSfx)
		{
			sound_play(sound_get("draw_pda_spy"), false, noone, 0.5);
			didPlayCrouchSfx = true;
		}
	}
	if(!isCrouching && (!isAttacking || attack != AT_DTILT))
		didPlayCrouchSfx = false;
}