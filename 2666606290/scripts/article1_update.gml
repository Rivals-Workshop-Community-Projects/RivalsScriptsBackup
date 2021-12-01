image_index += 0.2;
if (image_index > 8){
sprite_index = sprite_get("field");
} 
if !field_sound{
sound_play( asset_get( "sfx_plasma_field_loop" ),true);
field_sound = true;
}

if (player_touching)
{
    with (player_id){
    elec_vfx = true;
    // omen = true;
    electrified = true;
    
    movement_multiplier = 1.25;
    // Ground movement
    walk_speed          = 3 * movement_multiplier;		// 3    -  4.5
    initial_dash_speed  = 5 * movement_multiplier;		// 4    -  9
    dash_speed          = 6 * movement_multiplier;		// 5    -  9

        
    // Air movement
    air_max_speed       = 4 * movement_multiplier;  		// 3    -  7
    wave_land_adj       = 1.4;
    }
}

//sound_play(asset_get("sfx_clairen_dspecial_counter_active"));