sound_play( sound_get( "glace_death" ) );
move_cooldown[AT_USPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_DSPECIAL] = 0;

/*with (asset_get("oPlayer")) {
	if (glace_Freeze && glace_Freeze_ID == other.id) {
		glace_Freeze = false;
		outline_color = [ 0, 0, 0 ];
	}
}*/