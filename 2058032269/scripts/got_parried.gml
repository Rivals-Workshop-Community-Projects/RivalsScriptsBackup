//got_parrried.gml

if (my_hitboxID.attack == AT_FSPECIAL) {
    orbit_hit = 8;
}

if (invincible_super) {
    card_count = 0;
    invincible_super = false;
} else { card_count = clamp(card_count-20, 0, 100) }
chargeshot_charge = 0;