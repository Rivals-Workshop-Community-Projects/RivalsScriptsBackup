/*
if(!entrance_done) //intro
{
	with(oPlayer)
	{
		if("url" in self && (url == 2990315396 || url == 2904498757))
		{
			//grabbed_invisible = true;
		}
	}
}
*/
attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;

if(has_rune("N") && state_timer > 6 && (attacking || state == PS_PRATFALL || state == PS_PRATLAND) && attack != AT_JAB && ((shield_pressed && has_airdodge) || attack_pressed || special_pressed || up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed))
{
	set_state(PS_IDLE_AIR);
	iasa_script();
}

if(combo > 0)
{
	if(combo_timer > 0)
		combo_timer -= has_rune("G")? 0.5 : 1;
	else
	{
		sound_play(sound_get("sfx_comboend"));
		combo = 0;
	}
}

//afterimage
//afterimage_mode: 0 - freeze, 1 - draw but don't make new afterimages, 2 - mach mode, 3 - body slam
if(afterimage_mode > 1)
{
	afterimage_counter++;
	if((afterimage_counter > 3 && afterimage_mode == 3) || (afterimage_counter > 7 && afterimage_mode == 2))
	{
		if(afterimage_mode == 2)
		{
			if(afterimage_lastwasgreen) {
				afterimage_array[array_length_1d(afterimage_array)] = {x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, col:$0000FF, timer:0, timerMax:20, fog:false};
				afterimage_lastwasgreen = false;
			}
			else {
				afterimage_array[array_length_1d(afterimage_array)] = {x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, col:$00FF00, timer:0, timerMax:20, fog:false};
				afterimage_lastwasgreen = true;
			}
		}
		else if(afterimage_mode == 3)
		{
			afterimage_array[array_length_1d(afterimage_array)] = {x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, col:$0000CC, timer:0, timerMax:15, fog:true};
		}
		afterimage_counter = 0;
	}
}
if(afterimage_mode > 0)
{
	var newArray = 0;
	for (var i = 0; i < array_length_1d(afterimage_array); ++i)
	{
	    var obj = afterimage_array[i];
	    if(++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
	}
	afterimage_array = newArray;
}

//wall jump flipping
if(state != PS_WALL_JUMP && walljump_jump_time > 0)
{
	walljump_jump_time = 0;
	spr_dir = -spr_dir;
}

//mach run
if(dash_timer > 0 && hitpause == 0 && !((attack == AT_NSPECIAL || attack == AT_SUPERTAUNT || attack == AT_GRABDASH) && attacking)) 
{
	dash_timer--;
	if(attacking && attack == AT_DSPECIAL)
		dash_timer = 1;
	if(has_hit && attacking && attack != AT_GRABDASH && attack != AT_JAB && ((shield_pressed && has_airdodge) || attack_pressed || special_pressed || up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed)) {
		set_state(PS_IDLE_AIR);
		iasa_script();
	if(attack == AT_JAB && !(window == 1 || window == 3 || window == 5 || window == 6))
		dash_timer--;
	}
	if(!free && attacking && attack != AT_USPECIAL && attack != AT_GRABDASH && attack != AT_DSPECIAL)
	{
		if(abs(hsp) < 8 * (dash_timer / 70))
			hsp = spr_dir * 8 * (min(dash_timer, 80) / 70);
	}
	if(state = PS_LANDING_LAG)
		set_state(PS_LAND);
}

if(uair_pratfall && !free)
	uair_pratfall = false;

//taunt speed
if(!tauntGotSpeedBack && ((attack == AT_NSPECIAL && !attacking) || attack != AT_NSPECIAL))
{
	can_jump = false;
	can_shield = false;
	tauntGotSpeedBack = true;
	hsp = pretaunthsp;
	if(state != PS_DOUBLE_JUMP) 
		vsp = pretauntvsp;
	if(taunt_dash_interrupt)
	{
		spr_dir = (old_spr_dir * 2) - 1;
		taunt_dash_interrupt = false;
		if(state != PS_DOUBLE_JUMP) 
		{
			set_attack(AT_FSPECIAL);
			window = 2;
		}
	}
	pretaunthsp = 0;
	pretauntvsp = 0;
}

//woaging from the Noise
if(attacking && attack != AT_SUPERTAUNT && attack != AT_NSPECIAL && attack != AT_ENTRANCE && attack != AT_TAUNT && attack != AT_PHONE)
{
    if(state_timer = 1)
		peped = false;
    if(taunt_pressed && peped = false)
    {
        peped = true;
        sound_play(sound_get("pep"+string(random_func(2, 3, true)+1)), false, noone, 1, voicepitch);
    }
}

//taunt sound
randomTauntSound = random_func(1, 3, true) + 1;
if (!madeTauntSound && ((attack = AT_NSPECIAL && state_timer = 1) || (attack == AT_SUPERTAUNT && state_timer = 37)) && !was_parried && attacking)
{
	sound_play(sound_get("taunt"+string(randomTauntSound)));
	madeTauntSound = true;
}

//ending attack sounds if the attack got interrupted
if(uspecialSoundActive && (!attacking || attack != AT_USPECIAL))
{
	uspecialSoundActive = false;
	sound_stop(uspec_sound);
	uspec_sound = noone;
}
if(dspecialSoundActive && (!attacking || attack != AT_DSPECIAL))
{
	sound_stop(dspec_sound);
	dspecialSoundActive = false;	
}
if(mach_sound_active && (!attacking || attack != AT_FSPECIAL))
{
	sound_volume(mach_sound, 0, 400);
	if(dash_timer == 0)
	{
		mach_sound_active = false;
		sound_stop(mach_sound);
	}
}

//combo words
if(combo_words_timer > 0)
	combo_words_timer--;


if(state == PS_IDLE && state_timer > 400) //wait
	set_attack(AT_WAIT);
if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && plasma_pause) //plasma stun anim
	sprite_index = sprite_get("stun");
