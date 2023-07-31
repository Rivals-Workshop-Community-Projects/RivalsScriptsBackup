#region //Audio--------------------------------------------------------------
if get_player_color(player) == 9 {
	switch(state){
	    case PS_DEAD:
	    case PS_RESPAWN:
	        sound_stop(asset_get("sfx_death1"));
	        sound_stop(asset_get("sfx_death2"));
	        break;
	    case PS_AIR_DODGE:
	        sound_stop(asset_get("sfx_quick_dodge"));
	        break;
	}
}
#endregion
