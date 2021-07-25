sound_play ( sound_get ("ow2") );

move_cooldown[AT_NSPECIAL] = 0;


if (!runeF){
    with (obj_article_solid){
        if (player_id == other.id){
            die = true;
        }
    }
    with (obj_article1){
        if (player_id == other.id){
            die = true;
        }
    }
}