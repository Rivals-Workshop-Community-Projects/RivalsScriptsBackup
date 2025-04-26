// got_parried is a script that is called when you get parried.
if my_hitboxID.attack == AT_NSPECIAL {
    my_hitboxID.hsp *= 1.2;
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.transcendent = true;
}
