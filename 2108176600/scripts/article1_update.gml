//article1_update
if _init == 0 {
    
    spr_dir = player_id.spr_dir;
    switch att {
        case AT_JAB:
            sprite_index = sprite_get("jab_article");
            anim_frames = [3,3,3];
            anim_start = [0,4,7];
            anim_timer = [20, 50, 25];
            _init = 1;
            break;
        case AT_FSTRONG:
            sprite_index = sprite_get("fstrong_article");
            anim_frames = [0,4,0];
            anim_start = [0,0,0];
            anim_timer = [1, 16, 1];
            _init = 1;
            break;
    }
}
state_timer++;

if state == 0 {
    image_index = (anim_frames[state])*(state_timer/(anim_timer[state]))+anim_start[state];
    if state_timer/(anim_timer[state]) > 1 {
        state = 1;
        state_timer = 0;
        if att == AT_JAB {
            create_hitbox(AT_JAB,1,x,y-32);
            sound_play(sound_get("weird_hit1"));
        }
        //if att == AT_FSTRONG hitb = create_hitbox(AT_FSTRONG,3,x,y);
    }
}

if state == 1 {
    image_index = (anim_frames[state])*(state_timer/(anim_timer[state]))+anim_start[state];
    if att == AT_FSTRONG {
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
        view_left = view_get_xview();
        view_right = view_get_xview()+view_get_wview();
        y = player_id.y;
        if x < view_left-range || x > view_right+range {
            if spr_dir == 1 x = view_right;
            else x = view_left;
            with hitb kb_angle = 180-kb_angle;
            //fstrong_hsp = -fstrong_hsp_init;
        }
        if state_timer > 10 && abs(player_id.x - x) <= range {
            state = 2;
            state_timer = 0;
            with player_id if attack == AT_FSTRONG && (state == 5 || state == 6) && window == 4 {
                window_timer = 0;
                window = 5;
            }
        }
    }
    
    if att == AT_JAB {
        if state_timer/(anim_timer[state]) > 1 {
            state = 2;
            state_timer = 0;
            
        }
    }
}

if state == 2 {
    if instance_exists(hitb) instance_destroy(hitb);
    image_index = (anim_frames[state])*(state_timer/(anim_timer[state]))+anim_start[state];
    if state_timer/(anim_timer[state]) > 1 {
        instance_destroy();
        exit;
    }
}