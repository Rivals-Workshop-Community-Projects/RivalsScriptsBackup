if kaioken && enemy_hitboxID.damage > 0 take_damage(player, enemy_hitboxID.player, 2);

voice_play(VB_HURT);



#define voice_play(idx)

cur_vc = idx;
user_event(0);