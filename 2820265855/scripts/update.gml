swordfollow.x = lerp(swordfollow.x, x-0*spr_dir, 0.3);
swordfollow.y = lerp(swordfollow.y, y-50, 0.3);

//In Update:
if get_player_color(player) = 18 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

//In Update: (for each slot)
color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 18, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
}

//In Update: (for each slot)
color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 18, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

//In Update: (for each slot)
color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 18, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

if (dspecial_sfx >= 1){
    dspecial_sfx--
}
if (dspecial_sfx <= 0){
    dspecial_sfx = 0
}

if (powerpoints <= 63){
  powerpoints_regen++;
  if (powerpoints_regen == 30){
    powerpoints_regen = 0;
    powerpoints += 1;
  }
}

if (powerpoints <= 0){
powerpoints = 0
}

if (trigger_delay > 0){
trigger_delay--; //countdown for delay
}
else if (trigger_delay == 0){
create_hitbox( AT_EXTRA_1, 1, trigger_x, trigger_y ); //create new hitbox after delay
trigger_delay = -1; //to make sure it doesnt keep triggering
}

if (attack == AT_JAB or attack == AT_UTILT or attack == AT_FSTRONG or attack == AT_DSTRONG)
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
  swordfloat = 1
}
else if (attack == AT_JAB or attack == AT_UTILT or attack == AT_FSTRONG or attack == AT_DSTRONG){
  swordfloat = 0
}
