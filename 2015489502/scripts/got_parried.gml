//ball_charge = 0;

if (my_hitboxID.attack == AT_BIKE){
    bike_cooldown = bike_cooldown_max;
    with my_hitboxID.article_owner{
        bike_health = 1;
        should_hurt = true;
        vsp *= -1;
        hsp *= -1;
    }
}



if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 8){ //thanks SNC
    var parry_distance = distance_to_object(hit_player_obj);
    var parry_dist = clamp(parry_distance, 150, 600);
    var parry_frames = 40 + ease_linear(10, 60, parry_dist-150, 450);
    parry_lag = parry_frames + 20;
    was_parried = true;
    set_state(PS_PRATFALL);
    my_hitboxID.destroyed = true;
}