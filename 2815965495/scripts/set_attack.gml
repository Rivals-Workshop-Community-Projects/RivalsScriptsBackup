Fcancel=0;

if attack == AT_USPECIAL{
	contador = 0;
	arrow =2;
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -4.5);
	reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK);
	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
	set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
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
	timer_special=0;
}

if attack == AT_FSPECIAL{
	max_charge=0;
	last_hit_flame = 0;
	Fcancel = 0;
	contador = 0;
	prat_alt += 1;
	set_num_hitboxes(AT_FSPECIAL, 2);
	timer_special=0;
	set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
	set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
}
if attack == AT_TAUNT{
	contador = 0;
	if !down_down{
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
		moyai_taunt = 0;
	} else{
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_2"));
		moyai_taunt = 1;
	}
}
if attack == AT_DAIR{
	can_jump = false;
	can_shield = false;
}
if attack == AT_JAB{
	can_jump = false;
}

if attack == AT_BAIR{
	set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 7);
}

if attack == AT_USTRONG{
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8.5);
	set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
}

if attack == AT_FSTRONG{
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
}