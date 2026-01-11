var orbs = 0;
for (var i = 0; i < 3; i++) if (orb_slots[i] != 0)
    orbs++;
if (orbs > 0)
    sound_play(sound_get("focus"), false, noone, 1, 0.9);
    
orb_slots = [0, 0, 0];

if (armor_temp > 0)
{
    armor_temp = 0;
    soft_armor = 0;
    armor_duration = 0;
}