//death.gml

sound_play(sound_get("sfx_death"));

dspecial_orb = 0;
enemy_dspecial_orb = 0;

if (instance_exists(minion)){
    minion.image_index = 0;
	minion.state = 6;
}