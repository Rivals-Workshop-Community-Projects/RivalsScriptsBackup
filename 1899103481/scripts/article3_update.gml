if (lifespan > 0){
    lifespan--;
}
// spawn_hit_fx(x, y, hit_fx_create(sprite_get("starburst"), 10));
// spawn_hit_fx(x, y, 199);

if (lifespan < 1 && state == 0){
    sprite_index = sprite_get("lava_platform_exploded");
    image_speed = 0.5;
    state = 1;
}

if (state == 1){
        if (image_index == 0){
            sound_play(asset_get("sfx_ell_big_missile_ground"));
        } else if(image_index > image_number - 1){
            instance_destroy();
            exit;
        }
}else{
    sprite_index = sprite_get("lava_platform");
}

with (asset_get("pHitBox")){
    if (place_meeting(x, y, other)
	&& player_id == other.player_id){
    // if the hitbox is a physical attack
        if (type == 1 ){
            other.sprite_index = sprite_get("lava_platform_exploded");
            other.image_speed = 0.5;
            other.state = 1;
        }
    }
}
