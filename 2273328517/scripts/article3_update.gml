//article3_update
// NSPECIAL projectile article

var cam_x = get_instance_x(player_id.camera_obj) - view_get_wview()/2;
var cam_y = get_instance_y(player_id.camera_obj) - view_get_hview()/2;

if _init == 0 {
    _init = 1;
    spr_dir = playa_id.spr_dir;
    hsp = _hsp*spr_dir;
    vsp = _vsp;
    
}

if (bounces >= max_bounces && state != 2) {
    state = 2;
    state_timer = 0;
}

if (window_timer >= window_timers[window]) {
    if (window == 0) {
        window++;
    } else if (window == 1) {
        window_timer = 0;
    } else {
        instance_destroy();
        exit;
    }
}

image_index = ((window_anims[window] / window_timers[window]) * window_timer) + window_anim_starts[window];
window_timer++;


if state == 2 {
    vsp += grav;
    if instance_exists(hitb) instance_destroy(hitb);
    if (state_timer == 0) {
        window = 2;
        window_timer = 0;
    }
}
state_timer++;

if state == 0 { //hitboxes

    if (bounce_timer > 0) {
        bounce_timer--;
    }

    if !instance_exists(hitb) hitb = create_hitbox(AT_NSPECIAL, 1, x, y);
    with hitb {
        x = other.x;
        y = other.y;
    }
    
    var x_pos = floor(x + hsp);
    var y_pos = floor(y + vsp);
    if (position_meeting(floor(x_pos + sprite_width/2 - hsp)+1, floor(y_pos + ((sprite_height/2 - vsp) * sign(vsp))), asset_get("par_block")) ||
    position_meeting(floor(x_pos + sprite_width/2 - hsp)-1, floor(y_pos + ((sprite_height/2 - vsp) * sign(vsp))), asset_get("par_block"))) {
        if (bounce_timer == 0) {
            bounce_timer = max_bounce_timer;
            if (position_meeting(floor(x_pos + sprite_width/2), floor(y - vsp + (sprite_height/2 * sign(vsp))), asset_get("par_block"))) {
                hsp *= -1;
            } else {
                vsp *= -1;
            }
            bounces++;
            sound_play(sound_get("static_hard"));
        }
    }

    
    var true_x = round((x + hsp) - cam_x);
    var true_y = round((y + vsp) - cam_y);
    // Gets the center position
    var resolution = [view_get_wview(), view_get_hview()];
    var bounce = false;
    var pass_right = false;
    var pass_top = false;
    
    if (((true_x <= 0) && hsp < 0) || ((true_x >= resolution[@0]) && hsp > 0)) {
        var index = round(player_id.res_ratios[@1] * true_y);
        if (index >= 0 && index <= player_id.edge_amounts[@0]) {
            var invert_index = round(abs(index - player_id.edge_amounts[@1]));
            var invert_x_pos = cam_x + (sprite_width/2 * spr_dir);
            var invert_y_pos = player_id.right_edge_array[@invert_index][@1] + cam_y;
            var left_pos = {x: player_id.min_edge_pos[0], y: player_id.left_edge_array[@index][@1], cd: player_id.edge_static_timer};
            var invert_left_pos = {x: player_id.min_edge_pos[0], y: player_id.left_edge_array[@invert_index][@1], cd: player_id.edge_static_timer};
            var right_pos = {x: player_id.max_edge_pos[0], y: player_id.left_edge_array[@index][@1], cd: player_id.edge_static_timer};
            var invert_right_pos = {x: player_id.max_edge_pos[0], y: player_id.left_edge_array[@invert_index][@1], cd: player_id.edge_static_timer};
            if (true_x <= 0) {
                var label = "left" + string(index);
                var invert_label = "right" + string(invert_index);
                if (ds_list_find_index(player_id.edge_static_labels, label) == -1) {
                    ds_list_add(player_id.edge_statics, left_pos);
                    ds_list_add(player_id.edge_static_labels, label);
                    sound_play(sound_get("static1"));
                    if (position_meeting(resolution[@0] + invert_x_pos, invert_y_pos, asset_get("par_block"))) {
                        ds_list_add(player_id.edge_statics, invert_right_pos);
                        ds_list_add(player_id.edge_static_labels, invert_label);
                        sound_play(sound_get("static1"));
                        bounces++;
                        sound_play(sound_get("static_hard"));
                        // spawn hitbox
                        bounce = true;
                    }
                    pass_right = false;
                } else {
                    bounce = true;
                }
            } else {
                var label = "right" + string(index);
                var invert_label = "left" + string(invert_index);
                if (ds_list_find_index(player_id.edge_static_labels, label) == -1) {
                    ds_list_add(player_id.edge_statics, right_pos);
                    ds_list_add(player_id.edge_static_labels, label);
                    sound_play(sound_get("static1"));
                    if (position_meeting(invert_x_pos, invert_y_pos, asset_get("par_block"))) {
                        ds_list_add(player_id.edge_statics, invert_left_pos);
                        ds_list_add(player_id.edge_static_labels, invert_label);
                        sound_play(sound_get("static1"));
                        bounces++;
                        sound_play(sound_get("static_hard"));
                        // spawn hitbox
                        bounce = true;
                    }
                    pass_right = true;
                } else {
                    bounce = true;
                }
            }
            // Screenwraps it
            if (!bounce) {
                x = (pass_right ? 0 : resolution[@0]) + invert_x_pos;
                y = invert_y_pos + (vsp < 0 ? sprite_height/2 : -sprite_height/2);
                vsp *= -1;
            } else if (bounce_timer == 0) {
                bounce_timer = max_bounce_timer;
                hsp *= -1;
                spr_dir *= -1;
                bounces++;
                sound_play(sound_get("static_hard"));
            }
        } else {
            state = 2;
            state_timer = 0;
        }
    } else if (((true_y <= 0) && vsp < 0) || ((true_y >= resolution[@1]) && vsp > 0)) {
        var index = round(player_id.res_ratios[@0] * true_x);
        var invert_index = round(abs(index - player_id.edge_amounts[@0]));
        if (index > 0 && index < player_id.edge_amounts[@0] - 1) {
            var invert_x_pos = player_id.top_edge_array[@invert_index - 1][@0] + cam_x;
            var invert_y_pos = cam_y + (sprite_height/2 * sign(vsp));
            var top_pos = {x: player_id.top_edge_array[@index - 1][@0], y: player_id.min_edge_pos[1], cd: player_id.edge_static_timer};
            var invert_top_pos = {x: player_id.top_edge_array[@invert_index - 1][@0], y: player_id.min_edge_pos[1], cd: player_id.edge_static_timer};
            var bottom_pos = {x: player_id.top_edge_array[@index - 1][@0], y: player_id.max_edge_pos[1], cd: player_id.edge_static_timer};
            var invert_bottom_pos = {x: player_id.top_edge_array[@invert_index - 1][@0], y: player_id.max_edge_pos[1], cd: player_id.edge_static_timer};
            if (true_y <= 0) {
                var label = "top" + string(index);
                var invert_label = "bottom" + string(invert_index - 1);
                if (ds_list_find_index(player_id.edge_static_labels, label) == -1) {
                    ds_list_add(player_id.edge_statics, top_pos);
                    ds_list_add(player_id.edge_static_labels, label);
                    sound_play(sound_get("static1"));
                    if (position_meeting(invert_x_pos, resolution[@1] + invert_y_pos, asset_get("par_block"))) {
                        ds_list_add(player_id.edge_statics, invert_bottom_pos);
                        ds_list_add(player_id.edge_static_labels, invert_label);
                        sound_play(sound_get("static1"));
                        bounces++;
                        // spawn hitbox
                        bounce = true;
                    }
                    pass_top = true;
                } else {
                    bounce = true;
                }
            } else {
                var label = "bottom" + string(index);
                var invert_label = "top" + string(invert_index - 1);
                if (ds_list_find_index(player_id.edge_static_labels, label) == -1) {
                    ds_list_add(player_id.edge_statics, bottom_pos);
                    ds_list_add(player_id.edge_static_labels, label);
                    sound_play(sound_get("static1"));
                    if (position_meeting(invert_x_pos, invert_y_pos, asset_get("par_block"))) {
                        ds_list_add(player_id.edge_statics, invert_top_pos);
                        ds_list_add(player_id.edge_static_labels, invert_label);
                        sound_play(sound_get("static1"));
                        bounces++;
                        sound_play(sound_get("static_hard"));
                        // spawn hitbox
                        bounce = true;
                    }
                    pass_top = false;
                } else {
                    bounce = true;
                }
            }
            // Screenwraps
            if (!bounce) {
                x = invert_x_pos;
                y = (pass_top ? resolution[@1] : 0) + invert_y_pos;
                hsp *= -1;
            } else if (bounce_timer == 0) {
                bounce_timer = max_bounce_timer;
                vsp *= -1;
                bounces++;
                sound_play(sound_get("static_hard"));
            }
            spr_dir *= -1;
        } else {
            // Corner detection
            var invert_x_pos = cam_x + (sprite_width/2 * spr_dir);
            var invert_y_pos = 0;
            var top_left_pos = {x: player_id.min_edge_pos[0], y: player_id.min_edge_pos[1], cd: player_id.edge_static_timer};
            var top_right_pos = {x: player_id.max_edge_pos[0], y: player_id.min_edge_pos[1], cd: player_id.edge_static_timer};
            var bottom_left_pos = {x: player_id.min_edge_pos[0], y: player_id.max_edge_pos[1], cd: player_id.edge_static_timer};
            var bottom_right_pos = {x: player_id.max_edge_pos[0], y: player_id.max_edge_pos[1], cd: player_id.edge_static_timer};
            if (index <= 0) {
                if (true_y <= 0) {
                    var label = "left" + string(0);
                    var invert_label = "right" + string(player_id.edge_amounts[@1]);
                    invert_y_pos = player_id.right_edge_array[@player_id.edge_amounts[1]][@1] + cam_y;
                    if (ds_list_find_index(player_id.edge_static_labels, label) == -1) {
                        ds_list_add(player_id.edge_statics, top_left_pos);
                        ds_list_add(player_id.edge_static_labels, label);
                        sound_play(sound_get("static1"));
                        if (position_meeting(resolution[@0] + invert_x_pos, resolution[@1] + invert_y_pos, asset_get("par_block"))) {
                            ds_list_add(player_id.edge_statics, bottom_right_pos);
                            ds_list_add(player_id.edge_static_labels, invert_label);
                            sound_play(sound_get("static1"));
                            bounces++;
                            sound_play(sound_get("static_hard"));
                            // spawn hitbox
                            bounce = true;
                        }
                        pass_right = false;
                    } else {
                        bounce = true;
                    }
                } else {
                    var label = "left" + string(player_id.edge_amounts[@1]);
                    var invert_label = "right" + string(0);
                    invert_y_pos = player_id.right_edge_array[0][@1] + cam_y;
                    if (ds_list_find_index(player_id.edge_static_labels, label) == -1) {
                        ds_list_add(player_id.edge_statics, bottom_left_pos);
                        ds_list_add(player_id.edge_static_labels, label);
                        sound_play(sound_get("static1"));
                        if (position_meeting(resolution[@0] + invert_x_pos, invert_y_pos, asset_get("par_block"))) {
                            ds_list_add(player_id.edge_statics, top_right_pos);
                            ds_list_add(player_id.edge_static_labels, invert_label);
                            sound_play(sound_get("static1"));
                            bounces++;
                            sound_play(sound_get("static_hard"));
                            // spawn hitbox
                            bounce = true;
                        }
                        pass_right = false;
                    } else {
                        bounce = true;
                    }
                }
            } else {
                if (true_y <= 0) {
                    var label = "right" + string(0);
                    var invert_label = "left" + string(player_id.edge_amounts[@1]);
                    invert_y_pos = player_id.right_edge_array[@player_id.edge_amounts[1]][@1] + cam_y;
                    if (ds_list_find_index(player_id.edge_static_labels, label) == -1) {
                        ds_list_add(player_id.edge_statics, top_right_pos);
                        ds_list_add(player_id.edge_static_labels, label);
                        sound_play(sound_get("static1"));
                        if (position_meeting(invert_x_pos, resolution[@1] + invert_y_pos, asset_get("par_block"))) {
                            ds_list_add(player_id.edge_statics, bottom_left_pos);
                            ds_list_add(player_id.edge_static_labels, invert_label);
                            sound_play(sound_get("static1"));
                            bounces++;
                            sound_play(sound_get("static_hard"));
                            // spawn hitbox
                            bounce = true;
                        }
                        pass_right = true;
                    } else {
                        bounce = true;
                    }
                } else {
                    var label = "right" + string(player_id.edge_amounts[@1]);
                    var invert_label = "left" + string(0);
                    invert_y_pos = player_id.right_edge_array[0][@1] + cam_y;
                    if (ds_list_find_index(player_id.edge_static_labels, label) == -1) {
                        ds_list_add(player_id.edge_statics, bottom_right_pos);
                        ds_list_add(player_id.edge_static_labels, label);
                        sound_play(sound_get("static1"));
                        if (position_meeting(invert_x_pos, invert_y_pos, asset_get("par_block"))) {
                            ds_list_add(player_id.edge_statics, top_left_pos);
                            ds_list_add(player_id.edge_static_labels, invert_label);
                            sound_play(sound_get("static1"));
                            bounces++;
                            sound_play(sound_get("static_hard"));
                            // spawn hitbox
                            bounce = true;
                        }
                        pass_right = true;
                    } else {
                        bounce = true;
                    }
                }
            }
            // Screenwraps it
            if (!bounce) {
                x = (pass_right ? 0 : resolution[@0]) + invert_x_pos;
                y = invert_y_pos + (vsp < 0 ? -sprite_height/2 : sprite_height/2);
            } else if (bounce_timer == 0) {
                bounce_timer = max_bounce_timer;
                hsp *= -1;
                vsp *= -1;
                spr_dir *= -1;
                bounces++;
                sound_play(sound_get("static_hard"));
                sound_play(sound_get("tv_hit"));
            }
        }
    }
    
    with asset_get("pHitBox") if (player_id != other.player_id && place_meeting(x,y,other.id)) {
        other.state = 2;
        other.state_timer = 0;
    }
    
    vsp += grav;
    if y > y_max {
        state = 2;
        state_timer = 0;
    }
}


