//The cat's hurtbox.

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

sprite_index = sprite_get("cat_hurtbox");
image_speed = 0;
visible = false;

//Local variables
parent = noone;
last_hbox = noone;
last_hittime = 0;
last_hbox_group = -2;
last_player_hit = 0;
was_hit = false;
hit_cooldown = 0;
current_hbox = noone;