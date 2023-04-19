if (badge_slot_1 == 6 || badge_slot_2 == 6 || badge_slot_3 == 6){
    create_deathbox( x, y, 190, 190, player, true, 0, 5, 2 );
    state = PS_IDLE_AIR;
    hitpause = false;
}