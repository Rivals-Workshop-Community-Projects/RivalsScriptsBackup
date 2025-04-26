var _damage = get_player_damage(player);

if enemy_hitboxID.damage > 0 && enemy_hitboxID.kb_value > 0 && QD_Charge > 0{
    QD_damage += enemy_hitboxID.damage * (1+(_damage/100))
    QD_timer_trigger = 1;
    QD_timer = 90
    if enemy_hitboxID.damage > 1{
        sound_play(sound_get("hurt_med"),false,noone,0.8,1.5-(enemy_hitboxID.damage/20));  
        spawn_hit_fx(x-8, y-40, hfx_QD_hurt);
    }
}


