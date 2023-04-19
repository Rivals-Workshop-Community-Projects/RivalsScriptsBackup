//post-draw

if(state == PS_SPAWN){
Team_Member = 1;
InkTank = 100;
MaxInkTank = 100;
shown_meter_var = 100;
shown_old_meter_var = shown_meter_var;
}


shader_start();
if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack == AT_EXTRA_1{
draw_sprite_ext(sprite_get("Inkmeter_follow"), 0 , temp_x+194, temp_y-22, 2, 2, 90 + (shown_old_meter_var / MaxInkTank)* 270, c_white, 1);
PrevInkTank = InkTank
}else{
draw_sprite_ext(sprite_get("Inkmeter_follow"), 0 , temp_x+194, temp_y-22, 2, 2, 90 + (PrevInkTank / MaxInkTank)* 270, c_white, 1);
}


draw_sprite_ext(sprite_get("Inkmeter"), 0 , temp_x+194, temp_y-22, 2, 2, 90 + (shown_meter_var / MaxInkTank)* 270, c_white, 1);


if(InkTank < 100){
draw_sprite_ext(sprite_get("Inkmeter_empty"), (shown_meter_var / MaxInkTank)* 3 , temp_x+194, temp_y-22, 2, 2, 0, c_white, 1);
}

draw_sprite_ext(sprite_get("meter"), 0 , temp_x-20, temp_y-56, 2, 2, 0, c_white, 1);

if(Team_Member = 1){
    draw_sprite_ext(sprite_get("bobble"), 0 , temp_x+130, temp_y-26, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("headset"), 0 , temp_x+158, temp_y-26, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("specs"), 0 , temp_x+180, temp_y-40, 2, 2, 0, c_white, 1);
} else if (Team_Member = 2){
    draw_sprite_ext(sprite_get("bobble"), 0 , temp_x+158, temp_y-26, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("headset"), 0 , temp_x+180, temp_y-40, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("specs"), 0 , temp_x+130, temp_y-26, 2, 2, 0, c_white, 1);
} else if (Team_Member = 3){
    draw_sprite_ext(sprite_get("bobble"), 0 , temp_x+180, temp_y-40, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("headset"), 0 , temp_x+130, temp_y-26, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("specs"), 0 , temp_x+158, temp_y-26, 2, 2, 0, c_white, 1);
}





shader_end();