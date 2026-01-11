// Event 2 - Add orb
// Called on the player object
var orbs = 0;
for (var i = 0; i < 3; i++) if (orb_slots[i] > 0)
        orbs++;
switch (orb_to_add)
{
    case 1:
        sound_play(sound_get("thunder_orb"), false, noone, 1, 1);
        break;
    case 2:
        sound_play(asset_get("sfx_ice_burst_up"), false, noone, 1, 1);
        break;
    case 23:
        sound_play(sound_get("dark_orb"), false, noone, 1, 1);
        break;
    case 4:
        sound_play(sound_get("plasma_orb"), false, noone, 1, 1);
        break;
}
if (orbs >= 3)
{
    if (!(orb_slots[0] == 1 && attack == AT_UAIR))
        with orb1 { 
            orbID = 0; 
            override_orb = -1;
            orb_evoke_x = other.x;
            orb_evoke_y = other.y;
            if (other.orb_slots[1] == 1)
                orb_evoke_y -= 60;
            user_event(1); }
    if (orb_slots[0] == 2)
        armor_duration = 1;
    orb_slots = [orb_slots[1], orb_slots[2], orb_to_add];
}
else
{
    orb_slots[orbs] = orb_to_add;
}