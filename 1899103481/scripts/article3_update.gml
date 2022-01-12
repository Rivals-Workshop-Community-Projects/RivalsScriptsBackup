// print("state: " + string(state));

if (lifespan > 0){
    lifespan--;
}
// spawn_hit_fx(x, y, hit_fx_create(sprite_get("starburst"), 10));
// spawn_hit_fx(x, y, 199);

// states
// -1: creating (new)
// 0: active?
// 1: ready to be destroyed

if (lifespan < 1 && state == 0){
    sprite_index = sprite_get("lava_platform_exploded");
    image_speed = 0.5;
    state = 1;
}

switch(state){
    case -1:
        image_speed = 0.5;
        // print("state = -1 ")
        if (image_index > 3 && !hitbox_created){
            // print("create pillar hitbox")
            create_hitbox(AT_FSPECIAL, 2, x, y-16);
            hitbox_created = true;
        }
        if(image_index > image_number - 1){
            // print("going to next state")
            state = 0;
        }
         break;
    
    case 1:
        if (image_index == 0){
           
            sound_play(asset_get("sfx_ell_big_missile_ground"));
        } else if(image_index > image_number - 1){
            instance_destroy();
            exit;
        }
        break;
    
    default: // 0 = active
        image_alpha = 1;
        sprite_index = sprite_get("lava_platform");
        // image_index = 0;
        image_speed = 1/3;
}

// own hitboxes remove wall? should this stay or not?
// with (asset_get("pHitBox")){
//     if (place_meeting(x, y, other)
// 	&& player_id == other.player_id){
//     // if the hitbox is a physical attack
//         if (type == 1 ){
//             other.sprite_index = sprite_get("lava_platform_exploded");
//             other.image_speed = 0.5;
//             other.state = 1;
//             // print("you punched the wall away");
//         }
//     }
// }