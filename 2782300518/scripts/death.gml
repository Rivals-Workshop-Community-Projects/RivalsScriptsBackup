//Play sound effect if voiced
if (voice = 1)
{
	stopVoice();
    sound_play(sound_get ("death"));
}
//destroy projectiles on death
destroy_hitboxes();

chargeUpVoiceLine = true;

fuel = fuel / 2;
bike_stored = false;
instance_destroy(bike);

if (kickTime > 0)
{
	multikick_energy = 0;
	feline_power = false;
}
bikeReady = 0;

//Reset Carol's motorbike and fuel to 0 upon death
if (motorbike == true)
{
    sound_stop(sound_get("motorbike_move"));
	sound_stop(sound_get("motorbike_idle"));
	sound_stop(sound_get("motorbike_stop"));

	//The following code is resetting values back to default as declared in init.
	motorbike = false;
	walk_speed = 3;
	initial_dash_speed = 5;
	dash_speed = 7;
	dash_stop_time = 4;
	short_hop_speed = 5;
	jump_speed = 11.5;
	max_djumps = 1;
	hurtbox_spr = asset_get("ex_guy_hurt_box");
	crouchbox_spr = asset_get("ex_guy_crouch_box");
	jump_sound = sound_get("jump");
	djump_sound = asset_get("sfx_jumpair");
	
	//Abyss Runes reset, just in case!
	if has_rune("B"){
    	walk_accel = 0.3;
    	walk_turn_time = 5;
    	initial_dash_time = 8;
    	initial_dash_speed = 7.75;
    	dash_turn_time = 8;
    	dash_turn_accel = 1.5;
	}
	
	if has_rune("I")
	{
	    jump_speed = 15;
	}
	
	if has_rune("O")
	{
	   	jump_speed = 16;
		walk_accel = 0.8;
    	initial_dash_time = 9;
		initial_dash_speed = 8;
    	dash_turn_time = 8;
    	dash_turn_accel = 1.5;
	}
}
#define stopVoice

sound_stop(sound_get("aw_yeah"));
sound_stop(sound_get("feel_my_power"));
sound_stop(sound_get("hold_on_lilac"));
sound_stop(sound_get("im_bored"));
sound_stop(sound_get("parry"));
sound_stop(sound_get("pow_pow"));
sound_stop(sound_get("that_stupid_panda"));
sound_stop(sound_get("try_and_catch_me"));
sound_stop(sound_get("what_you_doing"));
sound_stop(sound_get("why_are_we_stopping"));
sound_stop(sound_get("wittle_wiwac"));