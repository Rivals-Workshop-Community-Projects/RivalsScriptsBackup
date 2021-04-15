//aa

if state == 0 { //idle
    if should_activate {
        state = 2;
        state_timer = 0;
    }
    if state_timer >= flower_lifetime {
        state = 1;
        state_timer = 0;
    }
}

if state == 1 { //flower die
    if state_timer >= flower_die_time {
        instance_destroy();
        exit;
    }
}

if state == 2 { //activate startup
    if state_timer >= fly_activate_startup {
        sound_play(asset_get("sfx_bigplant_clamp"))
        state = 3;
        state_timer = 0;
    }
    
}

if state == 3 { //activate active
    if !instance_exists(fly_hitbox) {
        fly_hitbox = create_hitbox(AT_DSPECIAL,1,x,y-100);
    }
    
    if state_timer >= fly_activate_active {
        if instance_exists(fly_hitbox) {
            instance_destroy(fly_hitbox);
        }
        state = 4;
        state_timer = 0;
    }
}

if state == 4 { //activate endlag
    if state_timer >= fly_activate_endlag {
        state = 6;
        state_timer = 0;
    }
}

if state == 5 { //hold (if hit)
    if instance_exists(fly_hitbox) {
        instance_destroy(fly_hitbox);
    }
    if !instance_exists(fly_grabbed_player_obj) {
        state = 6;
        state_timer = 0;
    }
    if state_timer >= fly_hold_time {
        state = 6;
        state_timer = 0;
    }
    if instance_exists(fly_grabbed_player_obj) {
        fly_grabbed_player_obj.hitstop = 2;
        fly_grabbed_player_obj.hitpause = true;
        fly_grabbed_player_obj.x = lerp(fly_grabbed_player_obj.x, x, 0.5);
        fly_grabbed_player_obj.y = lerp(fly_grabbed_player_obj.y, y - 100, 0.5);
    }
} else {
    fly_grabbed_player_obj = noone;
}

if state == 6 { //fly die
    if state_timer >= fly_die_time {
        instance_destroy();
        exit;
    }
}

if free {
    instance_destroy();
    exit;
}
if !place_meeting(x + 65,y+2,asset_get("par_block")) {
    x -= 30;
}
if !place_meeting(x - 65,y+2,asset_get("par_block")) {
    x += 30;
}



state_timer += 1;
//animation
switch(state) {
    case 0: //idle
        min_frame = 0;
        max_frame = 5;
        image_index += idle_anim_speed;
        if image_index > max_frame {
            image_index = min_frame;
        }
    break;
    case 1://flower die
        min_frame = 6;
        max_frame = 10;
        image_index = ease_linear(min_frame,max_frame,state_timer,flower_die_time)
    break;
    case 2://activate startup
        min_frame = 11;
        max_frame = 14;
        image_index = ease_linear(min_frame,max_frame,state_timer,fly_activate_startup)
    break;
    case 3://activate active
        min_frame = 15;
        max_frame = 15;
        image_index = 15;
    break;
    case 4://activate endlag
        min_frame = 16;
        max_frame = 18;
        image_index = ease_linear(min_frame,max_frame,state_timer,fly_activate_endlag)
    break;
    case 5://hold
        if state_timer < 4 {
            min_frame = 16;
            max_frame = 16;
            image_index = 16;
        } else if state_timer >= 4 {
            min_frame = 17;
            max_frame = 17;
            image_index = 17;
        }
    break;
    case 6://fly die
        min_frame = 19;
        max_frame = 26;
        image_index = ease_linear(min_frame,max_frame,state_timer,fly_die_time)
    break;
}
