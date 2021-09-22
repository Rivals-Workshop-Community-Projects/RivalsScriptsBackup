//sound_play(sfx_minecraft_hit, false, noone, 1, 1);

if (phone_attacking && attack == AT_TAUNT){
	taunt_stored = 1;
}



if (state_cat != SC_HITSTUN && attack == AT_NAIR && hitpause){
	var angle = get_hitbox_angle(enemy_hitboxID);
	var stren = enemy_hitboxID.kb_value;
	var h = self;
	with enemy_hitboxID if attack == AT_DSPECIAL && hbox_num == 1 with player_id if "muno_char_id" in self && muno_char_id == h.muno_char_id stren += get_player_damage(h.player) * other.kb_scale * 0.12 * h.knockback_adj;
	
	// BKB + damage * knockback_scaling * 0.12 * knockback_adj
	
	old_hsp = lengthdir_x(stren, angle);
	old_vsp = lengthdir_y(stren, angle);
	
	shield_time = 0;
	blocked_hit = true;
	has_hit = true;
	
	sound_play(sfx_minecraft_shield[clamp(random_func(0, 5, true), 0, 4) + 1]);
}



if attacking && attack == AT_EXTRA_3 && window > 1{
	var break_sound = true;

	// return;
	
	switch(items[held_item]).count_type{
	    case 0: //One-time use
	        items[held_item].count++;
	        break;
	    case 1: //Three uses, item count
	        break;
	    case 2: //Three uses, item durability
	        break;
	    case 3: //One-time use, mercy whiff
	        if has_hit items[held_item].count++;
	        items[held_item].count++;
	        break;
	}
	
	if items[held_item].count < items[held_item].count_max return;
	
	if break_sound sound_play(sfx_minecraft_break_tool);
	with items[held_item]{
	    count = 0;
	}
	held_item = IT_NOTHING;
}



if (attacking && attack == AT_NSPECIAL_AIR){//thorns
	if enemy_hitboxID.type == 1{
		hit_player_obj.hitstop_full *= 2;
		hitstop_full = hit_player_obj.hitstop_full;
	}
	else{
		hitstop_full = min(hitstop_full * 2, 20);
	}
}



if !array_equals(stopped_sounds, []){
	for (var i = 0; i < array_length(stopped_sounds); i++){
		sound_stop(stopped_sounds[i]);
	}
	stopped_sounds = [];
}



stored_death_message = "Steve was slain by " + (("muno_char_name" in hit_player_obj) ? hit_player_obj.muno_char_name : get_char_info(hit_player_obj.player, INFO_STR_NAME));
if ("steve_death_message" in hit_player_obj) stored_death_message = hit_player_obj.steve_death_message;
if ("steve_death_message" in enemy_hitboxID) stored_death_message = enemy_hitboxID.steve_death_message;
if (hit_player_obj == self) stored_death_message = "Steve blew up";



if (abs(angle_difference(get_hitbox_angle(enemy_hitboxID), 270)) < 45) with(asset_get("obj_article_platform")) if (player_id == other && y > other.y - 10 && abs(x - other.x) < 128){
	break_stage = break_timer_max + 1;
	parried_flag = true;
}