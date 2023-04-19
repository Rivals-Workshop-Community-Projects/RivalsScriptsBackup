//death.gml

shield_health = shield_health_max;
battery_vis = 0;
battery_vis_gain = 0;
battery_vis_timer = 0;
sound_stop(asset_get("sfx_boss_final_charge"))

var fobj = player_field_vars.field_obj;
//Check to see if the field exists.
if instance_exists(fobj)
{
    fobj.radius = player_field_vars.bounds[0] + 3;
    fobj.should_decay = true;
}

if(attack == AT_DSPECIAL){
    sound_stop(asset_get("sfx_plasma_field_loop"))
}else if(attack == AT_DSTRONG){
    sound_stop(asset_get("sfx_boss_final_charge"))
}