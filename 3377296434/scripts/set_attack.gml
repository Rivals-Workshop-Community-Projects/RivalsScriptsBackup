// ass fuck shit fart

if (!on_brick){
    if (attack == AT_DSPECIAL && brick.state == 1){
        attack = AT_DSPECIAL_2;
    }
    if (attack == AT_JAB || attack == AT_NAIR){
        attack = AT_NSPECIAL_AIR;
    }
    if (attack == AT_FTILT || attack == AT_FAIR || attack == AT_FSTRONG){
        attack = AT_FSTRONG_2;
    }
    if (attack == AT_BAIR){
        spr_dir *= -1;
        attack = AT_FSTRONG_2;
    }
    if (attack == AT_UTILT || attack == AT_UAIR || attack == AT_USTRONG){
        attack = AT_USTRONG_2;
    }
    if (attack == AT_DSTRONG){
        attack = AT_DTILT;
    }
}