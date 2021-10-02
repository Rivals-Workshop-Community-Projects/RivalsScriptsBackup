if (state_cat == SC_GROUND_NEUTRAL || state == PS_IDLE_AIR || state == PS_FIRST_JUMP) && (fireballtogglecooldown > (fireballtogglecooldown_full / 5) && fireballtogglecooldown_noanimation <= 0){
    sprite_index = sprite_get("nspecial");
    image_index = (fireballtogglecooldown / fireballtogglecooldown_full) * image_number * -0.8;
}
//fireballtogglecooldown

if (sprite_index == sprite_get("jump") && flutterjumping){
    if (vsp <= 0.65){
        sprite_index = sprite_get("glide");
        image_index = get_gameplay_time() / 2;
    } else {
        image_index = 4;
    }
}

if (attack == AT_FSPECIAL) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    if (window == 3 && window_timer > 5){
        if (up_down && !down_down){
            image_index = 6;
        }
        if (down_down && !up_down){
            image_index = 5;
        }
    }
    if (window == 1){
        image_index = fspecial_charge_image;
    }
}

if (has_rune("N")){
    rune_N_abyss_spr_index = sprite_index;
    rune_N_abyss_img_index = image_index;
    var img_index_save = image_index;
    if (sprite_index == sprite_get("idle")){
        sprite_index = sprite_get("idle_abyss");
        image_index = img_index_save;
    }
    if (sprite_index == sprite_get("walk")){
        sprite_index = sprite_get("walk_abyss");
        image_index = img_index_save;
    }
    if (sprite_index == sprite_get("walkturn")){
        sprite_index = sprite_get("walkturn_abyss");
        image_index = img_index_save;
    }
    if (sprite_index == sprite_get("jump")){
        sprite_index = sprite_get("jump_abyss");
        image_index = img_index_save;
    }
    if (sprite_index == sprite_get("jumpstart")){
        sprite_index = sprite_get("jumpstart_abyss");
        image_index = img_index_save;
    }
    if (sprite_index == sprite_get("land")){
        sprite_index = sprite_get("land_abyss");
        image_index = img_index_save;
    }
}