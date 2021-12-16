// called when the character gets KO'd

mp_current = mp_spawn;

glide_time = glide_time_max;

burningfury_active = false;
burningfury_target = noone;

accelblitz_active = false;
accelblitz_active_timer = false;
accelblitz_done_once = false;
accelblitz_post_timer = 0;
if (accel_vulnerability) accel_vulnerability = false;
if (instance_exists(artc_accel_indicator) instance_destroy(artc_accel_indicator);

burst_count_start = false;
burst_count = -1;

powersmash_afterburn = false;
powersmash_aftertime = 0;

polaris_active = false;

hookshot_speedboost = false;
hookshot_launch = false;

searingdescent_id = noone;

runeG_blitzjump = false;

with (oPlayer)
{
    lightstun_timer = -1;
    lightstun = false;
    lightstun_pre_stun = false;
}
lightstun_parried = false;

//air dash
runeA_dash = false;
runeA_dash_timer = runeA_dash_time_max;
runeA_dash_cool_active = false;
runeA_dash_cooldown = runeA_dash_cooldown_max;

god_time = god_time_reset;
godpower = false;
od_current /= 2;
od_gainable = true;
od_already_active = false;