// stop mach mode
nspec_ai_cur = 0;
nspec_mach_timer = 0;

// stop taunt sound
if taunt_sound != noone {
	sound_stop(taunt_sound);
	taunt_sound = noone;
}