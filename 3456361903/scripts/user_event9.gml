#region //Audio--------------------------------------------------------------
	switch(state){
	    case PS_DEAD:
	    case PS_RESPAWN:
	        sound_stop(asset_get("sfx_death1"));
	        sound_stop(asset_get("sfx_death2"));
	        break;
	}
#endregion
