//article2_init.gml
//avery, for up-air.

sprite_index = sprite_get("uair_proj")

hitbox_id = noone;

state = 0;

hitbox_respawn_timer = 0;
hitbox_max_respawn_timer = 6;

hitboxes_spawned = 0;
max_hitboxes_spawned = 5;


//
ignores_walls = true;
can_be_grounded = true;
uses_shader = true;