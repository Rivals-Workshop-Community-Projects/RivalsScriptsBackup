// Called when one of our hitboxes hits a player.
//
// hit_player  = Which player was hit.
// my_hitboxID = The hitbox we hit them with.
// orig_knock  = Knockback given.

if my_hitboxID.attack == AT_DAIR && check_if_bg_is_in_an_attack_state_and_has_not_been_parried() {
	hsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num,  HG_PROJECTILE_HSPEED)*spr_dir
	vsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num,  HG_PROJECTILE_VSPEED)
	old_hsp = hsp;
	old_vsp = vsp;
}




if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	if my_hitboxID.attack == AT_DSPECIAL  {
	var damdiff = min(get_player_damage(player) - get_player_damage(hit_player_obj.player), dspecial_limit)
	if damdiff > 0 {
		take_damage(hit_player_obj.player, player, damdiff);
		hit_player_obj.archen_dspecial_damage += damdiff;
		hit_player_obj.archen_dspecial_cooldown = 60;
	}
}

if my_hitboxID.attack == AT_USPECIAL {
	var dr = point_direction(0, 0, hit_player_obj.hsp, hit_player_obj.vsp)
	if dr > 225 && dr < 315 {hit_player_obj.orig_knock *= BOULDER_SPIKE_BONUS;
	//sound_play(asset_get("mfx_player_ready"));
	}
}

if my_hitboxID.attack == AT_FSPECIAL && !was_parried && hit_player_obj.state_cat == SC_HITSTUN {
	attack_end();
	destroy_hitboxes();
	set_attack(AT_FSPECIAL_2);
	spawn_hit_fx(x, y, hit_fx_create(sprite_get("fspecial_fx"), 15))
	//	vsp = -(y-(hit_player_obj.y-hit_player_obj.char_height/2))
	y = ((hit_player_obj.y-hit_player_obj.char_height/2))
}
}


original_knock = hit_player_obj.orig_knock

if (power_state == POWER_STATE_UP) {
    hit_player_obj.orig_knock = original_knock * power_up_mult
    debug_last_mult = power_up_mult
	
	take_damage(hit_player_obj.player, player, floor(my_hitboxID.damage*(power_up_damage_mult-1))  )
} else if (power_state == POWER_STATE_DOWN) {
    hit_player_obj.orig_knock = original_knock * power_down_mult
    debug_last_mult = power_down_mult
	var nerf = 
	take_damage(hit_player_obj.player, player, ceil(my_hitboxID.damage*(power_down_damage_mult-1))  )
} else {
    debug_last_mult = 1
}

debug_last_knock = hit_player_obj.orig_knock

// Handle boulder
if (attack == AT_USPECIAL) {
    boulder_alive = false;
}



#define check_if_opponent_is_in_hitstun
return (hit_player_obj.state_cat == SC_HITSTUN);


#define check_if_bg_is_in_an_attack_state_and_has_not_been_parried
return ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && !was_parried );
