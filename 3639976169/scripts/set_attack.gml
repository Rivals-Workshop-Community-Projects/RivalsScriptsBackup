//set_attack
energized_attack = false;
if (prev_attack != noone)
{
    set_window_value(prev_attack, 1, AG_WINDOW_LENGTH, prev_attack_startup);
    set_window_value(prev_attack, prev_attack == AT_DAIR ? 4 : 3, AG_WINDOW_LENGTH, prev_attack_endlag );
}

armor_duration = 0;

var armor_val = 0;
var armor_time = 0;
var frame_multiplier = 1.0;
for (var i = 0; i < 3; i++)
{
    if (orb_slots[i] == 2)
    {
        //super_armor = true;
        armor_val += 2;
        armor_time += 6;
    }
    if (orb_slots[i] == 4)
    {
        frame_multiplier -= 0.15;
    }
}
if (old_ice)
{
    if (armor_val > 0)
        soft_armor = armor_val + 2;
    armor_duration = armor_time;
    if (armor_time > 0)
    {
        knockback_scaling = 0.4;
        damage_scaling = 0.5;
    }
}
switch (attack)
{
    case AT_TAUNT:
        if (down_down) attack = AT_TAUNT_2;
        break;
}

if (custom_clone)
{
    if (attack != AT_TAUNT && attack != AT_TAUNT_2)
        attack = hologram_valid_attack;
}

if (attack != AT_TAUNT && attack != AT_TAUNT_2 && attack != AT_DSPECIAL && attack != AT_FSPECIAL && attack != AT_NSPECIAL && attack != AT_DSPECIAL_2)
{
    hologram_valid_attack = attack;
}
prev_attack = attack;
prev_attack_startup = get_window_value(attack, 1, AG_WINDOW_LENGTH);
prev_attack_endlag  = get_window_value(attack, attack == AT_DAIR ? 4 : 3, AG_WINDOW_LENGTH);

if (frame_multiplier != 1.0 && attack != AT_TAUNT && attack != AT_TAUNT_2)
{
    set_window_value(attack, 1, AG_WINDOW_LENGTH, round(prev_attack_startup * frame_multiplier));
    set_window_value(attack, 3, AG_WINDOW_LENGTH, round(prev_attack_endlag  * frame_multiplier));
}
var hologram_was_alive = instance_exists(hologram) ? hologram.hologram_active : false;
switch (attack)
{
    case AT_FSPECIAL:
        dualcast_orb = orb_slots[0];
        orb_slots = [orb_slots[1], orb_slots[2], 0];
        break;
    case AT_DSPECIAL:
        if (hologram_was_alive)
            attack = AT_DSPECIAL_2;
        break;
}