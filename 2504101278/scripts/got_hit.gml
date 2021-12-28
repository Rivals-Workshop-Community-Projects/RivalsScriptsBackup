//set_state(PS_PARRY);

if (prev_state == PS_ATTACK_AIR or prev_state == PS_ATTACK_GROUND) // if hit anytime while performing fspecial, you lose the charge
{
    switch (attack)
    {
        case AT_FSPECIAL:
        if fspecial_sound != noone
        {
            sound_stop(fspecial_sound);
            fspecial_sound = noone;
        }
        fspecial_stored = [-1,-1]
        break;
        case AT_DSPECIAL:
            instance_destroy(dspecial_laser);
            destroy_hitboxes();
            dspecial_laser = noone;
            move_cooldown[AT_DSPECIAL] = 120
        break;
    }
}