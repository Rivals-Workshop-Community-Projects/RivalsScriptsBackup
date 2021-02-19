// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DSPECIAL) {
    if (zoID != undefined) {
        if ((zoID.state == PS_ATTACK_AIR || zoID.state == PS_ATTACK_GROUND) && (zoID.attack != AT_DSPECIAL_2)) || (zoID.state == PS_PRATFALL || zoID.state == PS_PRATLAND) {
            if (free) {
                state = PS_IDLE_AIR;
            } else {
                state = PS_IDLE;
            }
            move_cooldown[AT_DSPECIAL] = 10;
        }
    }
}