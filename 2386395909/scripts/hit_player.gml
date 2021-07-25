//hit player

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 6
{
    with (obj_article1)
    {
        if player_id == other.id
        {
            hitstop = 15;
            hitpause = true;
        }
    }
   
}

if my_hitboxID.attack == AT_FSPECIAL && window < 3
{
    fspecial_char = hit_player_obj
}