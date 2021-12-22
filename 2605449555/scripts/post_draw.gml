//post-draw

// OLD USPECIAL

/*if (attack == AT_USPECIAL && state != PS_TECH_GROUND && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_TECH_GROUND && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD) {
    if (window == 1 || window == 2 || window == 3) {
        if (spr_dir == 1) {
            shader_start();
            draw_sprite_ext(sprite_get("uspecialoverlay"), -1, x, y - 40, 1, 1, 0, -1, 1);
            shader_end();
        } else {
            shader_start();
            draw_sprite_ext(sprite_get("uspecialoverlay"), -1, x, y - 40, -1, 1, 0, -1, 1);
            shader_end();
        }
    }
    
    if (window == 4) {
        // Exploding Old Cann
        
        CannUSpcExplodeTimer += 1;
        if (CannUSpcExplodeTimer >= 6) {
            if (CannUSpcExplodeFrame <= 14) {
                CannUSpcExplodeFrame += 1;
            }
            CannUSpcExplodeTimer = 0;
        }
        
        if (CannUSpcExplodeFrame <= 14) {
            if (spr_dir == 1) {
                shader_start();
                draw_sprite_ext(sprite_get("uspecialoverlay"), CannUSpcExplodeFrame, CannUSpcX, CannUSpcY - 40, 1, 1, 0, -1, 1);
                shader_end();
            } else {
                shader_start();
                draw_sprite_ext(sprite_get("uspecialoverlay"), CannUSpcExplodeFrame, CannUSpcX, CannUSpcY - 40, -1, 1, 0, -1, 1);
                shader_end();
            }
        }
        
        // Cannon Ball
        
        CannUSpcShootBallTimer += 1;
        if (CannUSpcShootBallTimer >= 4) {
            if (CannUSpcShootBallFrame < 7) {
                CannUSpcShootBallFrame += 1;
            } else {
                CannUSpcShootBallFrame = 0;
            }
            CannUSpcShootBallTimer = 0;
        }
        if (CannUSpcShootBallEndTimer > 1) {
            if (spr_dir == 1) {
                //draw_sprite_ext(sprite_get("uspecialshotarmor"), CannUSpcShootBallFrame, x + (30 * spr_dir), y - 43, 1.25, 1.25, 0, -1, 0.66);
                shader_start();
                draw_sprite_ext(sprite_get("uspecialshot"), CannUSpcShootBallFrame, x + (24 * spr_dir), y - 40, 1, 1, 0, -1, 1);
                shader_end();
                
            } else {
                //draw_sprite_ext(sprite_get("uspecialshotarmor"), CannUSpcShootBallFrame, x + (30 * spr_dir), y - 43, -1.25, 1.25, 0, -1, 0.66);
                shader_start();
                draw_sprite_ext(sprite_get("uspecialshot"), CannUSpcShootBallFrame, x + (24 * spr_dir), y - 40, -1, 1, 0, -1, 1);
                shader_end();
                
            }
        }
        
    } else {
        CannUSpcExplodeFrame = 9;
        CannUSpcExplodeTimer = 0;
        CannUSpcShootBallFrame = 0;
        CannUSpcShootBallTimer = 0;
    }
    
    if (window == 5) {
        if (spr_dir == 1) {
            shader_start();
            draw_sprite_ext(sprite_get("uspecialshot"), -1, x, y - 40, 1, 1, 0, -1, 1);
            shader_end();
        } else {
            shader_start();
            draw_sprite_ext(sprite_get("uspecialshot"), -1, x, y - 40, -1, 1, 0, -1, 1);
            shader_end();
        }
    }
    
}*/

// Neutral Special Meter
//if (attack == AT_NSPECIAL && state != PS_TECH_GROUND && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_TECH_GROUND && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD) {
//    if (window == 2 || window == 1) {
//        shader_start();
//        draw_sprite_ext(sprite_get("nspecial_smallmeter"), CannNSpcCharge, x - 10 * spr_dir, y - 80, 1, 1, 0, -1, 1);
//        shader_end();
//    }
    
    /*if ((window == 2 && CannNSpcCharge > 0) || (window == 2 && CannNSpcCharge == 0 && CannNSpcChargeTimer > 1) || window = 3) {
        shader_start();
        draw_sprite_ext(sprite_get("positiondot"), 1, CannDot1XPos, CannDot1YPos - 20, 1, 1, 0, -1, 1);
        shader_end();
        
        shader_start();
        draw_sprite_ext(sprite_get("positiondot"), 1, CannDot2XPos, CannDot2YPos - 20, 1, 1, 0, -1, 1);
        shader_end();
        
        shader_start();
        draw_sprite_ext(sprite_get("positiondot"), 1, CannDot3XPos, CannDot3YPos - 20, 1, 1, 0, -1, 1);
        shader_end();
        
        shader_start();
        draw_sprite_ext(sprite_get("positiondot"), 1, CannDot4XPos, CannDot4YPos - 20, 1, 1, 0, -1, 1);
        shader_end();
        
        shader_start();
        draw_sprite_ext(sprite_get("positiondot"), 1, CannDot5XPos, CannDot5YPos - 20, 1, 1, 0, -1, 1);
        shader_end();
    }*/
//}

// Heat Meter 10
if (HeatLevel >= 10) {
    if (HeatWarnTimer >= 0 && HeatWarnTimer < 20) {
        HeatWarn = 0;
    }
    if (HeatWarnTimer >= 20 && HeatWarnTimer < 40) {
        HeatWarn = 1;
    }
    if (HeatWarnTimer > 40) {
        HeatWarnTimer = 0;
    }
    HeatWarnTimer += 1;
    //draw_sprite_ext(sprite_get("warning"), HeatWarn, x, y - 94, -1, 1, 0, -1, 1);
}

if (HeatOutline = true) {
    HeatOutlineTimer += 1;
    outline_color = [143, 24, 11];
    if (HeatOutlineTimer >= 30) {
        HeatOutlineTimer = 0;
        HeatOutline = false;
    }
    
} else {
    outline_color = [0, 0, 0];
    HeatOutlineTimer = 0;
}

/*if (HeatLevel >= 10) {
    if (HeatOutlineTimer >= 0 && HeatOutlineTimer < 20) {
        outline_color = [186, 72, 27];
    } else if (HeatOutlineTimer >= 20) {
        outline_color = [143, 24, 11];
        HeatOutlineTimer = 0;
    } 
    HeatOutlineTimer += 1;
} else {
    HeatOutlineTimer = 0;
    outline_color = [0, 0, 0];
}