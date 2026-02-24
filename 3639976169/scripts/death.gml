// called when the character gets KO'd
orb_slots = [ 0, 0, 0 ];

if (custom_clone)
{
    instance_destroy(orb1);
    instance_destroy(orb2);
    instance_destroy(orb3);
}

if (instance_exists(hologram))
{   
    with (hologram) user_event(3);
}

armor_duration = 0;
armor_temp = 0;
soft_armor = 0;

energized = false;
energized_attack = false;