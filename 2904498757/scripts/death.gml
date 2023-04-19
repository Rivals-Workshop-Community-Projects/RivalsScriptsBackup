var len = array_length(grabbed);
for (var i = 0; i < len; i += 1) {
	if grabbed[i] != noone && instance_exists(grabbed[i].pid) {
		with grabbed[i].pid {
		    spr_dir = other.spr_dir * -1;
		}
	}
}

// stop mach mode
nspec_ai_cur = 0;
nspec_mach_timer = 0;

// play sound
sound_play(sfx_death);

// stop taunt sound
if taunt_sound != noone {
	sound_stop(taunt_sound);
	taunt_sound = noone;
}