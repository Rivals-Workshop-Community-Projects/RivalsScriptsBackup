var _true_damage = round(my_hitboxID.damage * lerp(1, 1.6, strong_charge/60));

if (sage_meter < sage_meter_max)
{
    if (sage_meter + _true_damage >= sage_meter_threshold)
    {
        sage_meter += _true_damage + sage_meter_threshold_bonus;
    }
    else
    {
        sage_meter += _true_damage;
    }

    // Vérifier si le sage_meter dépasse le maximum
    if (sage_meter > sage_meter_max)
    {
        sage_meter = sage_meter_max;
    }
}

if (my_hitboxID.attack != AT_NSPECIAL) and (my_hitboxID.attack != AT_DSPECIAL)
{
    mark_meter = mark_meter_max;
}

if instance_exists(after_image1)
{
    after_image1.victim = hit_player_obj;
}
