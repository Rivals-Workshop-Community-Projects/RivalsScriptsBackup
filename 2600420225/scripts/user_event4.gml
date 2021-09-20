if(hit_timer >= 60 && hit_timer <= 84){
    set_hitbox_value( AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_morph_bomb"));
}
if(hit_timer >=78){
    hit_timer = 90
    set_hitbox_value( AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, 0);
}

hit_timer++;