//article2_update

image_index = (floor(state_timer / num_frames[state] * num_anim_frames[state]) % num_anim_frames[state]) + anim_frame_start[state];
switch state {
    case 0: //forming
        if (state_timer + 1) >= num_frames[state] {
            state = 1;
            state_timer = 0;
        }
        if position_meeting( x, y + 32, asset_get("par_block") ) {
            y -= 2;
            front.y -= 2;
        }
    break;
    case 1: //idle
        create_hitbox(AT_EXTRA_3, 1, x, y);
        if (state_timer + 1) >= max_lifetime - max_lifetime % num_frames[state] {
            state = 2;
            state_timer = 0;
        }
    break;
    case 2: //dying
        if (state_timer + 1) >= num_frames[state] {
            dead = true;
        }
    break;
    case 3: //firing
        with oPlayer {
            if grabbed_by_zeph_ring && grabbed_by_zeph_ring_id == other {
                state = PS_HITSTUN * free + PS_HITSTUN_LAND * !free;
                state_timer = 0;
                hitstun = 16;
                hitstun_full = 16;
                can_tech = false;
                can_wall_tech = false;
                vsp = 0;
                hsp = 0;
                x = other.x + other.grab_offset_x * other.spr_dir + bubble_x * spr_dir;
                y = other.y + other.grab_offset_y + bubble_y;
            }
        }
        if (state_timer + 1) >= num_frames[state] {
            state = 4;
            state_timer = 0;
            with player_id {
                var wind_baybee = instance_create(other.x, other.y, "obj_article3");
                wind_baybee.player_id = id;
                wind_baybee.player = player;
                wind_baybee.spr_dir = other.spr_dir * 100000;
                wind_baybee.is_horizontal = other.is_horizontal;
                wind_baybee.image_angle = 90 * !other.is_horizontal;
            }
            sound_play(asset_get("sfx_bird_sidespecial"));
            sound_play(asset_get("sfx_swipe_heavy1"));
        }
    break;
    case 4: //firing endlag
        if state_timer == 1 {
            with oPlayer {
                if grabbed_by_zeph_ring && grabbed_by_zeph_ring_id == other {
                    grabbed_by_zeph_ring = false;
                    grabbed_by_zeph_ring_id = noone;
                }
            }
            if is_horizontal {
                create_hitbox(AT_EXTRA_3, 2, x, y);
            } else {
                if is_up {
                    create_hitbox(AT_EXTRA_3, 3, x, y);
                } else {
                    create_hitbox(AT_EXTRA_3, 4, x, y);
                }
            }
        }
        if (state_timer + 1) >= num_frames[state] {
            dead = true;
        }
    break;
    case 5: //firing zeph
        with oPlayer {
            if grabbed_by_zeph_ring && grabbed_by_zeph_ring_id == other {
                vsp = 0;
                hsp = 0;
                x = other.x + other.launch_offset_x * other.spr_dir + bubble_x * spr_dir;
                y = other.y + other.launch_offset_y + bubble_y;
            }
        }
        if (state_timer + 1) >= num_frames[state] {
            state = 6;
            state_timer = 0;
        }
    break;
    case 6: //firing zeph endlag
        if (state_timer + 1) >= num_frames[state] {
            dead = true;
        }
    break;
    case 7: //rotating
        spr_angle -= 10 * rotation_direction;
        if spr_angle % 90 == 0 {
            state = 1;
            total_rotation += rotation_direction;
            if abs(total_rotation) == 2 { 
                spr_angle = 0; 
                spr_dir *= -1; 
            }
        }
    break;
}
state_timer++;

image_angle = spr_angle;

if image_index > 4 && image_index < 16 {
    front.visible = true;
    front.image_index = image_index - 4;
} else {
    front.visible = false;
}
front.image_angle = spr_angle;
front.spr_dir = spr_dir;

if dead {
    instance_destroy(front);
    instance_destroy();
    exit;
}