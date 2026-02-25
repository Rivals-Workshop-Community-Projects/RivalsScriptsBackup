
can_be_hit[player_id.player] = 100;
player_id.reflectarticle = self;
mask_index = (sprite_get("dspecial_reflectbox3"));
is_hittable = true;
disable_movement = true;
can_be_grounded = false;
ignores_walls = true;
hittable_hitpause_mult = 0;