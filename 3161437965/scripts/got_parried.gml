//got_parried.gml

has_saved_state = false;

if (!has_rune("I") && my_hitboxID.type == 1 && instance_exists(artc_savepoint)) artc_savepoint.artc_hp = 0;