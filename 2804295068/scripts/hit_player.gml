if my_hitboxID.player_id != self exit;
if my_hitboxID.orig_player_id != self exit;

if (my_hitboxID.attack == AT_USPECIAL_2){
    take_damage (player, -1, 4)
}

if (my_hitboxID.attack == AT_DSTRONG){
	if (!hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) {
		if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
			hit_player_obj.split_grabbed1 = id;
		}
		if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
			hit_player_obj.split_grabbed2 = id;
		}
	}
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.torched == false) {
	if (hit_player_obj.snow_pea_chill_id == noone) sound_play (sound_get ("frozen"));
	if (!hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) {
		hit_player_obj.snow_pea_chill_id = id;
		hit_player_obj.snow_pea_chill_time = min(hit_player_obj.snow_pea_chill_time + 600, 600);
	}
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2) 
|| (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) 
|| (my_hitboxID.attack == AT_USPECIAL_2) || (my_hitboxID.attack == AT_EXTRA_2) 
|| (my_hitboxID.type == 2 && "torched" in my_hitboxID && my_hitboxID.torched == true && my_hitboxID.attack != AT_FSPECIAL_2){
	hit_player_obj.snow_pea_chill_id = noone;
	hit_player_obj.snow_pea_chill_time = 0;
}

if (my_hitboxID.attack == AT_FAIR){
	hit_player_obj.threepeater_stack = min(hit_player_obj.threepeater_stack, 2);
	var player_damage = get_player_damage(hit_player_obj.player);
	var stack_adj = -1 + hit_player_obj.threepeater_stack;
	
	hit_player_obj.orig_knock = get_kb_formula(player_damage, hit_player_obj.knockback_adj, 1.0, my_hitboxID.damage, 
	my_hitboxID.kb_value + stack_adj, 
	my_hitboxID.kb_scale + stack_adj*0.2);
	
	hit_player_obj.hitstop = get_hitstop_formula(player_damage, my_hitboxID.damage, 
	my_hitboxID.hitpause + stack_adj*2, 
	my_hitboxID.hitpause_growth + stack_adj*0.1, 
	my_hitboxID.extra_hitpause);
	
	hit_player_obj.hitstun = get_hitstun_formula(player_damage, hit_player_obj.knockback_adj, 1.0, my_hitboxID.damage, my_hitboxID.kb_value, my_hitboxID.kb_scale) * (0.7 + stack_adj*0.3);

	hit_player_obj.threepeater_stack++;
}