//got_parried.gml

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

if (instance_exists(my_grab_id) && my_grab_id != noone) my_grab_id = noone;

//multihit projectile hit count resets on parry
if (my_hitboxID.type == 2 && my_hitboxID.multihit_amount > 0 && my_hitboxID.proj_hit_count < my_hitboxID.multihit_amount)
{
    my_hitboxID.proj_hit_count = 0;
    my_hitboxID.hitbox_timer = 0;
}

if (my_hitboxID.attack != AT_JAB)
{
    with (obj_article1)
    {
        if (player_id == other)
        {
            state = 7;
            state_timer = 0;
        }
    }    
    artc_parried_timer = 240;
}

if (is_sparking || is_guardian) {
    meter -= meter_max * 0.25; // Depletes 1/4 of the max meter
    meter = max(0, meter); // Ensures the meter doesn't go below 0
}

if (attack == AT_FSPECIAL_AIR && !free) 
{
    set_state(PS_PRATLAND);
}