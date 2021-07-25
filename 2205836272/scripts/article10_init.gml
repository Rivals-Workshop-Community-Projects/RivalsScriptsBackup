//article10
// YUKARI

sprite_index = sprite_get("nothing");

y_ref = y;

x = (room_width / 2) + (200 +(random_func( 10, 160, true))) * (random_func( 10, 2, true) * 2- 1);
y = (y_ref + random_func( 11, 70, true))

state = 3;
// 0 = entrence
// 1 = idle
// 2 = leaving
// 3 = waiting 

wait_timer = (20 + (random_func( 10, 200, true))) * 60;
stay_timer = 0;

image_spd = 0.15

//if (ds_list_find_index(player_id.cameo, 5) != -1)//(random_func( 3, 2, true) == 1)
{
    sprite_index = sprite_get("yukari");
}

