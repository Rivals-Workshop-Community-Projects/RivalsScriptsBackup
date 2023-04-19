//hit player
var hitmove = my_hitboxID.attack;

// neat idea
/*
if (hitmove == AT_FSPECIAL) {
	// turns fspecial into a command grab basically
	hit_player_obj.x = x + (20 * spr_dir);;
	hit_player_obj.y = y 
	vsp = -5;
	old_vsp = -5;
}
*/

// abyss rune
// gain hype meter upon hitting enemies (100 is max)
if (gimmick_activated == true) {
	if (hype_active == false) {
		if (hype < hype_max) {
			var hypeadd = my_hitboxID.damage;
			hype = hype + hypeadd;
		} 
		
		// cant be above hype_max
		if (hype > hype_max) {
			hype = hype_max;
		}
	}
}


if (hitmove = AT_DAIR) {
	if (!runeH) {
		sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.75, 1);
	}
	//sound_play(asset_get("sfx_blow_heavy2"));
}


if (runeL) {
	if (hitmove == AT_USPECIAL) {
		// hitting a player with uspec beam doesn't assign "has hit" for some reason
		has_hit = true;
	}
}


if (hitmove == AT_NSPECIAL) {
	sound_play(asset_get("sfx_blow_weak2"));
}

// steve support
if (hitmove == AT_FTILT || hitmove == AT_UTILT || hitmove == AT_DTILT || hitmove == AT_USTRONG || hitmove == AT_DSTRONG || hitmove == AT_USTRONG || hitmove == AT_NAIR || hitmove == AT_FAIR || hitmove == AT_BAIR || hitmove == AT_DAIR || hitmove == AT_UTHROW || hitmove == AT_FSTRONG) {	
	steve_death_message = "owen killed Steve using weapon_crowbar."
}
else if (hitmove == AT_DATTACK || hitmove == AT_UAIR) {
	steve_death_message = "owen killed Steve using swep_legs."
}
else if (hitmove == AT_USPECIAL) {
	steve_death_message = "owen killed Steve using weapon_gauss."
}
else if (hitmove == AT_FSPECIAL) {
	steve_death_message = "owen killed Steve using weapon_physcannon."
}
else if (hitmove == AT_DSPECIAL) {
	steve_death_message = "owen killed Steve using prop_physics."
}
else if (hitmove == AT_NSPECIAL) {
	steve_death_message = "owen killed Steve using weapon_smg1."
}
else if (hitmove == AT_DSTRONG_2) {
	steve_death_message = "owen killed Steve using grenade_ar2."
}
else if (hitmove == AT_TAUNT) {
	steve_death_message = "owen killed Steve using swep_mew."
}
else if (hitmove == AT_JAB) { // troled
	steve_death_message = "owen killed Steve using weapon_crowbar."
}
else {
	steve_death_message = "owen killed Steve using %weaponname%.";	
}


// DUMBASS DND JOKE CODE AHEAD
/*
if get_player_color(player) == 3 { //blue

var armor_class_bonus = 0;
var weight = 1;

// heavier characters have bigger armor class
with hit_player_obj {
	
	weight = knockback_adj;
}

if (weight >= 1.2) {
	armor_class_bonus = -2;
} 
else if (weight >= 1.1) {
	armor_class_bonus = -1;
}
else if (weight >= 1) {
	armor_class_bonus = 0;
}
else if (weight >= 0.95) {
	armor_class_bonus = 2;
}
else if (weight >= 0.9) {
	armor_class_bonus = 4;
}

// returns value from 0 to 19 + dex modifier

hit_chance_var = random_func( 0, 20, true ) + 9;

var hit_damage = my_hitboxID.damage;

if (hit_chance_var < 13 + armor_class_bonus) { // we are assuming every other character has an armor class of 14.
	print_debug("MISS!");
	
	sound_play(sound_get("fe_miss"));
	sound_stop(asset_get("sfx_shovel_hit_heavy2"));
	sound_stop(asset_get("sfx_shovel_hit_heavy1"));
	sound_stop(asset_get("sfx_shovel_hit_med1"));
	sound_stop(asset_get("sfx_shovel_hit_med2"));
	sound_stop(asset_get("sfx_shovel_hit_light1"));
	sound_stop(asset_get("sfx_shovel_hit_light2"));
	sound_stop(asset_get("sfx_blow_medium1"));
	sound_stop(asset_get("sfx_blow_medium2"));
	
	
	with hit_player_obj {
		take_damage( player, player, -hit_damage);
		hitpause = false;
		state = PS_IDLE;
	}
}

if (hit_chance_var == 28) { // 19 + 9 = 28 needed for a NAT 20
	
	print_debug("CRIT!!!!!");
	
	sound_play(sound_get("fe_crit"));
	with hit_player_obj {
		take_damage( player, player, hit_damage * 2);
	}
}

//print_debug("Rolled " + string(hit_chance_var-9+1) + "+9 dex, which is " + string(hit_chance_var-1+2) + ", needed " + string(13+armor_class_bonus+1));

number_to_beat = 13+armor_class_bonus+1;
}
*/