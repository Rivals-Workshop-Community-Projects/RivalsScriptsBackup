//got_hit

//strongs/charge attacks get reset
charge_attack = false;

//stop nspec aim sound
sound_stop(sfx_nspec_aim);

//fspec can be used again
fspec_used = false;

//getting hit reduces the time the marker stays on the field
if (instance_exists(artc_marker) && artc_marker.state == 1)
{
    artc_marker.active_time += 30;
    if (artc_marker.active_time >= 300) artc_marker.active_time = 299;
}

color_outline_rise = false;

if (has_rune("H") && attack == AT_DSPECIAL_2 && window == 2 && is_attacking)
{
    counter_success = true;
    sound_play(sound_get("sfx_orb_collect"));
    sound_play(asset_get("sfx_absa_jab1"));

    counter_damage = enemy_hitboxID.damage + get_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE)*0.75;
}
else counter_success = false;