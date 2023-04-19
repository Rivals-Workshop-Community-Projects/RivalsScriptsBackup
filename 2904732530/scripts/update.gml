//Fspecial Cooldown Reset
if (!free || state == PS_HITSTUN || state == PS_WALL_JUMP){
	move_cooldown[AT_FSPECIAL] = 0;
}


//Snail Idle FX
if (state == PS_IDLE && state_timer == 600){
	var fx = spawn_hit_fx(x, y-2, snail)
	fx.depth = -10
}


//Fair 2 Prevent Fast Fall
if (vsp > 0 && attack == AT_FSPECIAL_2 && has_hit){
	old_vsp = -10;
}



//Runes

//A
if (has_rune("A")){
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -11);
}


//B
if (has_rune("B")){
	set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_HITPAUSE, 60);
}


//C
if (has_rune("C")){
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_HSPEED, 2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 35);
	set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 300);
	set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 9);

}


//D
if (has_rune("D")){
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 25);
	set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 25);
}


//E
if (has_rune("E")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
}


//F
if (has_rune("F")){
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 4);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 10);
	set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 10);
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
}


//G
if (has_rune("G")){
	max_djumps = 2;
}


//H
if (has_rune("H") && SWORD == 3){
	knockback_adj = .9;
}

if (has_rune("H") && SWORD != 3){
	knockback_adj = 1.0;
}
		

//I
if (has_rune("I")){
	set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
}

if (has_rune("I") && (!free || state == PS_HITSTUN || state == PS_WALL_JUMP)){
	move_cooldown[AT_USPECIAL] = 0;
}


//J
if (has_rune("J") && SWORD == 2){
	walk_speed = 4.5;
	walk_turn_time = 5;
	initial_dash_speed = 7;
	dash_speed = 8.5;
	dash_turn_time = 8;
	jump_start_time = 4;
	air_max_speed = 6.5;
	walljump_hsp = 8.5;
}

if (has_rune("J") && SWORD != 2){
	walk_speed = 3;
	walk_turn_time = 6;
	initial_dash_speed = 6;
	dash_speed = 7;
	dash_turn_time = 10;
	jump_start_time = 5;
	air_max_speed = 5.5;
	walljump_hsp = 7;
}


//K
if (has_rune("K")){
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.0);
}
	

//L
if (has_rune("L")){
	if (attack == AT_DATTACK || attack == AT_FAIR || attack == AT_FSTRONG || attack == AT_JAB || attack == AT_NAIR){
		if (window < 5){
			super_armor = true;
		}
	}
}

if (has_rune("L") && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	super_armor = false;
}


//M
if (has_rune("M") && attack == AT_TAUNT){
	ITEM = 1;
}


//N
if (has_rune("N")){
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.2);
}


