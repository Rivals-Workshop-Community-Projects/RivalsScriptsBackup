//
if(attack == AT_USPECIAL)
{
  if(!free)
    destroyed = true;
}

if (attack == AT_USPECIAL and hbox_num == 3) or attack == AT_NSPECIAL and get_gameplay_time() mod 4 == 0 {
    with player_id
    {
        var posy = round(random_func(4, 26, true)) - 13
        var st = spawn_hit_fx(other.x,other.y + posy,star)
    }
}