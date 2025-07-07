//Voice Button Shit

//If player was voiced last match, keep them voiced
if (get_synced_var(player) == 1){
    css_voice_on = 1;
    set_synced_var(player, css_voice_on);
}
//If they weren't, keep it that way
else if (get_synced_var(player) == 0){
	css_voice_on = 0;
}
else{
	css_voice_on = 1;
}

css_voice_button_hover = false;
css_voice_button_press = false;

voice_button_x = x+176;
voice_button_y = y+36;

//Victory Screen Song Loop
sound_stop(sound_get("victory_loop"));