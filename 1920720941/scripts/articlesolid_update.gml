state_timer += 1;

if (state == 0) {
    //create_hitbox(AT_DSPECIAL, 1, x - 42, y - 42);

    if (state_timer == 1) {
        // Move the block to the left
        if (place_meeting(x, goal_y, asset_get("par_block")) && !place_meeting(x - 40, goal_y, asset_get("par_block"))) {
            while (place_meeting(x, goal_y, asset_get("par_block")) && !place_meeting(x - 40, goal_y, asset_get("par_block"))) {
                x -= 1;
            }
        } else if (!place_meeting(x, goal_y, asset_get("par_block")) && place_meeting(x + 40, goal_y, asset_get("par_block"))) {
            while (!place_meeting(x, goal_y, asset_get("par_block")) && place_meeting(x + 40, goal_y, asset_get("par_block"))) {
                x += 1;
            }
        } else if (place_meeting(x, goal_y, asset_get("par_block")) && place_meeting(x, goal_y, asset_get("par_block"))) {
            while (place_meeting(x, goal_y, asset_get("par_block")) && place_meeting(x, goal_y, asset_get("par_block"))) {
                goal_y -= 1;
            }
        }
    }

    hsp = 0;
    vsp = -8;
    if (y <= goal_y) {
        y = goal_y;
        state = 1;
        state_timer = 0;
    }
}

if (state == 1) {
    sprite_index = sprite_get("dash_block");
    image_index = 0;
    orig_x = x;
    orig_y = y;
    despawn_timer += 1;
    if (despawn_timer >= 720) {

    } else if (despawn_timer >= 540) {
        spd = ceil(12 - ((despawn_timer - 540) / 30));
        if (despawn_timer % spd <= 1) {
            sprite_index = sprite_get("dash_block_despawn");
        } else {
            sprite_index = sprite_get("dash_block");
        }
    }
} else if (state > 1) {
    despawn_timer = 300
}

if (state >= 1 && state < 4) {
    ignores_walls = false;
    hsp = 0;
    vsp = 0;
}

if (state == 2) {
    if (active_delay > 0) {
        if (active_dir == 0) {
            sprite_index = sprite_get("dash_block_right");
        } else if (active_dir == 1) {
            sprite_index = sprite_get("dash_block_up");
        } else if (active_dir == 2) {
            sprite_index = sprite_get("dash_block_left");
        } else if (active_dir == 3) {
            sprite_index = sprite_get("dash_block_down");
        }
        x += ((active_delay % 3) - 1) * 2;
        y += (((active_delay + 2) % 3) - 1) * 2;
        index = 3 - (active_delay / 6);
        image_index = index < 0 ? 0 : index;
        active_delay -= 1;
    } else {
        image_index = 3;
        if (active_dir == 0) {
            hsp = 12;
        } else if (active_dir == 1) {
            vsp = -12;
        } else if (active_dir == 2) {
            hsp = -12;
        } else if (active_dir == 3) {
            vsp = 12;
        }
    }
}

if (state == 3) {
    free = true;
    active_dir = -1;
    if (active_delay > 0) {
        if (active_dir == 0) {
            sprite_index = sprite_get("dash_block_right");
        } else if (active_dir == 1) {
            sprite_index = sprite_get("dash_block_up");
        } else if (active_dir == 2) {
            sprite_index = sprite_get("dash_block_left");
        } else if (active_dir == 3) {
            sprite_index = sprite_get("dash_block_down");
        }
        if (active_delay > 30) {
            x += ((active_delay % 3) - 1) * 2;
            y += (((active_delay + 2) % 3) - 1) * 2;
        }
        index = active_delay / 6;
        image_index = index > 3 ? 3 : index;
        active_delay -= 1;
    } else {
        sprite_index = sprite_get("dash_block");
        image_index = 0;
        if (abs(x - orig_x) <= 8) {
            x = orig_x;
            hsp = 0;
        } else if (orig_x > x) {
            hsp = 4;
        } else if (orig_x < x) {
            hsp = -4;
        } else {
            hsp = 0;
        }
        if (abs(y - orig_y) <= 8) {
            y = orig_y;
            vsp = 0;
        } else if (orig_y > y) {
            vsp = 4;
        } else if (orig_y < y) {
            vsp = -4;
        } else {
            vsp = 0;
        }
        if (orig_x == x && orig_y == y) {
            hsp = 0;
            vsp = 0;
            state = 1;
            state_timer = 0;
        }
    }
}

