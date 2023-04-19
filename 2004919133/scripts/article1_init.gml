//article1_init

sprite_index = sprite_get("pon");
mask_index = sprite_get("pon");
image_speed = 0.0;

article_animation_speed = 0.1;
article_animation_frame = 0.0;
article_animation_frame_number = 2;

ignores_walls = false;

timer = 0;

rng_speed = random_func(player_id.pon_test,4,false);

//normal attack
hsp = player_id.spr_dir*-1*rng_speed + 1*player_id.spr_dir*-1;
vsp = rng_speed*-1 - 2;

//set to 2 for upwards/downwards sending moves
spawn_mode = 1;

bruh_seed = 1;

with (player_id){
    if ((my_hitboxID.kb_angle >= 70 && my_hitboxID.kb_angle <= 110) || (my_hitboxID.kb_angle >= 250 && my_hitboxID.kb_angle <= 290)){
        other.spawn_mode = 2;
    }
}

if (spawn_mode == 2){ //if move sent upwards/downwards
    bruh_seed++;
    
    rng_speed = random_func(player_id.pon_test,3,false);
    
    var rng_dir = random_func(player_id.pon_test, 2, true);
        
    if (rng_dir == 0){
        rng_dir = -1;
    }

    hsp = rng_dir*-1*rng_speed;
    vsp = rng_speed*-1 - 2;
}