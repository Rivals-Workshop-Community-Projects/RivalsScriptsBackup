//WARIO WAFT PHYSICS

if waft_stage == 0{
    user_event ( 0 ); // User Event 0 changes Down B to Empty Waft
    waft_meter_sprite = sprite_get("waftmeter_none"); //Sprite of meter changes to empty
}
if waft_stage == 1{
    user_event ( 1 ); // User Event 1 changes Down B to Half Waft
    waft_meter_sprite = sprite_get("waftmeter_half"); //Sprite of meter changes to halfway
}
if waft_stage == 2{
    user_event ( 2 ); // User Event 2 changes Down B to Full Waft
    waft_meter_sprite = sprite_get("waftmeter_full");
}

//This section is dedicated to making Waft charge increase

waft_timer = (waft_timer)+(waft_addition); //Waft Timer increases by Waft Addition every frame (usually 1)

if waft_timer < 2700{
    waft_stage = 0; // Waft stage is 0 before 45 seconds (2700 frames) pass
}

if waft_timer >= 2700 and waft_timer < 5400{
    waft_stage = 1; // Waft stage is 1 after 45 seconds & before 90 seconds pass
}

if waft_timer >= 5400{
    waft_stage = 2; // Waft stage is 2 after 90 seconds (5400 frames) pass
}

//This section checks if Waft has been used up, and what to do with values when it has

if (used_up_waft == true) && (using_waft == false){
    used_up_waft = false; //Resets detection, as to not interfere with Waft later
    waft_timer = 0; //Sets every other value back to their initial statistics
    waft_stage = 0;
    waft_addition = 1;
}

//This section sets the value for not_using_waft

if (attack != AT_DSPECIAL) || (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND){
    using_waft = false;
}
if (attack == AT_DSPECIAL) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    using_waft = true;
}

//Don't mind me, just another timer to separate from the waft timer
wario_game_timer = wario_game_timer + 1;

//Adding A Mute Button

if voice_lines == true{
jump_voice = sound_get("SFXVoiceJump1");
djump_voice = sound_get("SFXVoiceJump2");

death_voice = sound_get("SFXVoiceDeath1");
parry_voice = sound_get("SFXVoiceParrySuccess");
parried_voice = sound_get("SFXVoiceParryFailure");

ftilt_voice = sound_get("SFXVoiceFTilt");
utilt_voice = sound_get("SFXVoiceUTilt");
dtilt_voice = sound_get("SFXVoiceDTilt");

fstrong_voice = sound_get("SFXVoiceFStrong");
dstrong_voice = sound_get("SFXVoiceDStrong");

nspecial_voice = sound_get("SFXVoiceNSpecial");
uspecial_voice = sound_get("SFXVoiceUSpecial");
fspecial_voice = sound_get("SFXVoiceFSpecial1");
taunt_voice = sound_get("SFXVoiceTaunt");
}

if voice_lines == false{
jump_voice = sound_get("nothing");
djump_voice = sound_get("nothing");

death_voice = sound_get("nothing");
parry_voice = sound_get("nothing");
parried_voice = sound_get("nothing");

ftilt_voice = sound_get("nothing");
utilt_voice = sound_get("nothing");
dtilt_voice = sound_get("nothing");

fstrong_voice = sound_get("nothing");
dstrong_voice = sound_get("nothing");

nspecial_voice = sound_get("nothing");
uspecial_voice = sound_get("nothing");
fspecial_voice = sound_get("nothing");
taunt_voice = sound_get("nothing");
}

set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, taunt_voice);

//Stop Waft from charging during entry
if state == PS_SPAWN{
    if taunt_pressed == true && voice_lines == true{
        voice_lines = false;
        sound_play(sound_get("MuteButton"));
    }
    waft_addition = 0;
}
//Stop Waft from charging in training mode
if (get_training_cpu_action() != CPU_FIGHT){
    waft_addition = 0;
}
else{waft_addition = 1;}

//Pile Driver speed control
if attack == AT_USPECIAL_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	max_fall = 16;
}
else{
	max_fall = 9;
}

//Shoulder Bash Glitch Possible Fix

if (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND) || attack != AT_FSPECIAL{
	fspecial_hit = false;
}

//COMPATIBILITY: Kirby
if swallowed {
	swallowed = 0;
	var ability_spr = sprite_get("kirby_ability");
	var ability_hurt = sprite_get("fspecial_hurt");
	var ability_sound = sound_get("fspecial_dash");
	with enemykirby{
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);

//WINDOWW 1 - Startup
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 11);

//WINDOW 2 - Charge Up
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_blow_medium2"));
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 2);

//WINDOW 3 - Shoulder Bash standard attack
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, ability_sound);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 1);

//WINDOW 4 - Shoulder Bash cooldown/inactive
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 0);

set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 48);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 48);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.9);
	}
}

//COMPATIBILITY: Dracula boss fight
if (get_player_color( player ) != 0){
    dracula_portrait = sprite_get("dracula_portraitalt");
    dracula_portrait2 = sprite_get("dracula_portraitalt2");
}