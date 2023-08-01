nspec_has_hit = false;
switch (attack){
    case AT_FSPECIAL:
        if(free)
        {
            attack = AT_FSPECIAL_AIR;
            state = PS_ATTACK_AIR;
        }
        break;
    case AT_NSPECIAL:
        if(fast_fwd && nspec_shells != 0)
            attack = AT_NSPECIAL_2;
        break;
    case AT_DSPECIAL:
        with(oPlayer) if(id != other.id && desirae_timelock) other.attack = AT_DSPECIAL_2;
        if(fast_fwd || move_cooldown[AT_DSPECIAL] > 1)
            attack = AT_DSPECIAL_2;
        break;
}

reset_attack_value(attack, AG_NUM_WINDOWS);

for(i=1; i < get_num_hitboxes(attack)+1; i++)
{
	set_hitbox_value(attack, i, HG_HIT_PARTICLE_NUM, 1); 
    if(attack != AT_DSPECIAL_2)
    {
        set_hitbox_value(attack, i, HG_DRIFT_MULTIPLIER, 1);
        set_hitbox_value(attack, i, HG_SDI_MULTIPLIER, 1);
    }
}