//got_parried.gml
//as the name suggests, this script runs when the player is parried, this can be useful for disabling effects like certain debuffs
//or redirecting the character into certain states


//prevents the grab ID from staying
if (my_grab_id != noone) my_grab_id = noone;

//normally we would use HG_PROJECTILE_PARRY_STUN in the attack script, but that hitbox index will instantly put us in pratland,
//this allows us to finish playing the animation first and then being put in pratland
switch my_hitboxID.attack{
    case AT_NSPECIAL:
        fixed_set_state(free? PS_PRATFALL:PS_PRATLAND);
    break;
}
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;
}
#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = hurtbox_spr;
}
#define fixed_set_attack(attack)
{
	set_attack(attack);
	if free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}