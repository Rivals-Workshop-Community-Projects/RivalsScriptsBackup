//set_state(PS_PARRY);

if (prev_state == PS_ATTACK_AIR or prev_state == PS_ATTACK_GROUND) and attack == AT_FSPECIAL // if hit anytime while performing fspecial, you lose the charge
{
    if fspecial_sound != noone
    {
        sound_stop(fspecial_sound);
        fspecial_sound = noone;
    }
    fspecial_stored = [-1,-1]
}