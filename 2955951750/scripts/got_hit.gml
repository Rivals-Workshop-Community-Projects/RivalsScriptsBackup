//got_hit.gml

if (move_cooldown[AT_USPECIAL] > 0){
    move_cooldown[AT_USPECIAL] = 0;
}

nspec_vfx = noone;
nspec_air_frame = -1;
nspec_air_timer = -1;

if(attack == AT_DSPECIAL){
    sound_stop(asset_get("sfx_plasma_field_loop"))
}else if(attack == AT_DSTRONG){
    sound_stop(asset_get("sfx_boss_final_charge"))
}

fspecial_wall_bounces = 0;
