//article7
// BOAT

sprite_index = sprite_get("boat");


y_ref = y;
y = y_ref + random_func( 2, 25, true);


spd = 0.02;

if (random_func( 8, 2, true) == 0)
{
    x = room_width - x;
    spd *= -1 ;
}


timer_start = 120 + random_func( 9, 58, true) * 60;