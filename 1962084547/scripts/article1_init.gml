//article1_init.gml
//this article exists solely to draw sprites behind BG's eggs
depth = 9;
trail_count = 3; //maximum number of trails to draw.
anim_speed = 0.2;
spr_fx = sprite_get("boulderactivehb");
hb_array_id = array_create(trail_count, noone);
hb_array_frame = array_create(trail_count, 0);
hb_array_state = array_create(trail_count, 0);
