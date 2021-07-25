//set_attack
if (attack == AT_USPECIAL && !free && canSubmerge && window != 5 && window != 6 && window != 7) {
    window = 8;
}

if (attack == AT_UAIR) {
    uair_hit_timer = false;
    uair_hit_increment = 0;
}

if (attack == AT_TAUNT) {
    if get_player_color(player) == 17 && !(down_down && practice) {
        attack = AT_FTHROW;
        exit;
    } 
    
    if (practice) {
        if (down_down) {
            if (!limitBreak) {
                taunt2Mode = "limit";
            } else {
                taunt2Mode = "limitend";
            }
            attack = AT_TAUNT_2;
        } else if (up_down) && (!abyssEnabled) {
            if (!allRunes) {
                allRunes = true;
                taunt2Mode = "runes";
            } else {
                taunt2Mode = "runesend";
                allRunes = false;
            }
            godmodeanimtimer = godmodemaxtimer;
            attack = AT_TAUNT_2;
        }
    }
}

if (attack == AT_FSPECIAL) {
    fspecTimer = 0;
}

playSoundVar = true;

//nspecial activated
if attack == AT_NSPECIAL && move_cooldown[AT_NSPECIAL] > 0 {
    with pHitBox {
        if player_id == other.id && attack == AT_NSPECIAL {
            activated = true;
        }
    }
}