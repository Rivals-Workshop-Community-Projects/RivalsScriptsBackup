//Player lives screen
timer = 0;
timer_max = 300;

sprite_index = asset_get("empty_sprite");

player_count = array_create(0);
with oPlayer { //Fixes for various things due to article solids
	//Removing CPUs without ending the game
	if (!("temp_level" in self) || temp_level == 0) {
	    if (is_player_on(player))
	        array_push(other.player_count, id);
	}
}

screen = 0; //0 - Intro; 1 - Game over
player_scores = array_create(0);
disable_movement = true;
dont_despawn = true;
//Syobon mode only
cheeky = false;
fake_music_ow = "music_ow";
fake_music_ug = "music_ow";
fake_music_ca = "music_castle";