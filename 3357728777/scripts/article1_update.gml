//article1_update
if _init == 0 {
    
    spr_dir = player_id.spr_dir;
    switch att {
        case AT_DSPECIAL:
            sprite_index = sprite_get("dspecial_article");
            anim_frames = [3, 7, 4];
            anim_start = [0, 3, 10];
            anim_timer = [9, 40, 25];
            _init = 1;
            break;
        /*case AT_FSTRONG:
            sprite_index = sprite_get("fstrong_article");
            anim_frames = [0,4,0];
            anim_start = [0,0,0];
            anim_timer = [1, 16, 1];
            _init = 1;
            break;*/
    }
}

switch state {
    case 0:
        break;
    case 1:
        switch (att) {
            /*case AT_FSTRONG:
                if !instance_exists(hitb) hitb = create_hitbox(AT_FSTRONG,3,x,y);
                with hitb {
                    x = other.x+x_pos;
                    y = other.y+y_pos;
                }
                if player_id.state == PS_HITSTUN {
                    if instance_exists(hitb) instance_destroy(hitb);
                    instance_destroy();
                    exit;
                }
                hsp = -spr_dir*fstrong_hsp;
                view_left = get_instance_x(camera_obj);
                view_right = get_instance_x(camera_obj)+view_get_wview();
                y = player_id.y;
                if x < view_left-range || x > view_right+range {
                    if spr_dir == 1 x = view_right;
                    else x = view_left;
                    with hitb kb_angle = 180-kb_angle;
                    //fstrong_hsp = -fstrong_hsp_init;
                }
                if state_timer > 10 && abs(player_id.x - x) <= range {
                    state = 2;
                    state_timer = -1;
                    with player_id if attack == AT_FSTRONG && (state == 5 || state == 6) && window == 4 {
                        window_timer = 0;
                        window = 5;
                    }
                }
                break;*/
            case AT_DSPECIAL:
                if (state_timer % 10 == 0) {
                    create_hitbox(AT_DSPECIAL,3,x,y-35);
                    sound_play(sound_get("step7"));
                }
                break;
        }
        break;
    case 2:
        if instance_exists(hitb) instance_destroy(hitb);
        break;
}

image_index = ((anim_frames[state]/anim_timer[state]) * state_timer) + anim_start[state];

state_timer++;
if (state_timer >= anim_timer[state]) {
    state++;
    state_timer = 0;
}

if (state == 3) {
    instance_destroy();
    exit;
}