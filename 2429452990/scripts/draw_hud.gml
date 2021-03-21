draw_sprite( sprite_get( "wagnusmeter" ), -1, temp_x + 28, temp_y - 18);
draw_sprite( sprite_get( "wagnusmeter" ), -1, temp_x + 66, temp_y - 18);
draw_sprite( sprite_get( "wagnusmeter" ), -1, temp_x + 104, temp_y - 18);


if (wagnus_charges = 0){
    draw_sprite_ext( sprite_get( "wagnusmeterbar" ), 0, temp_x + 28, temp_y - 18, (wagnus_charge_time), 1, 0, c_white, 1 );
}


if (wagnus_charges > 0){
   draw_sprite_ext( sprite_get( "wagnusmeterbar" ), 0, temp_x + 28, temp_y - 18, 1, 1, 0, c_white, 1 );
}

if (wagnus_charges = 1){
    draw_sprite_ext( sprite_get( "wagnusmeterbar" ), 0, temp_x + 66, temp_y - 18, (wagnus_charge_time), 1, 0, c_white, 1 );
}

if (wagnus_charges > 1){
   draw_sprite_ext( sprite_get( "wagnusmeterbar" ), 0, temp_x + 66, temp_y - 18, 1, 1, 0, c_white, 1 );
}

if (wagnus_charges = 2){
    draw_sprite_ext( sprite_get( "wagnusmeterbar" ), 0, temp_x + 104, temp_y - 18, (wagnus_charge_time), 1, 0, c_white, 1 );
}



if (wagnus_charges > 2){
   draw_sprite_ext( sprite_get( "wagnusmeterbar" ), 0, temp_x + 104, temp_y - 18, 1, 1, 0, c_white, 1 );
}

draw_sprite( sprite_get( "wagnusframe" ), -1, temp_x + 26, temp_y - 18);

draw_sprite( sprite_get( "wagnusicon" ), -1, temp_x - 2, temp_y - 20);

if (wagnus_charges = 0){
draw_sprite( sprite_get( "wagnuswarning" ), warningflash, temp_x - 6, temp_y - 14);
}

if (tv_stat = -1){
draw_sprite( sprite_get( "hudtvjump" ), -1, temp_x + 176, temp_y - 22);
}

if (tv_stat = 1){
  draw_sprite( sprite_get( "hudtvspeed" ), -1, temp_x + 176, temp_y - 22);  
}

draw_sprite_ext( sprite_get( "minehud" ), 0, temp_x + 154, temp_y - 16, 1, 1, 0, c_white, 1 );

if (mine_exists = 1 || move_cooldown[AT_NSPECIAL] > 1){
draw_sprite_ext( sprite_get( "minehud" ), 0, temp_x + 154, temp_y - 16, 1, 1, 0, c_black, 0.85 );
}


user_event(11);