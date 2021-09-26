power_bomb_cooldown++;
image_index = power_bomb_cooldown / 4;
sprite_index = sprite_get("physical_attacks_power_bomb")

if(power_bomb_cooldown == 55){
    sound_play(sound_get("power_bomb"))
}

//hitbox making

if(power_bomb_cooldown >= 55 && power_bomb_cooldown <= 58){
    create_hitbox(AT_USPECIAL_GROUND, 1, x + 452, y + 252)
}else if(power_bomb_cooldown >= 59 && power_bomb_cooldown <= 62){
    create_hitbox(AT_NSPECIAL_2, 1, x + 450, y + 252)
}else if(power_bomb_cooldown >= 63 && power_bomb_cooldown <= 66){
    create_hitbox(AT_NSPECIAL_AIR, 1, x + 454, y + 252)
}else if(power_bomb_cooldown >= 67 && power_bomb_cooldown <= 70){
    create_hitbox(AT_FSPECIAL_2, 1, x + 456, y + 252)
}else if(power_bomb_cooldown >= 71 && power_bomb_cooldown <= 74){
    create_hitbox(AT_FSPECIAL_AIR, 1, x + 450, y + 252)
}else if(power_bomb_cooldown >= 75 && power_bomb_cooldown <= 86){
    create_hitbox(AT_USPECIAL_2, 1, x + 450, y + 242)
}


if(power_bomb_cooldown > 100){
    instance_destroy(self)
}