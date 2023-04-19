if (attack == AT_DSTRONG) //Boulder break
{
    if (window == 4 && window_timer == 0)
    {
        spawn_hit_fx( x + (50 * spr_dir), y, 301);
    }
}

if (attack == AT_NSPECIAL) //Gift of Earth
{
    if (window == 2 && window_timer == 1)
    {
        rock = true;
    }
}


if (attack == AT_DSPECIAL_2){
    if (window == 1 && window_timer == 1)
    {
        rock = false;
    }
}

if (attack == AT_FSPECIAL_2){
    if (window == 1 && window_timer == 1)
    {
        rock = false;
    }
}

if (attack == AT_USPECIAL_2){
    if (window == 1 && window_timer == 1)
    {
        rock = false;
    }
    if (window == 4 && window_timer == 1)
    {
        spawn_hit_fx( x + (5 * spr_dir), y - 40, 155);
    }
}

if (attack == AT_FSTRONG_2){
    if (window == 3 && window_timer == 1)
    {
        rock = false;
    }
}

if (attack == AT_USTRONG_2){
    if (window == 3 && window_timer == 1)
    {
        rock = false;
    }
}

if (attack == AT_DAIR)
{
    if (window == 4 && window_timer == 0)
    {
        spawn_hit_fx( x + (10 * spr_dir), y, 192);
    }
}

if (rockarmor > 0)
{
    super_armor = true;
}

if (rockarmor <= 0)
{
    super_armor = false;
}

if (rockarmor > 3)
{
    rockarmor = 3;
}

if (rockarmor <= 0)
{
    rockarmor = 0;
}

if (charge > 200)
{
    charge = 200;
}

if (attack == AT_FSPECIAL_2 and window > 3 and window < 19)
{
            hsp = 0;
            vsp = 0;
}