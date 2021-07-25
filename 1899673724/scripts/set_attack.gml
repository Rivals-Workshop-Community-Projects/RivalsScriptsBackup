if attack == AT_USPECIAL && free && move_cooldown[AT_USPECIAL_2] == 0 {attack = AT_USPECIAL_2}

if attack == AT_TAUNT && down_down {attack = AT_TAUNT_2}

if attack == AT_TAUNT && up_down {attack = AT_EXTRA_2}

if attack == AT_TAUNT && jump_down {attack = AT_EXTRA_3}

if attack == AT_TAUNT && special_down {attack = AT_FSPECIAL_2}

//if attack == AT_TAUNT && strong_down {attack = AT_NSPECIAL_AIR}