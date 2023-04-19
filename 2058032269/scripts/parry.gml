//parry.gml

card_count = clamp(card_count+(20*parry_multiplier), 0, 100);

sound_play(sound_get("parry_powerup"));
sound_play(sound_get("parry_slap"));