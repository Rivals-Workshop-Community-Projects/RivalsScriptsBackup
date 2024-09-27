//	death.gml

move_cooldown[AT_NSPECIAL] 		= 0;
move_cooldown[AT_FSPECIAL] 		= 0;
move_cooldown[AT_DSPECIAL] 		= 0;

grapple_grab = noone;

if (instance_exists(grapple_fist))
{
	spawn_hit_fx(grapple_fist.x, grapple_fist.y, 310);
	sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.75);
	
	instance_destroy(grapple_fist);
}

if (instance_exists(plunger_guard))
{
	spawn_hit_fx(plunger_guard.x, plunger_guard.y + 8, 302);
	sound_play(asset_get("sfx_ice_shatter"), false, noone, 0.75);
	
	instance_destroy(plunger_guard);
}