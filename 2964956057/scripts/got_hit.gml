if hurt_img != 1 && flowey_last_grunt < 0{
	sound_play(sound_get("hurt"), 0, 0, 0.5);
	flowey_last_grunt = 180;
}
if !flowey_saves_used flowey_pratprevent = 1;

flowey_grapples_used = 0;
move_cooldown[AT_USPECIAL] = flowey_savecooldown + 1;