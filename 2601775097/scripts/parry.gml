//parry

if (pHitBox.orig_player == player) exit;

if (mp_current < 100) mp_current += 25;
mp_mini_timer = mp_mini_timer_set;

if (can_overdrive && od_cast == 0) od_current += 10;