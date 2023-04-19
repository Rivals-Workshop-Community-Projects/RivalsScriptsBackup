vsp = 0;
y = y1;
state_timer += 1;
image_index += anim_speed;

// set new state
if state != queued_state {
    state = queued_state;
    state_timer = 0;
    image_index = 0;
}

// state logic
switch state {
    case PS_DASH:
        sprite_index = spr_dash;
        hsp = 1.9 * spr_dir;
        if x != clamp(x, x1, x2) { queued_state = PS_DASH_TURN; }
        break;
    case PS_DASH_TURN:
        if state_timer == 0 { spr_dir *= -1; }
        sprite_index = spr_turn;
        hsp += 0.3 * spr_dir;
        if image_index + anim_speed >= image_number {
            queued_state = PS_DASH;
        }
        break;
}