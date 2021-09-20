if(instance_exists(gyro)){
    with(gyro){
        sound_play(asset_get("sfx_blow_weak1"))
        spawn_hit_fx(x, y + 10, 301)
    }
    instance_destroy(gyro)
}
gyro_pickup = false
gyro_charge = 0
laser_charging = 0
gas = 10

if(attack == AT_USPECIAL){
    sound_stop(asset_get("sfx_ell_missile_loop"))
}