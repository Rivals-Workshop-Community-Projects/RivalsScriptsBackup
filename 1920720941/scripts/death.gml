// on respawn
/*
if (dream_mist != noone) {
    var i;
    for (i = 0; i < 25; i+=1) {
        if (dream_mist[i] != noone) {
            dream_mist[i].destroy = true;
        }
    }
    dream_mist = noone;
}*/

if (!has_died) {
    if (has_dashed) {
        set_victory_bg(sprite_get("victorybg3"));
    } else {
        set_victory_bg(sprite_get("victorybg1"));
    }
}
has_died = true;
sound_stop(asset_get("sfx_death1"))
sound_stop(asset_get("sfx_death2"))
sound_play(sound_get("death"));
death_effect = array_create(5);
death_effect[0] = x;
death_effect[1] = y;
death_effect[2] = 0;
death_effect[3] = 0.8;
death_effect[4] = dash_count;

dash_count = 1;
climbing = 0;
stamina = max_stamina;