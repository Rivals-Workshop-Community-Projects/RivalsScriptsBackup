//death

glide_stamina = glide_stamina_max;
glide_ui = false;

apply_motion_trail = false;
is_accel_trail = false;

if (theikos_type != 2) mp_cur = 100;
window_loops = 0;
bar_grabbed_id = noone;
skill_cancel_timer = 0;

burnbuff_active = false;
leap_used = false;
blast_used = false;
power_uses = 0;
accel_used = false;
if (lightbuff_active) cancel_polaris = true;
hook_charge = 0;
chasm_uses = 0;

if (od_cast <= 1) od_cur /= 2;
else od_cur = 0;
od_cast = 0;

//sets bibically accurate bar to appear on respawn
if (alt_cur == 16 && get_match_setting(SET_SEASON) == 3 && get_player_stocks(player) > 1) bibical = true;