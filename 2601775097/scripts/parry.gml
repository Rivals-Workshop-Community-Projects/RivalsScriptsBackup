//parry

if (pHitBox.orig_player == player) exit;

if (mp_cur < 100) mp_cur += 25;
mp_mini_timer = mp_mini_timer_set;

if (can_overdrive && od_cast == 0) od_cur += 10;


//AI stuff
if (is_cpu)
{
    bar_should_parry += (190-temp_level*10)*2; //lvl 1: 360 frames | lvl 9: 200 frames
}