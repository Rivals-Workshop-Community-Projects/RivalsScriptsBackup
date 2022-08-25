
if (bike_charge = 0){
    draw_sprite(sprite_get("cool_battery"), 0, temp_x + -10, temp_y-30);
    draw_sprite(sprite_get("epic_meter"), 0, temp_x + 20, temp_y-24);
}if (bike_charge = 1){
    draw_sprite(sprite_get("cool_battery"), 1, temp_x + -10, temp_y-30);
    draw_sprite(sprite_get("epic_meter"), 1, temp_x + 20, temp_y-24);
}if (bike_charge = 2){
    draw_sprite(sprite_get("cool_battery"), 2, temp_x + -10, temp_y-30);
    draw_sprite(sprite_get("epic_meter"), 2, temp_x + 20, temp_y-24);
}if (bike_charge = 3){
    draw_sprite(sprite_get("cool_battery"), 3, temp_x + -10, temp_y-30);
    draw_sprite(sprite_get("epic_meter"), 3, temp_x + 20, temp_y-24);
}

if (slippery == 0){
    draw_sprite(sprite_get("slippery"), 0, temp_x + 185, temp_y-26);
}if (slippery >= 540){
    draw_sprite(sprite_get("slippery"), 1, temp_x + 185, temp_y-26);
}if (slippery < 540){
    if (slippery >= 480){
    draw_sprite(sprite_get("slippery"), 2, temp_x + 185, temp_y-26);
    }
}if (slippery < 480){
    if (slippery >= 420){
    draw_sprite(sprite_get("slippery"), 3, temp_x + 185, temp_y-26);
    }
}if (slippery < 420){
    if (slippery >= 360){
    draw_sprite(sprite_get("slippery"), 4, temp_x + 185, temp_y-26);
    }
}if (slippery < 360){
    if (slippery >= 300){
    draw_sprite(sprite_get("slippery"), 5, temp_x + 185, temp_y-26);
    }
}if (slippery < 300){
    if (slippery >= 240){
    draw_sprite(sprite_get("slippery"), 6, temp_x + 185, temp_y-26);
    }
}if (slippery < 240){
    if (slippery >= 180){
    draw_sprite(sprite_get("slippery"), 7, temp_x + 185, temp_y-26);
    }
}if (slippery < 180){
    if (slippery >= 120){
    draw_sprite(sprite_get("slippery"), 8, temp_x + 185, temp_y-26);
    }
}if (slippery < 120){
    if (slippery >= 60){
    draw_sprite(sprite_get("slippery"), 9, temp_x + 185, temp_y-26);
    }
}if (slippery < 60){
    if (slippery > 0){
    draw_sprite(sprite_get("slippery"), 10, temp_x + 185, temp_y-26);
    }
}


// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
/*
muno_event_type = 5;
user_event(14);
*/