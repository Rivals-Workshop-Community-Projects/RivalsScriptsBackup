// called when the character gets KO'd// called when the character gets parried

// Reset duration of reflected projectiles
if ((AT_FSPECIAL == my_hitboxID.attack)
    || (AT_USPECIAL_2 == my_hitboxID.attack))
{
    my_hitboxID.hitbox_timer = 0;
} else if (AT_DSPECIAL_2 == my_hitboxID.attack) {
    my_hitboxID.hitbox_timer = psyshock_rise_duration;
}