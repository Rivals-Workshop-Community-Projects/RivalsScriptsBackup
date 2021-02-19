// Called when one of our hitboxes hits a player.
//
// hit_player  = Which player was hit.
// my_hitboxID = The hitbox we hit them with.
// orig_knock  = Knockback given.

if my_hitboxID.attack == AT_BAIR {
	hsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_HSPEED)*spr_dir
	vsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_VSPEED)
	old_hsp = hsp;
	old_vsp = vsp;
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

if my_hitboxID.attack = AT_DSPECIAL and my_hitboxID.hbox_num = 1 {
	window = 3;
	window_timer = 0;
	hit_player_obj.grabbed = 1;
	grabbedid = hit_player_obj;
	destroy_hitboxes();
}

if my_hitboxID.attack == AT_DAIR {
	hsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_HSPEED)*spr_dir
	vsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_VSPEED)
	old_hsp = hsp;
	old_vsp = vsp;
}