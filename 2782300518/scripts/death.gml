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
var stageleft = get_stage_data(SD_LEFT_BLASTZONE_X)
var stageright = get_stage_data(SD_RIGHT_BLASTZONE_X)
var stagetop = get_stage_data(SD_TOP_BLASTZONE_Y)
var stagebottom = get_stage_data(SD_BOTTOM_BLASTZONE_Y)
if (x < stageleft)
{
    var feathers = spawn_hit_fx(stageleft + 140, y - 40, feather_death);
    feathers.depth = -150;
}
else if (x > stageright)
{
    var feathers = spawn_hit_fx(stageright - 180, y - 40, feather_death);
    feathers.depth = -150;
}
else if (y < stagetop)
{
    var feathers = spawn_hit_fx(x, stagetop + 140, feather_death);
    feathers.depth = -50;
}
else if (y > stagebottom)
{
    var feathers = spawn_hit_fx(x, stagebottom - 220, feather_death);
    feathers.depth = -50;
}
else
{
    var feathers = spawn_hit_fx(x, y - 40, feather_death);
    feathers.depth = -50;
}


if (kickTime > 0)
{
	multikick_energy = 0;
	feline_power = false;
}
bikeReady = 0;

pounce_number = 0;
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
	hurtbox_spr = sprite_get("carol_hurtbox_standing");
	crouchbox_spr = sprite_get("carol_hurtbox_crouch");
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