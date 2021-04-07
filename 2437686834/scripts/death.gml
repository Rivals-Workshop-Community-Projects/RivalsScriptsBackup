// called when the character gets KO'd
if (get_player_color(player) == 8)
sound_play(sound_get("jerma_death"))
else
sound_play(sound_get("die"))