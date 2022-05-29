//haha
if(have_armor) have_armor = false;

if(enemy_hitboxID.type == 1) {
  if(hit_player_obj.static_pull > 0){
    static += 50;
    static = clamp(static, 0, 100);
    static_cooldown = static_cooldown > 60 ? static_cooldown : 60;
  }
  hit_player_obj.static_pull = 0;
}

n_times_got_hit++;