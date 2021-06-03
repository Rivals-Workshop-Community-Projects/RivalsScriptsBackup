if (enemy_hitboxID.kb_value >= 7){
    star_meter--;
}

var already_hit = false;

if (already_hit = false && move_cooldown[AT_FSPECIAL] > 0){
    move_cooldown[AT_FSPECIAL] = 0;
    already_hit = true;
}

times_dodged = 0;

if (attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL_2){
    star_meter = 0;
} 