// called when the character gets KO'd
//AR

with (asset_get("obj_article1")){
    if (player_id == other.id && state == 1){
		state = 2;
		state_timer = 0;
		sound_play(asset_get("sfx_bubblepop"));
    }
}