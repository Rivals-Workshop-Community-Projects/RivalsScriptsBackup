//haha
if(have_armor){
	have_armor = false;
	var kb = get_kb_formula(get_player_damage(player), knockback_adj, 1.0, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale);
	var angle = get_hitbox_angle( enemy_hitboxID );
	old_hsp += lengthdir_x(kb, angle)

}
else if(instance_exists(right_bubble)) right_bubble.destroyed = true

if(enemy_hitboxID.type == 1) {
  if(hit_player_obj.static_pull > 0){
    static += 30;
    static = clamp(static, 0, 100);
    static_cooldown = static_cooldown > 60 ? static_cooldown : 60;
  }
  hit_player_obj.static_pull = 0;
}

n_times_got_hit++;