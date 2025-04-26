//	make the nametag go higher while ustrong's fist is raised
//	Keeping this because Kodiak's is stupidly tall too
if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2)
{
	hud_offset = lerp(hud_offset, 180, 0.5);
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1
{
	hud_offset = 0;
}

//--------------------------------------------------

//	My stuff

//	Fight Intro
var intro_time 		= get_gameplay_time();

if (intro_time <= 40 * 2 - 1) 
{
	sprite_index 	= sprite_get("intro");
	image_index 	= floor(intro_time/2);
}

var charge_rate 	= 2;

if (state== PS_ATTACK_GROUND && attack == AT_FSTRONG && window == 2 && window_timer == 5) 
{ 
	//	4 is the frame_start, 4 is the number of frames                                         
	//	4 is the in-game frames per animation frame
    image_index = 4 + (strong_charge/4)%4;	

	if (get_gameplay_time() mod charge_rate == 0)
	{
		energy_meter++;
	}
	
	if (get_gameplay_time() mod 7 == 0)
	{
		sound_play(sound_get("Aura Chargin"), false, noone, 0.45);		
	}
	
	if (energy_meter > 100) 
	{ 
		energy_meter = 100;
	}
}

if (state== PS_ATTACK_GROUND && attack == AT_USTRONG && window == 2 && window_timer == 5) 
{ 
    image_index = 5 + (strong_charge/6)%6;
	
	energy_meter++;
	
	if (get_gameplay_time() mod 7 == 0)
	{
		sound_play(sound_get("Aura Chargin"), false, noone, 0.45);	
		sound_play(asset_get("sfx_upbcharge"), false, noone, 0.25);			
	}
	
	if (energy_meter > 100) 
	{ 
		energy_meter = 100;
	}
}

if (state== PS_ATTACK_GROUND && attack == AT_DSTRONG && window == 1) 
{ 
	if (get_gameplay_time() mod charge_rate == 0)
	{
		energy_meter++;
	}
	
	if (get_gameplay_time() mod 7 == 0)
	{
		sound_play(sound_get("Aura Chargin"), false, noone, 0.45);		
	}
	
	if (energy_meter > 100) 
	{ 
		energy_meter = 100;
	}
}