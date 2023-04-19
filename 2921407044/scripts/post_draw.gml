// post draw.gml

//Nspecial 2 - Aiming Code for Sprite Drawing
if(attack == AT_NSPECIAL_2 && (state == PS_ATTACK_AIR || state = PS_ATTACK_GROUND)){
    shader_start();
    // Set master draw angle based on if aiming or already shot
    var draw_angle = 0;
    if(window == 1){ // Updates while player is aiming
        //Determine player's inputted joypad angle for the aim. This is the same code from attack update.
   if (!joy_pad_idle) {draw_angle = joy_dir;} // Usual Case, player aiming with joy pad.
   if(joy_pad_idle && (spr_dir = 1)){draw_angle = 0;} // Facing right with no input
   if(joy_pad_idle && (spr_dir = -1)){draw_angle = 180;} // Facing left with no input
    }
    if(window >= 2){
        draw_angle = nspecial_direction; // from attack update, will freeze the angle to prevent input after shooting
    }
    
// Handle head drawing logic. There is reduced angles on looking behind
    var head_draw_direction = 1; // Default to 1
    var head_draw_angle = 0;
    if(spr_dir == 1){ // Facing Right
        //Aiming Left - // 2nd and 3rd quadrant of Unit Circle
        if(draw_angle >= 90 && draw_angle <= 270){
            head_draw_direction = -1;
            head_draw_angle = clamp(draw_angle,150,210); // Between 150 / 210 degrees
        }
        //Aiming Right -  //1st and 4th quadrant of Unit Circle
        if(draw_angle <= 90 || draw_angle >= 270){
            head_draw_direction = 1;
            if(draw_angle <= 90){head_draw_angle = clamp(draw_angle,0,45);}
            if(draw_angle >= 270){head_draw_angle = clamp(draw_angle,315,360);}
        }
    }
    if(spr_dir == -1){ // Facing Left
        //Aiming Left - // 2nd and 3rd quadrant of Unit Circle
        if(draw_angle >= 90 && draw_angle <= 270){
            head_draw_direction = 1;
            head_draw_angle = clamp(draw_angle,135,225);
        }
        //Aiming Right -  //1st and 4th quadrant of Unit Circle
        if(draw_angle <= 90 || draw_angle >= 270){
            head_draw_direction = -1;
            if(draw_angle <= 90){head_draw_angle = clamp(draw_angle,0,30);}
            if(draw_angle >= 270){head_draw_angle = clamp(draw_angle,330,360);}
        }
    }
    // Draw head function - attached to a window so it does not draw after attack
    if(window != 0){
    draw_sprite_ext(sprite_get("nspecial_aim_head"),1, x + (5*spr_dir), y-58, 1, head_draw_direction * spr_dir, head_draw_angle, c_white, 1 );
    }
    // Handle Shotgun Drawing Logic - Drawn after head so it is on top
    if(window == 1 || window ==2) {//Use aim image on index 0
    draw_sprite_ext(sprite_get("nspecial_aim_shotgun"),0, x, y-50, 1, head_draw_direction * spr_dir, draw_angle, c_white, 1 );
    }
    
    if(window >= 3){ // Use recoil image on index 1
        draw_sprite_ext(sprite_get("nspecial_aim_shotgun"),1, x, y-50, 1, head_draw_direction * spr_dir, draw_angle, c_white, 1 );
    }
    
    // Muzzle Flash Effect
    if(window == 2 && window_timer == 1){
        var x_offset_muzzle = x + lengthdir_x(60, draw_angle);
        var y_offset_muzzle = y + lengthdir_y(75, draw_angle) - 50 ;
        spawn_hit_fx( x_offset_muzzle, y_offset_muzzle, 14); // 14 - little break effect
        //sound_play(asset_get( "mfx_star" ),false,noone,1,.5); // soundID,looping,panning,volume,pitch
    }
    
    shader_end();
}

//Nspecial_2 Code for drawing the //Laser Sight
    if(attack == AT_NSPECIAL_2 && window == 1 && window_timer >= 15){
    shader_start();
    // Set the distance for the base line
    x_offset_laser = x + lengthdir_x(75, draw_angle);
    y_offset_laser = y + lengthdir_y(75, draw_angle) - 50 ;
    // set the distance for the the offset laser target "pointer"
    x_offset_laser_target = x + lengthdir_x(150 + 75, draw_angle);
    y_offset_laser_target = y + lengthdir_y(150 + 75, draw_angle) - 50 ;
    // Draw larger main portion
    draw_sprite_ext(sprite_get("laser_base"),1, x_offset_laser, y_offset_laser, 1.2, 1, draw_angle, c_white, .5 );
    draw_sprite_ext(sprite_get("laser_target"),1, x_offset_laser_target, y_offset_laser_target, 1, 1, draw_angle, c_white, .5 );
    // Draw the smaller inside to overlay transparency
    draw_sprite_ext(sprite_get("laser_base"),1, x_offset_laser, y_offset_laser, .7, .5, draw_angle, c_white, .75 );
    draw_sprite_ext(sprite_get("laser_target"),1, x_offset_laser_target, y_offset_laser_target, .5, .5, draw_angle, c_white, .75 );
    shader_end();
    
}
