//got_parrried.gml

if (my_hitboxID.attack == AT_FSPECIAL) {
    orbit_hit = 8;
}

if (card_count >= 20) {
    card_count += -20;
} else if (card_count < 20) {
    card_count += -(card_count);
}

chargeshot_charge = 0;