// called when the character gets KO'd

sound_stop(sound_get("dog_motor"));
sound_play(sound_get("dog_heartbreak"));
move_cooldown[AT_FSTRONG] = 1600;
hit_player = player;
hit_player_obj = self;
