//death.gml

sound_play(sfx_death);
if (hit_player_obj != noone){
hit_player_obj.visible = true;
}