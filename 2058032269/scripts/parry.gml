//parry.gml

card_count += 20*parry_multiplier;
if (card_count > 100) { 
    card_count = 100; 
}

sound_play(sound_get("parry_powerup"));
sound_play(sound_get("parry_slap"));