if (state == 2 && state_timer <= 22) {
    hit_wall = false;
}

if (state == 2 && (hit_wall || (active_dir == 3 && !free))) {
    state = 3;
    state_timer = 0;
    active_delay = 40;
    sound_play(sound_get("dash_block_crash"));
}

if (state == 4) {
    hsp *= 0.75;
    vsp *= 0.75;
    orig_x = x;
    orig_y = y;
    if (abs(hsp) < 0.5 && abs(vsp) < 0.5) {
        state = 1;
        hsp = 0;
        vsp = 0;
    }
}

if ((state >= 1 && active_delay <= 0) || state == 3) {
    var activated = false;
    
    with (asset_get("pHitBox")){
        if (select == player_id.select && attack == AT_EXTRA_1 && place_meeting(x,y,other.id)){
            var old_dir = other.active_dir;
            var dif_x = x - other.x;
            var dif_y = y - other.y;
            destroy = true;
            if (other.dash_dir % 90 == 45) {
                if (abs(dif_x) > abs(dif_y)) {
                    player_id.vsp = -10;
                    if (dif_x > 0) {
                        other.active_dir = 0;
                        player_id.hsp = 3;
                    } else {
                        other.active_dir = 2;
                        player_id.hsp = -3;
                    }
                } else {
                    player_id.vsp = 6;
                    if (dif_y > 0) {
                        other.active_dir = 3;
                    } else {
                        player_id.vsp = -6;
                        other.active_dir = 1;
                    }
                }
                activated = true;
            } else {
                if (other.dash_dir % 180 == 0) {
                    if (abs(dif_x) > abs(dif_y) - 16) {
                        if (other.dash_dir == 180 && dif_x > 0) {
                            player_id.vsp = -10;
                            other.active_dir = 0;
                            player_id.hsp = 3;
                            activated = true;
                        } else if (other.dash_dir % 360 == 0 && dif_x < 0) {
                            player_id.vsp = -10;
                            other.active_dir = 2;
                            player_id.hsp = -3;
                            activated = true;
                        }
                    }
                } else {
                    if (abs(dif_y) >= abs(dif_x)) {
                        if (other.dash_dir == 90 && dif_y > 0) {
                            player_id.vsp = 6;
                            other.active_dir = 3;
                            activated = true;
                        } else if (other.dash_dir == 270 && dif_y < 0) {
                            player_id.vsp = 6;
                            player_id.vsp = -6;
                            other.active_dir = 1;
                            activated = true;
                        }
                    }
                }
            }
            if (activated) {
                other.state = 2;
                other.state_timer = 0;
                player_id.window = 5;
            }
            if (old_dir != other.active_dir) {
                other.active_delay = 20;
                sound_play(sound_get("dash_block_hit"));
            }
        }
    }
    
    if (!activated && (state == 1 || state == 4)) {
        var gothit = false;
        var gothitbox = noone;
        with (asset_get("pHitBox")) {
            if (place_meeting(x, y, other.id)) {
                if (id.type != 2) {
                    gothit = true;
                    gothitbox = id;
                }
            }
        }

        if (gothit && !(gothitbox.attack == AT_EXTRA_1 && gothitbox.player_id == player_id)) {
            state = 4;
            var angle = point_direction(gothitbox.x, gothitbox.y, x, y);
            angle = (floor((angle + 45.0) / 90.0) * 90.0) % 360;
            var spd = gothitbox.kb_value + gothitbox.kb_scale * 2;
            hsp = lengthdir_x(spd, angle);
            vsp = lengthdir_y(spd, angle);
        }
    }
    
}

if (destroy) {
    instance_destroy();
}