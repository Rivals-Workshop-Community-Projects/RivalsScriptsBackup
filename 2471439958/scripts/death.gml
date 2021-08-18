// called when the character gets KO'd
if (caleb == 1) {
    sound_play(sound_get("FALL"));
}
uspec_meter = 100;

ice_cont = 0;
ice_active = false;
hit_player_obj.ice_mark = 0;
ice_active_cont = 0;
hit_player_obj.outline_color = [0, 0, 0];

gaming = 0;
crystal = 0;

sound_stop(sound_get( "final_battle" ));
sound_stop(sound_get( "servant_of_the_crystal" ));
