//	got_parried.gml

//	Reset NSPECIAL's projectile
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2) 
{
    //	reset the projectile's lifetime
    
	my_hitboxID.hitbox_timer 	= 0;
	my_hitboxID.hsp 			*= 1.5;
    my_hitboxID.length 			/= 1.5;
}

//	Goodbye Clingy Hand...
if (instance_exists(grapple_fist))
{
	if (my_hitboxID.type == 1)
	{
		spawn_hit_fx(grapple_fist.x, grapple_fist.y, 310);
		sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.75);
		
		instance_destroy(grapple_fist);
	}
}

//	Goodbye Weird Plum...
if (instance_exists(plunger_guard))
{
	if (my_hitboxID.type == 1)
	{
		spawn_hit_fx(plunger_guard.x, plunger_guard.y + 8, 302);
		sound_play(asset_get("sfx_ice_shatter"), false, noone, 0.75);

		move_cooldown[AT_DSPECIAL] = 210;
		
		instance_destroy(plunger_guard);
	}
}