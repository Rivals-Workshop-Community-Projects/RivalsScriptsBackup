
with (oPlayer){
	if (player != other.player && get_player_team( player ) != get_player_team( other.player )){
        if other.grabbed_player == id
        other.grabbed_player = noone;
        
        trick_timer = 0;
        trick_stack = 0;
        styled_on = 0;
        trick_deterioration = trick_deter_default;
	}
}

if (sparda)
sound_play(sound_get("dismal"));