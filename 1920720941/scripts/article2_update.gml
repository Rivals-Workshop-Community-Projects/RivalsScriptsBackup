//article2_update

state_timer += 1;
timer += 1;

if (destroy) {
    if (destroy_delay > 0) {
        destroy_delay -= 1;
    } else {
        spawn_hit_fx(floor(x + 20), floor(y + 20), destroy_particle == 0 ? 144 : 66);
        instance_destroy();
    }
} else if (state == 0) {

    real_goal_x = goal_x + 2 * sin((timer + goal_y) / 20);
    real_goal_y = goal_y + 2 * cos((timer + goal_x) / 20);

    if (moving_x) {
        if (real_goal_x < x) {
            x -= 1;
            if (real_goal_x >= x) {
                moving_x = false;
            }
        } else if (real_goal_x > x) {
            x += 1;
            if (real_goal_x <= x) {
                moving_x = false;
            }
        } else {
            moving_x = false;
        }
    }
    
    if (moving_y) {
        if (real_goal_y < y) {
            y -= 1;
            if (real_goal_y >= y) {
                moving_y = false;
            }
        } else if (real_goal_y > y) {
            y += 1;
            if (real_goal_y <= y) {
                moving_y = false;
            }
        } else {
            moving_y = false;
        }
    }
    
    if ((!moving_x && !moving_y) || state_timer > 100) {
        state_timer = 0;
        state = 1;
    }
} else if (state == 1) {
    var pid = player_id
    var gothit = false;
    with (asset_get("pHitBox")) {
        if (place_meeting(x, y, other.id) && select != pid.select) {
            if (id.type != 2) {
                gothit = true;
            }
        }
    }

    x = goal_x + 2 * sin((timer + goal_y) / 20);
    y = goal_y + 2 * cos((timer + goal_x) / 20);

    if (gothit) {
        destroy = true;
    }
}