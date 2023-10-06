//article2_init - ring

depth = -1000;
sprite_index = sprite_get("ring");
mask_index = sprite_get("ringmask");
image_speed = 0.3;

die_trigger = 0;
hitbox_colliding = noone;
hitbox_colliding_player = noone;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
free = true;