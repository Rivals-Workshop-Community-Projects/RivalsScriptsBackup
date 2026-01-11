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
    with (hologram) spawn_hit_fx(x, y, vfx_hologram_vanish);
    instance_destroy(hologram.orb1);
    instance_destroy(hologram.orb2);
    instance_destroy(hologram.orb3);
    instance_destroy(hologram);
}

armor_duration = 0;
armor_temp = 0;
soft_armor = 0;