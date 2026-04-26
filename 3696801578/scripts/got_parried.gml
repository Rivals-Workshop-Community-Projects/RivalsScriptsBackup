if my_hitboxID.attack == AT_EXTRA_1 and instance_exists(jake_obj) {
    with jake_obj {
        target_cooldown = cooldown_amounts.parried
        was_parried = true
    }
}