//got_hit.gml

fspec_charge = 0;
uses_afterimage_trail = false;

if (hurt_img == 0) sound_play(sound_get("sfx_hurt_strong"));

if (!has_rune("I") && instance_exists(artc_savepoint) && artc_savepoint.saved_player != self) artc_savepoint.artc_hp = 0;