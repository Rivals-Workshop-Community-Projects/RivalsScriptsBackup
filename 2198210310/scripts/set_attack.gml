//set_attack

if holdingCube {
    if (attack == AT_FTILT || attack == AT_FAIR || attack == AT_DATTACK || attack == AT_BAIR || attack == AT_FSPECIAL || attack == AT_FSTRONG) {
        if attack == AT_BAIR {
            spr_dir *= -1;
        }
        attack = AT_FTHROW;
        if has_rune("J") {
            throwHsp = 15;
            throwVsp = -3;
        } else {
            throwHsp = 11;
            throwVsp = -2;
        }
        bounceHsp = -5;
        bounceVsp = -3;
    }
    
    if (attack == AT_JAB || attack == AT_NAIR || attack == AT_NSPECIAL) {
        attack = AT_FTHROW;
        if has_rune("J") {
            throwHsp = 7;
            throwVsp = -12;
        } else {
            throwHsp = 5;
            throwVsp = -9;
        }
        bounceHsp = -4;
        bounceVsp = -6;
    }
    
    if (attack == AT_UTILT || attack == AT_UAIR || attack == AT_USPECIAL || attack == AT_USTRONG) {
        attack = AT_UTHROW;
        if has_rune("J") {
            throwHsp = 0;
            throwVsp = -15;
        } else {
            throwHsp = 0;
            throwVsp = -12;
        }
        bounceHsp = 0;
        bounceVsp = -6;
    }
    
    if (attack == AT_DTILT || attack == AT_DAIR || attack == AT_DSPECIAL || attack == AT_DSTRONG) {
        attack = AT_DTHROW;
        if has_rune("J") {
            throwHsp = 0;
            throwVsp = 11;
        } else {
            throwHsp = 0;
            throwVsp = 8;
        }
        bounceHsp = 0;
        bounceVsp = -6;
    }
}

if (attack == AT_FSPECIAL) {
    var cooldown = 25;
    if fspecCooldown == 0 {
        move_cooldown[AT_JAB] = cooldown;
        move_cooldown[AT_FTILT] = cooldown;
        move_cooldown[AT_DTILT] = cooldown;
        move_cooldown[AT_UTILT] = cooldown;
        move_cooldown[AT_FSTRONG] = cooldown;
        move_cooldown[AT_DSTRONG] = cooldown;
        move_cooldown[AT_USTRONG] = cooldown;
        move_cooldown[AT_DATTACK] = cooldown;
        move_cooldown[AT_FAIR] = cooldown;
        move_cooldown[AT_BAIR] = cooldown;
        move_cooldown[AT_DAIR] = cooldown;
        move_cooldown[AT_UAIR] = cooldown;
        move_cooldown[AT_NAIR] = cooldown;
        move_cooldown[AT_NSPECIAL] = cooldown;
        move_cooldown[AT_FSPECIAL] = cooldown;
        move_cooldown[AT_DSPECIAL] = cooldown;
        move_cooldown[AT_USPECIAL] = cooldown;
        move_cooldown[AT_TAUNT] = cooldown;
        fspec_had_airdodge = has_airdodge;
    }
    
    if fspecCooldown == 0 && !(attack != AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
        if has_rune("A") {
            fspecCooldown = 120;
        } else {
            fspecCooldown = 160;
        }
        create_hitbox(AT_FSPECIAL, 2, x + spr_dir*50, y - 15);
    }
}

if attack == AT_TAUNT {
    if down_down {
        attack = AT_TAUNT_2;
    }
}