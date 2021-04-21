//article1_init

sprite_index = sprite_get("pon");
mask_index = sprite_get("pon");
image_speed = 0.0;

article_animation_speed = 0.1;
article_animation_frame = 0.0;
article_animation_frame_number = 2;

ignores_walls = false;

timer = 0;

rng_speed = random_func(player_id.pon_test,5,false);

//normal attack
hsp = player_id.spr_dir*-1*rng_speed + 1*player_id.spr_dir*-1;
vsp = rng_speed*-1 - 2;