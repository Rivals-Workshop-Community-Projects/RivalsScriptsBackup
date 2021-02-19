//reznor
if(state_timer > 0) state_timer--;

switch(state){
    case 0:
        //spawn state
        //only make one reznor play the spawn sound
        if(random_index == 0){
            sound_play(sound_get("magikoopa"));
        }
        spawn_hit_fx(x, y, 67);
        state = 1;
        state_timer = 150 + random_func(random_index, 256, true);
        break;

    case 1:
        //idle state
        //targeting/turning code
        player_dist = 5000;
        image_index = 0;

        with(oPlayer){
            //target nearest player
            if(distance_to_point(other.x, other.y) < other.player_dist){
                other.player_dist = distance_to_point(other.x, other.y);
                //change sprite direction
                if(x < other.x){
                    other.spr_dir = 1;
                }
                else{
                    other.spr_dir = -1;
                }
                other.targetX = x;
                other.targetY = y - 5;
            }
        }

        //turnaround frame
        if(prev_spr_dir != spr_dir){
            image_index = 2;
            turnaround_timer--;
            //done turning
            if(turnaround_timer == 0){
                prev_spr_dir = spr_dir;
                turnaround_timer = turnaround_amount;
            }
        }

        //switch to shooting
        if(state_timer == 0){
            state = 2;
            state_timer = 50;
            image_index = 1;
        }
        break;

    case 2:
        //shoot state
        if(state_timer == 20){
            //shoot fireball to opponent
            //calculate angle cuz point_direction seems to be fucky wucky
            var deltaX = targetX - x;
            var deltaY = y - targetY;
            var angle = arctan2(deltaY, deltaX);

            //spawn fireball projectile
            var fireball = create_hitbox(AT_FTILT, 1, x, y);

            //calculate projectile speed based on angle
            fireball.hsp = fireball_speed * cos(angle);
            fireball.vsp = -(fireball_speed * sin(angle));

            //play sfx
            sound_play(sound_get("fire"));
        }

        if(state_timer == 0){
            state = 1;
            state_timer = 150 + random_func(random_index, 256, true);
            image_index = 0;
        }
        break;
    
    case 3:
        //death state
        can_be_grounded = false;
        vsp += 0.3;

        rotation += 2.75;
        image_angle = -spr_dir * rotation;

        //lava death sound sad RIP REZNOR :(
        if(y > room_height - 125 && play_lava_sound){
            sound_play(sound_get("lava_death"));
            play_lava_sound = false;
        }

        if(state_timer == 0) {
            obj_stage_main.reznor_alive--;
            instance_destroy();
            exit;
        }
        break;
}

//kill reznor when hp hits 0
if(hp <= 0 && state != 3){
    state = 3;
    state_timer = 150;
    vsp = -9;
    hsp = spr_dir * 2;
    sound_play(sound_get("death"));
}

if(state != 3){
    user_event(0);
}