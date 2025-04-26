//custom SFX

if(invis || (disguised && !disguisedAsSelf))// || hitpause)
    return;

var isAttacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
var isCrouching = state == PS_CROUCH && (!disguised || disguisedAsSelf);

if(isAttacking && attack == AT_USPECIAL)
{
	if(window == 1 && window_timer == 1)
		sound_play(asset_get("sfx_swipe_weak2"), false, noone, 1);//sfx_ell_eject sfx_absa_whip_charge sfx_referee_fly
	// if(window == 3 && window_timer == 1)
	// 	sound_play(asset_get("sfx_ell_eject"), false, noone, 0.5);
	if(window == 4 && window_timer == 1)
		sound_play(sound_get("helicopter_start"), false, noone, 1);
	if(window == 5 && window_timer == 1)
    {
	    sound_stop(helicopterSfx);
		helicopterSfx = sound_play(sound_get("helicopter"), true, noone, 0.75);
    }
	if(window == 6 && window_timer == 1)
		sound_stop(helicopterSfx);
}
else
	sound_stop(helicopterSfx);

if(state == PS_DOUBLE_JUMP && state_timer == 0)
	sound_play(sound_get("helicopter_jump"), false, noone, 0.75);
	// sound_play(asset_get("sfx_ell_eject"), false, noone, 0.5);


if(isAttacking && attack == AT_USTRONG)
{
	if(window == 2 && window_timer == 1)
		sfx_hod_steam_chargeSfx = sound_play(asset_get("sfx_hod_steam_charge"), false, noone, 0.25);
	if(window == 3)
		sound_stop(sfx_hod_steam_chargeSfx);
	if(window == 3 && window_timer == 1)
		sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 0.75);
	if(window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 )
		sound_play(sound_get("cigarette"), false, noone, 0.333);
}

if(isAttacking && attack == AT_DSTRONG)
{
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
        whooshSfx = sound_play(sound_get("whoosh"), false, noone, 0.75);

    // if(window == 3 && ((window_timer == 8 && random_func( 0, 5, true) == 0) || window_timer == 42 ) && !dairPlayedSfx)
    if(window == 3 && window_timer == 8 && !dairPlayedSfx)//TODO: dont always play this, but randomly?
    {
        dairPlayedSfx = true;
        sound_play(sound_get("eagle"), false, noone, 0.1);
    }
}
else
    sound_stop(whooshSfx);

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

if(attack == AT_EXTRA_2 && isAttacking)//terminal taunt
{
    if(window == 1 && window_timer == 4)
        terminalStartSfx = sound_play(sound_get("terminalStart"), false, noone, 2);
    if(window == 3 && window_timer == 1)
    {
        sound_stop(terminalLoopSfx);
        terminalLoopSfx = sound_play(sound_get("terminalLoop"), false, noone, 3);
    }
    if(window != 3)
        sound_stop(terminalLoopSfx);
    if(window == 5 && window_timer == 1)
        sound_play(sound_get("terminalHit"), false, noone, 3);
    if(window == 5 && (window_timer == 126 || window_timer == 161))
        sound_play(sound_get("terminalSlider"), false, noone, 3);
    if((window == 3 && terminalOption == "TEXT" && nctimer == 10))
    || (window == 6
        && ((!terminalTextSuccess && nctimer == 260)
        || (terminalTextSuccess && (nctimer == 200 || nctimer == 230 || nctimer == 260 || nctimer == 290))))
        sound_play(sound_get("terminalText"), false, noone, 3);
    if(window == 7 && window_timer == 1)
        terminalStopSfx = sound_play(sound_get("terminalStop"), false, noone, 2);
        
    if(window == 4 && window_timer == 24)
        sound_play(asset_get("mfx_place_marker"), false, noone, 1);
    if(window == 5 && (window_timer == 1 || window_timer == 140 || window_timer == 190))
        sound_play(asset_get("mfx_tut_fail"), false, noone, 1);
    if(window == 3 && terminalOption == "TEXT" && window_timer == 160)
        sound_play(asset_get("mfx_place_marker"), false, noone, 1);
    if(window == 6 && nctimer == 260)
    {
        if("ncode1" not in nPlayerId && nPlayerId.select > 16)
			sound_play(asset_get("mfx_tut_fail"), false, noone, 1);
    }
}
else
{
    sound_stop(terminalStartSfx);
    sound_stop(terminalLoopSfx);
    sound_stop(terminalStopSfx);
}

if(attack == AT_EXTRA_3 && isAttacking)//knife taunt
{
    if(window == 1 && window_timer == 1)
        tauntKnifeSfx = sound_play(sound_get("tauntKnife"), false, noone, 2);
}
else
    sound_stop(tauntKnifeSfx);