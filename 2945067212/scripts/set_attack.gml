if (attack == AT_FSPECIAL )
{
	if (free == true )
	{
		attack = AT_FSPECIAL_AIR;
	}
}
//if (state == PS_JUMPSQUAT && special_pressed && right_pressed && spr_dir == 1 ||state == PS_JUMPSQUAT &&  special_pressed && left_pressed && spr_dir == -1){
//	attack = AT_FSPECIAL_AIR;
//}
reset_attack_value(attack, AG_NUM_WINDOWS);

for(i=1; i < get_num_hitboxes(attack)+1; i++)
	set_hitbox_value(attack, i, HG_HIT_PARTICLE_NUM, 1);