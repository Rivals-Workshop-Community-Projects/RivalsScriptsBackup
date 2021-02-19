//parry.gml

sound_play(sound_get("RI"));
shake_camera(4, 12)
window_timer = 12
state_timer = 12
	halotimer = 250; 
	
	 if get_player_color(player) == 9{
   		sound_play(sound_get("shock1"))
   	}