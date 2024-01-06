// death.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#death-gml
// Called when your character dies.

sound_stop(geyser_indicator_sound);

if(has_rune("O") && rune_respawn == true && instance_exists(sludge_puddle_id)){
    rune_respawn = -1;
    set_player_stocks(player, get_player_stocks(player) + 1);
}
if(has_rune("O") && rune_respawn == false){
    rune_respawn = true;
    if(instance_exists(sludge_puddle_id)) sludge_puddle_id.was_parried = true;
}