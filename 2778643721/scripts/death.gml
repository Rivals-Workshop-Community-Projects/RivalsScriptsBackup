sound_play(sound_get("sfx_death"));
nspecial_gague = 0;
nspecial_charge = 0;
if (instance_exists(portal1) && instance_exists(portal2)){
    portal1.shoulddie = true;
    portal2.shoulddie = true;
}