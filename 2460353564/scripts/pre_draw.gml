// trail
var i, prev_x, prev_y, prev_spr_index, prev_img_index, prev_spr_dir, alpha;

var prev_blendenable = gpu_get_blendenable();
var prev_blendmode = gpu_get_blendmode();
gpu_set_blendenable(true);
gpu_set_blendmode(bm_add);

for(i=trail_history_states-1; i >= 0; i--) {
    prev_x = prev_poses_x[i];
    prev_y = prev_poses_y[i];
    prev_spr_index = prev_spr_indexes[i];
    prev_img_index = prev_img_indexes[i];
    prev_spr_dir = prev_spr_dirs[i];
    if (prev_x != -1 && prev_y != -1 && prev_spr_index != -1 && prev_img_index != -1) {
        alpha = ease_quadIn(trail_max_opacity_pct, trail_min_opacity_pct, i, trail_history_states-1) / 100;
        draw_sprite_ext(prev_spr_index, prev_img_index, prev_x, prev_y, prev_spr_dir, 1, 0, $ffcccc, alpha);
    }
}

// graze effect

if (graze_cooldown > 0) {
    var frames_since_graze = graze_cooldown_btwn_procs - graze_cooldown;

    if (frames_since_graze < graze_anim_frames) {
        gpu_set_blendmode(bm_add);

        var scale = 1.07 + 0.05 * (1 + dcos(180 + 2*360 * frames_since_graze / graze_anim_frames));
        var alpha = 0.8;
        if (frames_since_graze > graze_anim_frames*0.75) {
            alpha = 0.8 - 0.8 * ease_quadIn(0, 1, frames_since_graze - graze_anim_frames*0.75, graze_anim_frames*0.25);
        }
        draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*scale*scale, scale, 0, mp_pink, alpha);
    }
}

gpu_set_blendenable(prev_blendenable);
gpu_set_blendmode(prev_blendmode);



// dstrong
if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG) {
    var y_offset = -20;
    var x_offset = 0;
    if (window == 1) {
        var scale = sin(state_timer*0.25)*0.03 + 0.87 * ease_quadIn(0, 1, window_timer, get_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH) - 1);
        var draw_color = make_colour_rgb(255*scale, 255*scale, 255*scale);
        draw_sprite_ext(sprite_get("rotagear_outer"), 0, x + x_offset, y + y_offset, scale, scale, 0, draw_color, 1.0);
        draw_sprite_ext(sprite_get("rotagear_inner"), 0, x + x_offset, y + y_offset, scale, scale, 0, draw_color, 1.0);
    } else if (window == 2) {
        var rotation = floor(ease_quadIn(0, 360, window_timer, get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH) - 1));
        var max_wobble = floor(ease_quadIn(0, 2, window_timer, get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH)*0.5))
        var x_wobble = 0.5*max_wobble - random_func(4, max_wobble, true);
        var y_wobble = 0.5*max_wobble - random_func(5, max_wobble, true);
        var outer_index = min(3, window_timer);
        draw_sprite_ext(sprite_get("rotagear_outer"), outer_index, x + x_offset + x_wobble, y + y_offset + y_wobble, 1, 1, rotation, c_white, 1.0);
        draw_sprite_ext(sprite_get("rotagear_inner"), 0, x + x_offset, y + y_offset, 1, 1, 0, c_white, 1.0);
    } else if (window == 3) {
        var rotation = 45 + 45*window_timer;
        var max_wobble = 4;
        var x_wobble = 0.5*max_wobble - random_func(4, max_wobble, true);
        var y_wobble = 0.5*max_wobble - random_func(5, max_wobble, true);
        draw_sprite_ext(sprite_get("rotagear_outer"), 3, x + x_offset, y + y_offset + y_wobble, 1, 1, rotation, c_white, 1.0);
        draw_sprite_ext(sprite_get("rotagear_inner"), 0, x + x_offset, y + y_offset + x_wobble, 1, 1, 0, c_white, 1.0);
    } else if (window == 4) {
        var scale = ease_quadOut(1, 0, window_timer, get_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH));
        var draw_color = make_colour_rgb(255*scale, 255*scale, 255*scale);
        var outer_index = max(0, 3-window_timer);
        draw_sprite_ext(sprite_get("rotagear_outer"), outer_index, x + x_offset, y + y_offset, scale, scale, -scale*360, draw_color, 1.0);
        draw_sprite_ext(sprite_get("rotagear_inner"), 0, x + x_offset, y + y_offset, scale, scale, 0, draw_color, 1.0);
    } 
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL && window == 1) {
    var prev_blendenable = gpu_get_blendenable();
    var prev_blendmode = gpu_get_blendmode();
    var prev_alpha = draw_get_alpha();
    gpu_set_blendenable(true);

    var anim_factor = ease_quadOut(0, 1, window_timer, get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH));
    
    draw_set_alpha(0.25 * anim_factor);
    gpu_set_blendmode(bm_normal);

    draw_rectangle_colour(0, 0, 8000, 8000, c_black, c_black, c_black, c_black, false);

    draw_set_alpha(0.9);
    gpu_set_blendmode(bm_add);

    var radius = 80 * anim_factor;
    draw_circle_colour(x, y - char_height/2, radius, c_black, $000066, 0);
    draw_circle_colour(x, y - char_height/2, radius, c_black, $000066, 1);

    gpu_set_blendenable(prev_blendenable);
    gpu_set_blendmode(prev_blendmode);
    draw_set_alpha(prev_alpha);
}

if (timestop_active) {
    var prev_alpha = draw_get_alpha();
    draw_set_alpha(0.25);

    draw_rectangle_colour(0, 0, 8000, 8000, c_black, c_black, c_black, c_black, false);

    draw_set_alpha(prev_alpha);
}