//Kirby stuff below

if !(get_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH) == 01010100010100100101010101001101){
    exit;
}

//Cooldown coords
    
cooldown_y = y-98-char_height;
cooldown_x = x-25;
cooldownfillamount = floor((18/(cooldown_mid - cooldown_min)) * (cooldown_mid - rain_cooldown) + 2) * 2 - 1;
cooldownfillborderamount = cooldownfillamount + 2;
cooldownpopframe = ease_linear(3, 10, cooldown_min - rain_cooldown, cooldown_min)

if (sideways_cooldown_timer > 0){
    switch(sideways_cooldown_timer){
        case 12:
            cooldown_x = x-27;
            break;
        case 11:
            cooldown_x = x-23;
            break;
        case 10:
            cooldown_x = x-31;
            break;
        case 9:
            cooldown_x = x-19;
            break;
        case 8:
            cooldown_x = x-27;
            break;
        case 7:
            cooldown_x = x-23;
            break;
    }
}



//Cooldown

if (rain_cooldown > cooldown_mid && rain_cooldown < cooldown_max - 4){ //Start anim
    if (rain_cooldown - cooldown_mid <= 3){
        draw_sprite(cooldown, 1, cooldown_x, cooldown_y);
    }else{
        draw_sprite(cooldown, 0, cooldown_x, cooldown_y);
    }
} else if (rain_cooldown > cooldown_min && rain_cooldown <= cooldown_mid){ //Fill
    draw_sprite(cooldown, 2, cooldown_x, cooldown_y);
    draw_sprite_part(cooldownfillborder, 0, 3, 0, cooldownfillborderamount, 34, cooldown_x + 3, cooldown_y);
    draw_sprite_part(cooldownfill, 0, 3, 0, cooldownfillamount, 34, cooldown_x + 3, cooldown_y);
}else if (rain_cooldown > 0 && rain_cooldown <= cooldown_min){ //End anim
    draw_sprite(cooldown, cooldownpopframe, cooldown_x, cooldown_y);
}



//Draw no entry sign

if (sideways_cooldown_timer > 0){
    draw_sprite(cooldownfail,sideways_cooldown_timer / 2-1,x-25,y-98-char_height);
}