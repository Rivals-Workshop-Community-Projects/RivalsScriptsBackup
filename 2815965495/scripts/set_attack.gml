Fcancel=0;

if attack == AT_USPECIAL{
	contador = 0;
	arrow =2;
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -4.5);
	reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK);
	absorb = 0;
}

if attack == AT_DSPECIAL{
	contador = 0;
	//soft_armor=10;
	hit_check=noone;
}

if attack == AT_UTILT{
	contador = 0;
	set_num_hitboxes(AT_UTILT,2);
}


if attack == AT_NSPECIAL{
	set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
	absorb = 0;
}

if attack == AT_FSPECIAL{
	Fcancel = 0;
	contador = 0;
	prat_alt += 1;
	set_num_hitboxes(AT_FSPECIAL, 2);
}
if attack == AT_TAUNT{
	contador = 0;
}
if attack == AT_DAIR{
	can_jump = false;
	can_shield = false;
}

if attack == AT_BAIR{
	set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 7);
}

