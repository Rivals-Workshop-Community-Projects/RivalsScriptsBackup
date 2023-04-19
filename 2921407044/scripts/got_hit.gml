// Prevent laser noise from nspecial if he gets hit
    sound_stop(sound_get( "laser_start" ));

//Reset Uspecial cooldown manually
move_cooldown[AT_USPECIAL] = 0;

if((attack == AT_NSPECIAL || attack == AT_NSPECIAL_2) && 
instance_exists(sound_get("laser_start"))){
    sound_stop(sound_get("laser_start"));
}