if(state_timer == 0) //successful parry anim
	parried_spr = false;

//setting the character height
//this is a mess lol
if(attacking && attack == AT_TAUNT)
{
	switch(window){
		case 1:
			charHeightDestination = 0;
			break;
		case 2:
		case 3:
		case 4:
			charHeightDestination = 20;
			break;
		case 5:
			charHeightDestination = 0;
			break;
		case 6:
		case 7:
			charHeightDestination = 30;
			break;
		case 8:
		case 9:
			charHeightDestination = 0;
			break;
	}
}
else if(attacking && attack == AT_UAIR)
	charHeightDestination = 10;
else if(attacking && attack == AT_ENTRANCE && window < 7)
{
	charHeightOffset = 26;
	charHeightDestination = 26;
}
else if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD)
{
	if(state_timer < 10)
	{
		if(state_timer == 1)
			sound_play(sound_get("reform"));
		charHeightOffset = (state_timer / 10) * -90;
	}
	else if(state_timer == 10)
	{
		charHeightOffset = -90;
		//sound_play(sound_get("reform"));
	}
	else
	{
		charHeightOffset = -90 + (((state_timer - 9) / 16) * 90);
		if(charHeightOffset > 0)
			charHeightOffset = 0;
	}
	charHeightDestination = charHeightOffset;
}
else if (attack == AT_DSTRONG && attacking) {
	switch(window){
		case 1:
			charHeightDestination = -20;
			break;
		case 2:
			if(window_timer > 9)
			charHeightDestination = -60;
			break;
		case 3:
			charHeightOffset = -60;
			charHeightDestination = -60;
			break;
		case 4:
			charHeightDestination = -50;
			break;
		case 5:
			if(window_timer > 3)
			{
				charHeightDestination = 0;
				charHeightOffset += 3;
			}
			break;
	}
}
else if (attack == AT_USTRONG && attacking) {
	switch(window){
		case 1:
			charHeightDestination = -40;
			break;
		case 2:
		case 3:
		case 4:
			charHeightDestination = 10;
			charHeightOffset += 3;
			break;
	}
}
else if(attack == AT_SUPERTAUNT && window > 3 && state_timer < 74 && attacking)
	charHeightOffset = 64;
else if(attack == AT_NSPECIAL && attacking){
	charHeightDestination = 48;
	charHeightOffset = 48;
	if(state_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)) 
		charHeightOffset = 0;
}
else if (attack == AT_USPECIAL && attacking){
	if(window > 2)
	{
		charHeightOffset = 24;
		charHeightDestination = 24;
	}
	else
		charHeightDestination = -40;
}
else if(state == PS_DOUBLE_JUMP)
	charHeightDestination = 30;
else if (state == PS_CROUCH && state_timer > 10)
	charHeightDestination = -18;
else
	charHeightDestination = 0;

if(charHeightOffset > charHeightDestination)
{	charHeightOffset -= 3;
	if(charHeightOffset < charHeightDestination) 
		charHeightOffset = charHeightDestination;
}
else if (charHeightOffset < charHeightDestination )
{	charHeightOffset += 3;
	if(charHeightOffset > charHeightDestination)
		charHeightOffset = charHeightDestination;
}
char_height = 76 + charHeightOffset;

//Kirby
if (swallowed) 
{
	swallowed = 0;
	var ability_spr = sprite_get("_kirby_nspecial");
	var ability_hurt = sprite_get("_kirby_nspecial_hurt");
	var ability_icon = sprite_get("_kirby_icon");
	var ability_sfx = sound_get("pt_mach_attack");
	with enemykirby 
	{ 
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);

		//start
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 25);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 18);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.15);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("fspecial"));

		//loop
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 18);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 7);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("jet_chargeup"));

		//anticipation
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 25);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 20);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 0);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, ability_sfx);

		//attack
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 26);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED, 15);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.75);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, sound_get("dtilt_slide"));

		//endlag
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 26);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.15);

		set_num_hitboxes(AT_EXTRA_3, 1);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 16);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_PARTICLE_NUM, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		newicon = ability_icon;
	}	
}

//MunoPhone Touch
muno_event_type = 1;
user_event(14);
if("noise_calling" in self && noise_calling != noone)
	suppress_stage_music()

if(!phone.has_opened_yet && phone_practice)
{
	if(taunt_pressed)
	{
		if("noise_calling" in self && noise_calling != noone)
		{
			sound_stop(noise_calling);
			noise_calling = noone;
		}
		phone.has_opened_yet = true;
	}
}

//MunoPhone Touch cheats
if(phone_cheats_updated[CHEAT_NSPECIALTYPE])
{
	if(has_rune("A") || phone_cheats[CHEAT_NSPECIALTYPE] == 1)
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 22);
	else
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 36);
	phone_cheats_updated[CHEAT_NSPECIALTYPE] = 0;
}
if(phone_cheats_updated[CHEAT_SUPERTAUNT])
{
	has_supertaunt = true;
	phone_cheats_updated[CHEAT_SUPERTAUNT] = 0;
}
