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

switch (my_hitboxID.attack)
{
    case AT_FSPECIAL:
    
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
    
    break;
    
    case AT_EXTRA_1:
    
    var base, distmult, dist;
    base = 60;
    distmult = 0.08;
    dist = floor(distance_to_object(hit_player_obj) * distmult);
    // penalty = (ceil(heartParryTimer / heartParryAddition) * 45)
    
    parry_lag = base + dist;
    if heartDebug
    {
        print("PARRY LAG : "+ string(parry_lag))
        print("DISTANCE COMP : "+ string(dist))
    }
    // print("HEART ATTACK PENALTY : " + string(penalty))
    // heartParryTimer += heartParryAddition;
    
    break;
}