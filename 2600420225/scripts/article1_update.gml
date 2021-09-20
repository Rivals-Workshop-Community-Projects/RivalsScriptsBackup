bomb_cooldown++;
image_index = bomb_cooldown / 4;
sprite_index = sprite_get("physical_attacks_morph_bomb")

if(bomb_cooldown == 60){
    create_hitbox(AT_FSTRONG_2, 1, x + 32, y + 32);
}

force_depth = 1;

if(bomb_cooldown >= 80){
    instance_destroy(self)
}

