///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml
//this script runs at on the first frame of an attack, sort of like an init.gml but for attack_update.gml

switch attack{
    case AT_DATTACK:
        set_attack_value(attack, AG_NUM_WINDOWS, 3);
    break;
    case AT_NSPECIAL:
    	nspecial_angled = false;
		set_window_value(attack, 2, AG_WINDOW_ANIM_FRAME_START, 4 + (nspecial_angled * 5));
		set_window_value(attack, 3, AG_WINDOW_ANIM_FRAME_START, 5 + (nspecial_angled * 5));
		
		nspecial_cancel_ready_l = false;
		nspecial_cancel_ready_r = false;
    break;
    case AT_DSPECIAL:
		set_hitbox_value(attack, 1, HG_DAMAGE, 6);
		set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, 15);
    break;
    case AT_USPECIAL:
		uspecial_used = true;
    break;
}

//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
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