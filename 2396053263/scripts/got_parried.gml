//got_parried.gml

has_brake = 0;

if (!array_equals(heartChains, []) and !hit_player_obj.clone) //include 'and !heartBreakInProgress' if you want them to exist when broken
{
    //print("WOOO")
    if hit_player_obj.heartPosition != -1 and heartChains[hit_player_obj.heartPosition] != noone
    {
        with heartChains[hit_player_obj.heartPosition]
        {
            //print("breaking")
            player_id.heartBreakInProgress = false;
            chainedPlayer.heartChainPlayer = noone;
        }
        instance_destroy(heartChains[hit_player_obj.heartPosition])
        heartChains[hit_player_obj.heartPosition] = noone;
        //print("broke")
        hit_player_obj.heartPosition = -1;
    }
    
}

if my_hitboxID.attack == AT_FSPECIAL
{
    for (var i = 0; i < array_length_1d(fspecial_needles); i++)
    {
        if fspecial_needles[i] != noone
        {
            with (fspecial_needles[i])
            {
                hitbox_timer = 0;
                hsp *= (self == other.my_hitboxID) ? 1.25 : -1.25;
                vsp *= (self == other.my_hitboxID) ? 1.25 : -1.25;
                player = other.hit_player;
                was_parried = true;
            }
            fspecial_needles[i] = noone
        }
    }
    print(" ------------ ")
}