switch my_hitboxID.attack{
	// case AT_DSTRONG:
	// 	if free fixed_set_state(PS_PRATFALL);
	// break;
	case AT_FSTRONG:
	if("orig_hsp" in my_hitboxID && my_hitboxID.hbox_num <= 3){
	    my_hitboxID.hitbox_timer = 0;
	    my_hitboxID.hsp = abs(my_hitboxID.orig_hsp) * sign(my_hitboxID.hsp) * 1.5;
	    my_hitboxID.draw_xscale *= -1;
	}
	break;
	case AT_UAIR: case AT_DAIR:
	my_hitboxID.grounds = 1;
	break;
	case AT_FSPECIAL:
	window = 6;
	window_timer = 0;
	destroy_hitboxes();
	break;
	case AT_DSPECIAL:
	if(instance_exists(dspec_rock)){
		with(dspec_rock){
			launcher = hit_player_obj.player;
			hsp *= -1;
			vsp = -abs(vsp);
			old_vsp = vsp;	
			old_hsp = hsp;
		}
	}
	break;
}
#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = free? air_hurtbox_spr:hurtbox_spr;
}
#define fixed_set_attack(attack)
{
	set_attack(attack);
	if free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}