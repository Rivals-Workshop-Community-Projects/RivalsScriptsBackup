//hitbox update

// (for homing projectile) this is the max that the projectile can rotate in a single frame (it's a constant so I made it a macro)
#macro MAX_ANGLE_CHANGE 7

if (attack == AT_UTILT && hbox_num == 2){
    if(vsp < 0){
        image_index = hitbox_timer/8 % 4;
    } else {
        image_index = hitbox_timer/8 % 2 + 4;
    }
} else if (attack == AT_DSPECIAL_AIR){
    switch(hbox_num){
        case 2:
        case 3:
            hbox_group = 3;
            break;
        case 1:
            if(was_parried){
                destroyed = true;
            } else if(!free){
                hit_priority = 0;
                if(spawnSplash){
                    create_hitbox(AT_DSPECIAL_AIR, 4, round(x), round(y));
                } else if(spawnEffect){
                    sound_play(sound_effect);
                    spawn_hit_fx(round(x), round(y), hit_effect);
                    length = hitbox_timer + 1;
                    spawnSplash = true;
                }
                spawnEffect = true;
            }
            hbox_group = 4;
            break;
        case 4:
            if(hitbox_timer < 2){
                priority = 0;
            }
            hbox_group = 4;
            break;
    }
} else if (attack == AT_NSPECIAL){
    if(hbox_num == 1){
        if(!free || was_parried){
            destroyed = true; // this destroyed the projectile if it touches the ground or is parried
        }
        var endTime = length - 30; // this is until how long in the projectiles lifetime that it will target the enemy
        if(hitbox_timer < endTime){ // hitbox_timer is the liftime of the hitbox and this is checking that it hasn't been alive longer than this code should run
            maxSpeed = ease_quadIn(3, 10, hitbox_timer, endTime); // this makes the speed of the projectile increase from 3 to 10 over the course of its lifetime while its younger than endTime
            if(targetPlayer != noone && instance_exists(targetPlayer)){ // only do this code if the projectile is actually targetting someone and if that someone still exists (forsburn clone would break this otherwise)
                var angleToTarget = point_direction(x, y, targetPlayer.x, targetPlayer.y - targetPlayer.char_height/2); // this gets the angle from the projectile to the target
                var percentAngle = 0; // this is the percent of angleToTarget that the target will rotate in order to target the opponent
                if(hitbox_timer < endTime/2){ // if the hitbox is younger than half the total time that this code runs
                    percentAngle = ease_circIn(0, 1, hitbox_timer, (endTime)/2); // the accuracy increases over time
                } else{
                    percentAngle = ease_circIn(1, 0, hitbox_timer, endTime); // the accuracy decreases over time
                }
                if(proj_angle > angleToTarget + 180){ // if this is true, then I want the projectile to rotate clockwise
                    proj_angle -= 360; // I have to make the angle smaller than the target angle so that it increases when approaching the angle (and thus goes clockwise)
                } else if (proj_angle < angleToTarget - 180){ // if this is true, then I want the projectile to rotate counterclockwise
                    proj_angle += 360; // I have to make the angle greater than the target angle so that it decreases when approaching the angle (and thus goes counterclockwise)
                }
                var newAngle = lerp(proj_angle, angleToTarget, percentAngle*min(0.7, point_distance(x, y, targetPlayer.x, targetPlayer.y - targetPlayer.char_height/2)/100.0)); // This calculates a new angle that makes the projetile target the enemy better. It takes into account the percentAngle which we calculated before. It also takes the distance from the target into account (more accurate from far away), but there is a minimum for that this can decrease the accuracy (the minimum is currently at .7 or by 30%).
                if(newAngle > proj_angle + MAX_ANGLE_CHANGE){ // if the new angle rotates the projectile by more than the maximum angle change
                    newAngle = proj_angle + MAX_ANGLE_CHANGE; // just set it to use the maximum angle change
                } else if (newAngle < proj_angle - MAX_ANGLE_CHANGE){ // if the new angle rotates the projectile by more than the maximum angle change but in the opposite direction
                    newAngle = proj_angle - MAX_ANGLE_CHANGE; // just set it to use the maximum angle change here as well
                }
                proj_angle = newAngle; // set the new angle to be the projectile's angle
            }
            hsp = maxSpeed*dcos(proj_angle); //set the horizontal speed (built in variable) to be the speed of the projectile cosine its angle
            vsp = -maxSpeed*dsin(proj_angle);  //set the vertical speed (built in variable) to be the speed of the projectile sine its angle (this is negative because y values are flipped)
        }
        if(hitbox_timer % 8 == 0){
            spawn_hit_fx(round(x), round(y), leafFollowerVFX);
        }
    } else if (hbox_num == 2){
        player_id.move_cooldown[AT_NSPECIAL] = 2;
    }
}