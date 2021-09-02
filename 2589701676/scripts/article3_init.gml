//article3_init

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;


sprite_index = sprite_get("lock");

desiredX = x;
desiredY = y;

//despawn_timer = 0;
overall_despawn_timer = 16;
past_dir = pi/2;

//parent_dir= pi/2;

for (var i = 0; i<16; i++){
    locations_x[i] = x;
    locations_y[i] = y;
}

/*

spark_anim = 0;
collection_dist = 60;
*/
