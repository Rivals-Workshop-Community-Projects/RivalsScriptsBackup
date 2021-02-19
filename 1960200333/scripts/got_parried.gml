//got_parried.gml

if (my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num >= 7)) {
    with obj_article1 {
        spr_dir *= -1;
        par_player = other.hit_player_obj;
        parried = 1;
        hbox.player_id = other.hit_player_obj;
    }
}

if (my_hitboxID.attack == AT_DSPECIAL) {
    with obj_article2 {
        state = 2;
    }
}

if (my_hitboxID.attack != (AT_DSPECIAL) || (my_hitboxID.attack != AT_NSPECIAL && my_hitboxID.hbox_num >= 7)){
    temperature -= temperature_parry_loss; //Fry loses temperature when parried, but not from projectiles/articles.
}
