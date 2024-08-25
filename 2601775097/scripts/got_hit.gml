//got_hit

menu_active = false;
window_loops = 0;
bar_grabbed_id = noone;
skill_cancel_timer = 0;

apply_motion_trail = false;
is_accel_trail = false;

//if burning fury's buff is about to be used but bar gets hit, disable the buff as if he used it
if (burnbuff_active && (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && state_cat == SC_HITSTUN) 
switch (attack)
{
    case AT_USTRONG: case AT_FSTRONG: case AT_DSTRONG: case AT_NTHROW: case AT_NSPECIAL_AIR: case AT_UTHROW: case 39: case AT_DSPECIAL_2: case AT_EXTRA_3: case AT_EXTRA_1:
        burnbuff_active = false;
        break;
    case AT_FTHROW: case AT_FSPECIAL_AIR:
        if (window > 6) burnbuff_active = false;
        break;
}

if (accel_vulnerable)
{
    hitstop = accel_flashed_time;
    hitstop_full = hitstop;
    old_hsp = 0;
    old_vsp = -12;
}

/*
if (lightbuff_active)
{
    if (!infinite_mp_mode) mp_current -= 10;
    if (state_cat == SC_HITSTUN) lightbuff_active = false;
}
*/
if (attack == skill[7].skill_attack && super_armor)
{
    super_armor = false;
    lightbuff_active = true;
    polaris_shots_left = polaris_shots_max;
    window = 4;
    window_timer = 0;
    spawn_hit_fx(x, y-32, fx_lightblow[1])
    sound_play(asset_get("sfx_boss_charge"))
    sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"))
}

leap_used = false;

blast_used = false;
blast_charge_color = false;
sound_stop(sfx_charge);

accel_used = false;
if (accel_flashed_time > 0 && !accel_vulnerable) accel_flashed_time = 0;

if (instance_exists(hook_chain_artc))
{
    with (obj_article1) if (player_id == other.id && state == "hook_chain")
    {
        window = 3;
        window_timer = 0;
    }
}

//anti-cheapie no stunlock
if (theikos_type == 2 && (orig_knock < soft_armor || super_armor) && state_cat != SC_HITSTUN)
{
    if (state == PS_PRATFALL)
    {
        set_state(PS_IDLE_AIR);
        has_walljump = true;
    }
    if (state == PS_PRATLAND)
    {
        set_state(PS_IDLE);
    }
    hitpause = false;
    hitstop = 0;
    hitstop_full = 0;
}