sound_stop(sound_get("hamoodclap"));
sound_stop(sound_get("hamoodclap2"));
sound_stop(sound_get("hamood2"));
sound_play(sound_get("hamood2"));

if (lose_alarms_on_death){
    with(asset_get("obj_article1")){
        if (player_id == other.id){
            state = 2;
            state_timer = 0;
        }
    }
}

move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_DSPECIAL] = 0;