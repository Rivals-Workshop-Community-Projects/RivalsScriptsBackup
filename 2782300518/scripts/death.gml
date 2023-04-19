//Play sound effect if voiced
if (voice = 1)
{
    sound_play(sound_get ("death"));
}
//destroy projectiles on death
destroy_hitboxes();

chargeUpVoiceLine = true;

fuel = fuel / 2;

outline_charge = 0;

if (kickTime > 0)
{
	feline_power = false;
	move_cooldown[AT_NSPECIAL]= 200;
	move_cooldown[AT_NSPECIAL_2]= 200;
}

//Reset Carol's motorbike and fuel to 0 upon death
if (motorbike == true)
{
    sound_stop(sound_get("motorbike_move"));
	sound_stop(sound_get("motorbike_idle"));
	sound_stop(sound_get("motorbike_stop"));

	//The following code is resetting values back to default as declared in init.
	motorbike = false;
	bikeReady = 0;
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