// called when the character gets KO'd

// reset CDs

// reset Menu
/*
ds_list_clear(cd_pos);
ds_list_add(cd_pos,0,1,2,3,4);

for (var i = 0; i < 5; i += 1)
{
    menu[i] = false;
}
menu[0] = true;
*/



// debuff hitbox
/*
for ( var i = 0; i < array_length_1d(att); i += 1)
{
    for (var j = 0; j <= get_num_hitboxes( att[i] ); j += 1)
    {
        reset_hitbox_value( att[i], j, HG_DAMAGE );
        reset_hitbox_value( att[i], j, HG_BASE_KNOCKBACK );
        reset_hitbox_value( att[i], j, HG_KNOCKBACK_SCALING );
        reset_hitbox_value( att[i], j, HG_BASE_HITPAUSE );
    }
}

        dash_speed = dash_speed_ref;
        initial_dash_speed = initial_dash_speed_ref;
        walk_speed = walk_speed_ref;
        walk_accel = walk_accel_ref;
        short_hop_speed = short_hop_speed_ref;
        jump_speed = jump_speed_ref;
        djump_speed = djump_speed_ref;
        air_max_speed = air_max_speed_ref;
        air_accel = air_accel_ref;
        max_djumps = max_djumps_ref;
        dash_turn_accel = dash_turn_accel_ref;
        walljump_vsp = walljump_vsp_ref;
        gravity_speed = gravity_speed_ref;
        max_fall = max_fall_ref;
        fast_fall = fast_fall_ref;
        knockback_adj = knockback_adj_ref;
        wave_friction = wave_friction_ref;
        wave_land_adj = wave_land_adj_ref;
        moonwalk_accel = moonwalk_accel_ref;
        ground_friction = ground_friction_ref;
    
        reset_window_value( AT_USPECIAL, 2, AG_WINDOW_VSPEED )
*/


holding_turntable = false;
// destroy turntable
/*
with (obj_article1)
{
    if (player_id == other)
    {
        instance_destroy(self);  
    }
}
*/
cd_level = 0;


sound_play(sound_get("wait1"));



runeG_can_uspecial = true;