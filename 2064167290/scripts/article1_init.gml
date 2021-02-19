//article1_init


can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

free = false










is_held = player_id.holding_turntable;





step = 0;

step_life = 0;

uspecial = false;
uspecial_timer = 0;
sprite_index = sprite_get("nothing");

destroyed = false;

can_hit = true;
can_be_hit = true;
cbh_timer = 15;

depth = player_id.depth - 1;

col = player_id.cd_level;




uspecial_damage = 4;



switch (col){
        case 0:// black
            grav = 0.35;
            air_fric = 0.02;
            grd_fric = 0.9;
            PV = uspecial_damage;
        break;
        case 1:// blue
            grav = 0.35;
            air_fric = 0.02;
            grd_fric = 0.6;
            PV = 9;
        break;
        case 2:// green
            grav = 0.32;
            air_fric = 0.02;
            grd_fric = 1;
            PV = 12;
        break;
        case 3: // yellow
            grav = 0.02;
            air_fric = 0;
            grd_fric = 0.4;
            PV = 10;
        break;
        case 4: // orange
            grav = 0.3;
            air_fric = 0.01;
            grd_fric = 0.9;
            PV = 1;
        break;
        case 5: //  red
            grav = 0.35;
            air_fric = 0.02;
            grd_fric = 0.9;
            PV = 12;
        break;
        case 6: // purple
            grav = 0.4;
            air_fric = 0.01;
            grd_fric = 0.9;
            PV = 15;
        break;
    }

if (player_id.runeE)
{
    PV += uspecial_damage;
}

destroy_effect = hit_fx_create( sprite_get("turntable_destroy"), 20 );

// RUNE
runeI_timer = 0;




//cd_destroy_effect = hit_fx_create( player_id.cd_col[|var_col], 60 );


// I know this is a very bad way to do it, but i'm pretty sure hitbox_init and hitbox_update are bugged
// they only work on projectiles
// just like when you try to use create_hitbox, it only works with projectils too.

// buff hitbox


//player_id.boost_update = true;

/*


with (player_id)
{
    if (var_col == 0) // JUMP
    {
        jump_speed = jump_speed_jmp;
        short_hop_speed = short_hop_speed_jmp;
        djump_speed = djump_speed_jmp;
        air_max_speed = air_max_speed_jmp;
        air_accel = air_accel_jmp;
        max_djumps = max_djumps_jmp;
        walljump_vsp = walljump_vsp_jmp;
        gravity_speed = gravity_speed_jmp;
        max_fall = max_fall_jmp;
        fast_fall = fast_fall_jmp;
        air_dodge_speed = air_dodge_speed_jmp;
        wave_friction = wave_friction_jmp;
        
        set_window_value( AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13);
        
    }
    if (var_col == 1) // SPEED
    {
        dash_speed = dash_speed_spd;
        initial_dash_speed = initial_dash_speed_spd;
        walk_speed = walk_speed_spd;
        walk_accel = walk_accel_spd;
        short_hop_speed = short_hop_speed_spd;
        jump_speed = jump_speed_spd;
        djump_speed = djump_speed_spd;
        dash_turn_accel = dash_turn_accel_spd;
        walljump_vsp = walljump_vsp_spd;
        wave_friction = wave_friction_spd;
        wave_land_adj = wave_land_adj_spd;
        moonwalk_accel = moonwalk_accel_spd;
        ground_friction = ground_friction_spd;
        
        set_window_value( AT_USPECIAL, 2, AG_WINDOW_VSPEED, -7);
    }
    if (var_col == 2) // SHIELD
    {
         for ( var i = 0; i < array_length_1d(att); i += 1)
        {
            for (var j = 0; j <= get_num_hitboxes( att[i] ); j += 1)
            {
                set_hitbox_value( att[i], j, HG_DAMAGE, get_hitbox_value( att[i], j, HG_DAMAGE) * 0.5)
                
                set_hitbox_value( att[i], j, HG_KNOCKBACK_SCALING, get_hitbox_value( att[i], j, HG_KNOCKBACK_SCALING) * 0.7 );
            }
        }
        
        knockback_adj = knockback_adj_shld;
        jump_speed = jump_speed_shld;
        djump_speed = djump_speed_shld;
        short_hop_speed = short_hop_speed_shld;
        dash_speed = dash_speed_shld;
        wave_friction = wave_friction_shld;
        wave_land_adj = wave_land_adj_shld;
        air_accel = air_accel_shld;
        air_max_speed = air_max_speed_shld;
        initial_dash_speed = initial_dash_speed_shld;
        air_dodge_speed = air_dodge_speed_shld;
        
    }
    
    if (var_col == 3) // BUSTER
    {
        for ( var i = 0; i < array_length_1d(att); i += 1)
        {
            for (var j = 0; j <= get_num_hitboxes( att[i] ); j += 1)
            {
                // damage
                set_hitbox_value( att[i], j, HG_DAMAGE, get_hitbox_value( att[i], j, HG_DAMAGE) * 1.35)
                
                // knockback
                set_hitbox_value( att[i], j, HG_KNOCKBACK_SCALING, get_hitbox_value( att[i], j, HG_KNOCKBACK_SCALING) / 2 );
                
                set_hitbox_value( att[i], j, HG_BASE_KNOCKBACK, get_hitbox_value( att[i], j, HG_BASE_KNOCKBACK) * 0.7 );
   
   
                // hitlag
                set_hitbox_value( att[i], j, HG_BASE_HITPAUSE, get_hitbox_value( att[i], j, HG_BASE_HITPAUSE) * 1.35);
            }
        }
    }
    
    if (var_col == 4) // SMASH
    {
        for ( var i = 0; i < array_length_1d(att); i += 1)
        {
            for (var j = 0; j <= get_num_hitboxes( att[i] ); j += 1)
            {
                
                // damage
                set_hitbox_value( att[i], j, HG_DAMAGE, get_hitbox_value( att[i], j, HG_DAMAGE) * 0.4)
                
                // knockback
                set_hitbox_value( att[i], j, HG_BASE_KNOCKBACK, get_hitbox_value( att[i], j, HG_BASE_KNOCKBACK) * 1.3 );
                
                set_hitbox_value( att[i], j, HG_KNOCKBACK_SCALING, get_hitbox_value( att[i], j, HG_KNOCKBACK_SCALING) * 1.6 );
            }
        }
        
    }
}












