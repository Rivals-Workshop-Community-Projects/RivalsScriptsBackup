//got_parried

stilleto_id = noone;

if (instance_exists(artc_marker) && artc_marker.state == 1) instance_destroy(artc_marker);

if (attack == AT_FSTRONG) was_parried = true; //because it uses projectiles to attack it acts differently from most attacks

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) afterimage_destroy_cd = afterimage_destroy_set;