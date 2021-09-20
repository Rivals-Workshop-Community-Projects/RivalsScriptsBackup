
//Laser Properties
if(instance_exists(laser)){
    if(laser.sprite_index == sprite_get("laser")){
        laser_trail_fx = spawn_hit_fx(laser.x, laser.y, laser_trail)
    }else if(laser.sprite_index == sprite_get("laser_blue")){
        laser_trail_fx = spawn_hit_fx(laser.x, laser.y, laser_trail_blue)
    }
    laser_trail_fx.draw_angle = laser.proj_angle
    if(!laser_bounce && !laser.free){
        laser.sprite_index = sprite_get("laser_blue")
        laser.vsp = laser_saved_vsp * -1
        laser.proj_angle *= -1
        laser_new_bounce = true
        spawn_hit_fx(laser.x, laser.y, laser_fx_small)
        //laser hitbox changes
        laser.kb_angle = 135
        with(laser){
            sound_play(asset_get("sfx_clairen_tip_weak"))
        }
    }
    if(laser.proj_angle != 0 && laser.vsp == 0){
        instance_destroy(laser)
    }
}
if(instance_exists(laser_new)){
    if(laser_new.sprite_index == sprite_get("laser")){
        laser_trail_fx = spawn_hit_fx(laser_new.x, laser_new.y, laser_trail)
    }else if(laser_new.sprite_index == sprite_get("laser_blue")){
        laser_trail_fx = spawn_hit_fx(laser_new.x, laser_new.y, laser_trail_blue)
    }
    laser_trail_fx.draw_angle = laser_new.proj_angle
    if(!laser_bounce && !laser_new.free){
        laser_new.sprite_index = sprite_get("laser_blue")
        laser_new.vsp = laser_saved_vsp * -1
        laser_new.proj_angle *= -1
        laser_new_bounce = true
        spawn_hit_fx(laser_new.x, laser_new.y, laser_fx_small)
        //laser hitbox changes
        laser_new.kb_angle = 135
        with(laser_new){
            sound_play(asset_get("sfx_clairen_tip_weak"))
        }
    }
    if(laser_new.proj_angle != 0 && laser_new.vsp == 0){
        instance_destroy(laser_new)
    }
}

//gyro pickup mechanics
if(instance_exists(gyro)){
    move_cooldown[AT_DSPECIAL] = 2
    if(distance_to_object(gyro) < 30){
        pickup_able = true
    }else{
        pickup_able = false
    }
}

//laser charging
if(laser_charging < 160){
    laser_charging++
}

if(!free){
    if(gas < 10){
        gas += 0.1 
    }else{
        gas = 10
    }
}

if(state == PS_WALL_JUMP){
    gas = 10
}

if(attack != AT_USPECIAL || attack == AT_USPECIAL && window == 0 || state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL){
    sound_stop(gas_sfx)
}

if(char_height != 52){
    if(attack != AT_USTRONG && attack != AT_UAIR && attack != AT_UTILT || state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL){
        char_height = lerp(char_height, 52, 0.5);
    }
}