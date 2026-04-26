if instance_exists(jake_obj) {
    spawn_hit_fx(jake_obj.x,jake_obj.y,HFX_GEN_SPIN)
    jake_obj.state = PS_DEAD
}

jake_cooldown = 0