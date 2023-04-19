// Templine
switch (attack) {
    case AT_JAB:
    case AT_FTILT:
    case AT_NSPECIAL:
    case AT_FSPECIAL:
        if (attack_down && special_down && bigiron) {
            attack = AT_NSPECIAL_2;
        }
        break;
}