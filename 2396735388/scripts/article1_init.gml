//article1_init

sprite_index = sprite_get("ring_front");
visible = false;

article_which = 0; /*
0 - front of ring
1 - gcm particle
2 - fake ring hitbox
//*/

livetimer = 0;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;