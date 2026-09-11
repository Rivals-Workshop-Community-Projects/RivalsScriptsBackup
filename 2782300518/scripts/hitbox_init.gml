if (attack == AT_FSPECIAL && hbox_num == 1)
{
    changeSprite = false;
    disc_parried = false;
}
if (attack == AT_FSPECIAL_AIR && hbox_num == 1)
{
    disc_parried = false;
}

if (attack == 49 && hbox_num == 1)
{
    times_hit = 0;
    flight_direction = 0;
    flight_distance = 0;
}