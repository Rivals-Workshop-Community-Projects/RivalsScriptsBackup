//
with oPlayer {//oPlayer
	take_damage( player, -1, -999 );
	with ( obj_stage_article_platform ) {
	Delete = true
	}
	
	with ( obj_stage_article_solid ) {
	Delete = true
	}
	with ( obj_stage_article ) {
	destroy_hitboxes();
	if ( get_article_script( id ) == 96 ) {
	xq =-999;
	yq =-999;
	initialization = false
	}
	Delete = true
	}

}
sound_stop( asset_get("sfx_death1"));
sound_stop( asset_get("sfx_death2"));
sound_play( sound_get("sfx_FNF"));
music_play_file( "music_loop" );
set_state(PS_SPAWN)
death = 1;
	with ( obj_stage_article ) {
		if ( get_article_script( id ) == 96 ) {
		effect = 0
		}
		if ( get_article_script( id ) == 596 ) {
		Numberofdeaths += 1
		}
	}