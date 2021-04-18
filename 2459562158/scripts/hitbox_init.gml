//hitbox_init

switch(attack)
{
    case AT_DSTRONG:
        hsp += (player_id.strong_charge * sign(hsp)) / 10;
        vsp -= player_id.strong_charge / 20;
        
        through_platforms = 1000;
    break;
    case AT_FSPECIAL:
        plasma_safe = true;
    break;
}