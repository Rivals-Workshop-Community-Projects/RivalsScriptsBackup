if (attack == AT_JAB && window == 4) {
	var hit_type = get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_HITBOX_TYPE);
	if (hit_type == 2) {
		enemy_hitboxID.hsp *= -1;
	}
}
    sound_stop(sfx_star_allies_gooey_flicker_lick)


if (attack == AT_JAB && window == 6) {
	var hit_type = get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_HITBOX_TYPE);
	if (hit_type == 2) {
		enemy_hitboxID.hsp *= -1;
	}
}
sound_stop(sfx_star_allies_gooey_flicker_lick)

if (attack == AT_DSPECIAL && (state == PS_HITSTUN || state == PS_HITSTUN_LAND)){
	if(instance_exists(grabbed_player_obj)){
		with(grabbed_player_obj){
			visible = true;
		}
		grabbed_player_obj = noone;
	}
}