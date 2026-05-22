//hit player

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 6
{
    with (obj_article1)
    {
        if player_id == other.id
        {
            
            hitstop = 15;
            hitpause = true;
            spawn_hit_fx(other.my_hitboxID.x, other.my_hitboxID.y, 301);
            if (jawBreakerMode){
                
                other.my_hitboxID.no_other_hit = 30;
                for (var h = 0; h < 20; h++;){
                    other.my_hitboxID.can_hit[h] = true;

                }
            }
        }
    }
   
}

if my_hitboxID.attack == AT_FSPECIAL && window < 3
{
    fspecial_char = hit_player_obj
}