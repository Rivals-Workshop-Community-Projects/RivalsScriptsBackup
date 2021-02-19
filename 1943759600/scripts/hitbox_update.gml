if attack == AT_NSPECIAL {
	player_id.move_cooldown[AT_NSPECIAL] = max(player_id.move_cooldown[AT_NSPECIAL], 2)
	
	
	if player_id.special_pressed {
		with (player_id) {
			if attack == AT_NSPECIAL && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) {
			window = 4;
			window_timer = 0;
			}
			gem_ins = instance_create(other.x, other.y - 50, "obj_article1");
			if gem_spawn_stun_cooldown > 0 move_cooldown[AT_NSPECIAL_2] = gem_spawn_stun_cooldown;
			if gem_spawn_dash_cooldown > 0 move_cooldown[AT_NSPECIAL_AIR] = gem_spawn_dash_cooldown;	
			gem_ins.player_id = id;
		}
		instance_destroy();
	}

}

///if attack == AT_NSPECIAL_AIR {
    //kb_angle = point_direction(0,0, player_id.hsp, player_id.vsp)
//}