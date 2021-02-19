/*if free && attack_down && special_down && !meter_activated && meter_current >= drain 
		&& (attack == AT_NSPECIAL || (attack == AT_FSPECIAL && old_spr_dir == right_down - left_down)) {
	state = PS_ATTACK_AIR;
	var ab_attack = (attack == AT_NSPECIAL)?AT_NAIR:AT_FAIR;
	//set_attack(ab_attack);
	attack = ab_attack;
}*/

if (!runeG && meter_activated == true) meter_activated = false;

if (attack == AT_DSPECIAL) {
	reset_attack_value(AT_DSPECIAL_AIR, AG_SPRITE);
	reset_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE);
	set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 7);
	if (free) { attack = AT_DSPECIAL_AIR; state = PS_ATTACK_AIR; }
}


if runeG
	if !(attack == AT_FSTRONG  || attack == AT_USTRONG  || attack == AT_DSTRONG
		|| attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR 
		|| attack == AT_NAIR	 || attack == AT_FAIR || attack == AT_NSPECIAL_2
		|| attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_FTILT) {
	var numhitboxes = get_num_hitboxes(attack);
	
	for (var i = 1; i <= numhitboxes; i++) {
		reset_hitbox_value(attack, i, HG_DAMAGE);
		reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
		reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(attack, i, HG_BASE_HITPAUSE);
		reset_hitbox_value(attack, i, HG_HITPAUSE_SCALING);
		
		var attackDamage = get_hitbox_value(attack, i, HG_DAMAGE);
		var attackBKB = get_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
		var attackKBS = get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
		var attackBHP = get_hitbox_value(attack, i, HG_BASE_HITPAUSE);
		var attackHPS = get_hitbox_value(attack, i, HG_HITPAUSE_SCALING);
		
			
		set_hitbox_value(attack, i, HG_DAMAGE, attackDamage * damage_multiplier);
		set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, attackBKB * KB_multiplier);
		set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, attackKBS * KB_multiplier);
		set_hitbox_value(attack, i, HG_BASE_HITPAUSE, attackBHP * damage_multiplier);
		set_hitbox_value(attack, i, HG_HITPAUSE_SCALING, attackHPS * KB_multiplier);
	
	}
}

if runeM && meter_current >= 3 * drain && attack == AT_TAUNT && move_cooldown[AT_DSPECIAL_2] == 0 {
	if down_down {
		meter_current -= 3 * drain;
		attack = AT_NSPECIAL_2;
		meter_activated = true;
		boost_timer = get_gameplay_time();
		draw_boost = 1;
		sound_play(sound_get("boost_sfx"));
	} else if up_down {
		attack = AT_DSPECIAL_2;
		meter_current -= 3 * drain;
	}
}


if (attack == AT_TAUNT && is_in_practice)
{
    meter_current = meter_max;
    set_state(PS_IDLE);
}

