sound_stop(sound_get("death"));
sound_play(sound_get("death"));

move_cooldown[AT_DSPECIAL] = 0;
move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_USPECIAL] = 0;

var bugs_out = false;

with(asset_get("obj_article1")){
    if (player_id == other.id){
        bugs_out = true;
    }
}

if (bugs_out){
    with asset_get("obj_article1"){
        if (player_id == other.id && state == 0){
            spawn_hit_fx( x + 5, y - 20, 14);
            state = 2;
        }
    }
}
