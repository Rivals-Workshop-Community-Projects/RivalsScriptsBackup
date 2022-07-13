// called when the character gets KO'd

if random_func_2(0, 4, true) == 1 {
    sound_play(sound_get("r2_scream"))
}

with obj_article1 if player_id == other.id {
    instance_destroy(id)
}