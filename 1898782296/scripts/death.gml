//death.gml

char_height = 42;
sound_play(voice_die[1]);

with(asset_get("obj_article_platform")){
	if(player_id == other.id){
		shy_guy_death = true;
	}
}
with(asset_get("obj_article1")){
	if(player_id == other.id){
		state = 3
		state_timer = 0;
	}
}
with(asset_get("obj_article2")){
	if(player_id = other.id){
		state = 3;
		state_timer = 0;
	}
}