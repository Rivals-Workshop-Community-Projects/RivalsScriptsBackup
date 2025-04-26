//got_hit

if (state_cat != SC_HITSTUN) exit;

menu_active = false;
window_loops = 0;
bar_grabbed_id = noone;
skill_cancel_timer = 0;

apply_motion_trail = false;
is_accel_trail = false;

if (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND)
{
    //if burning fury's buff is about to be used but bar gets hit, disable the buff as if he used it
    if (burnbuff_active)
    {
        switch (attack)
        {
            case AT_USTRONG: case AT_FSTRONG: case AT_DSTRONG: case AT_NTHROW: case AT_NSPECIAL_AIR: case AT_UTHROW: case 39: case AT_DSPECIAL_2: case AT_EXTRA_3: case AT_EXTRA_1:
                burnbuff_active = false;
                break;
            case AT_FTHROW: case AT_FSPECIAL_AIR:
                if (window > 6) burnbuff_active = false;
                break;
        }
    }
    if (attack == skill[9].skill_attack && hook_charge > 0) hook_charge = 0;
}

if (accel_vulnerable)
{
    hitstop = accel_flashed_time;
    hitstop_full = hitstop;
    old_hsp = 0;
    old_vsp = -12;
}

leap_used = false;

blast_used = false;
charge_color = false;
sound_stop(sfx_charge);

power_uses = 0;

accel_used = false;
if (accel_flashed_time > 0 && !accel_vulnerable) accel_flashed_time = 0;

chasm_uses = 0;

//light hookshot chain
for (var i = 0; i < instance_number(obj_article1); i++)
{
    var obj = instance_find(obj_article1, i);
    if ("is_bar_artcmaster" in obj && obj.state == "hook_chain" && obj.player_id == self)
    {
        with (obj)
        {
            window = 3;
            window_timer = 0;
        }
        break;
    }
}