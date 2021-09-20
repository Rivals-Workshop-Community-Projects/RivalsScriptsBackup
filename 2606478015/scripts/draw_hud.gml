if(pickup_able && instance_exists(gyro) && !gyro.gyro_pickup){
    draw_sprite(sprite_get("special_icon"), gyro.state_timer / 16, temp_x + 186, temp_y - 16)
}

draw_sprite(sprite_get("gas"), (gas * 1.5) - 0.1, temp_x + 30, temp_y - 8,)
