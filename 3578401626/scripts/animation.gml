//Drawing atop

//intro
var intro_length = 126;

if (get_gameplay_time() < intro_length){
    sprite_index = sprite_get("intro");
    image_index = floor(get_gameplay_time()/(intro_length/image_number));
}


if (sprite_index == sprite_get("dstrong") && image_index >= 1 && image_index <= 7){
    hud_offset = 64;
}

//parried

if (state == PS_PRATLAND){
    sprite_index = sprite_get("parried");
}

//footstool

if (attack == AT_NSPECIAL && instance_exists(footstooled_player)){
    sprite_index = sprite_get("land");
    image_index = (hitstop_full - hitstop) / hitstop_full * 3;
}

if (sprite_index == sprite_get("hurtground") && image_index < image_number - 1){
    image_index = state_timer / 3;
}

if (sprite_index == sprite_get("ustrong") && strong_charge > 0 && attacking_now == 1){
    image_index = generic_timer + 3;
}

if (state == PS_RESPAWN){
    if (taunt_down){
        sprite_index = sprite_get("plattaunt");
        image_index = state_timer / 8;
    } else{
        sprite_index = sprite_get("platidle");
        image_index = state_timer / 8;
    }
}
