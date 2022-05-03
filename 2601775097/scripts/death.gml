//death

glide_stamina = glide_stamina_max;
glide_ui = false;

apply_motion_trail = false;
is_accel_trail = false;

if (theikos_type != 2) mp_current = 100;
window_loops = 0;
bar_grabbed_id = noone;
skill_cancel_timer = 0;

burnbuff_active = false;
leap_used = false;
blast_used = false;
accel_used = false;
lightbuff_active = false;

if (od_cast <= 1) od_current /= 2;
else od_current = 0;
od_cast = 0;