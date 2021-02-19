// 2B'S Post Draw

if (attacking) {
    switch (attack) {
        case AT_EXTRA_1:
            if (pod_glided_from_pratfall) {
                gpu_set_blendmode(bm_normal);
                draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_black,0.33);
                gpu_set_blendmode(bm_normal);
            }
            break;
        case AT_TAUNT_2:
            if (window == 2) {
                var minutes = ceil(suicide_timer/60) - 1;
                var seconds = suicide_timer - minutes*60;
                if (minutes == -1) {
                    minutes = 0;
                }
                if (seconds == 60) {
                    seconds = 0;
                }
                var font_colour = make_colour_rgb(223, 74, 38);
                draw_set_font(asset_get("medFont"));
                draw_text_colour(x - 20, y - 108, string(minutes), font_colour, font_colour, font_colour, font_colour, 1);
                draw_set_font(asset_get("fName"));
                draw_text_colour(x - 8, y - 100, "." + ((seconds < 10) ? "0" + string(seconds) : string(seconds)), font_colour, font_colour, font_colour, font_colour, 1);
                draw_sprite(sprite_get("tauntalttext"), sd_text_image_index, x - sprite_get_width(sprite_get("tauntalttext"))/2, y - sprite_get_height(sprite_get("tauntalttext"))/2 - 106);
            }
            if (sd_boom_image_index < 9 && suicide_loops >= suicide_max_loops - 1) {
                draw_sprite(sprite_get("tauntaltboom"), sd_boom_image_index, x - sprite_get_width(sprite_get("tauntaltboom"))/2 - 6, y - sprite_get_height(sprite_get("tauntaltboom"))/2 - 35);
            }
            if (window == 2 && !post_paused && !hitpause) {
                sd_text_image_index += sd_text_anim_speed;
                if (suicide_timer > 0) {
                    suicide_timer--;
                }
            }
            if (window == 2 && suicide_loops >= suicide_max_loops - 1 && sd_boom_image_index < 9 - sd_boom_anim_speed && !post_paused && !hitpause) {
                sd_boom_image_index += sd_boom_anim_speed;
            } else if (window == 3 && !post_paused && !hitpause) {
                if (window_timer == 0) {
                    var explosion_hit_fx = spawn_hit_fx(x, y - 40, suicide_hit_fx);
                }
                sd_boom_image_index = 0;
            }
            if (hitpause) {
                with (hit_fx_obj) if (hit_fx == other.suicide_hit_fx) {
                    pause = other.hitstop + 1;
                    pause_timer = 0;
                    start_frame = 2;
                    if (start_frame == 2) {
                        if (pause == 2) {
                            with (other) {
                                spawn_hit_fx(other.x, other.y, suicide_later_hit_fx);
                            }
                        } else if (pause == 1) {
                            sprite_index = asset_get("empty_sprite");
                        }
                    }
                }
            }
            break;
    }
}
if (get_match_setting(SET_HITBOX_VIS)) with (pHitBox) {
    if type == 2 draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,0,-1,0.5);
}

if (spears_destroyed != [[noone, noone, 0, 0], [noone, noone, 0, 0], [noone, noone, 0, 0], [noone, noone, 0, 0]] || spears_hit != [[0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0]]) {
    for (i = 0; i < 4; i++) {
        if (spears_destroyed[@i][@2] > 0) {
            if (!post_paused) {
                spears_destroyed[@i][@2]--;
            }
            draw_sprite_ext(sprite_get("ustrong_proj" + string(i + 1)), 7, spears_destroyed[@i][@0], spears_destroyed[@i][@1], spears_destroyed[@i][@3], 1, 0, c_white, 1);
        }
        if (spears_hit[@i][@0] > 0) {
            var spear_sprite = sprite_get("ustrong_proj" + string(i + 1));
            var offset = 72;
            draw_sprite_part_ext(spear_sprite, 5, 0, offset, 72, offset, spears_hit[@i][@1] - sprite_get_xoffset(spear_sprite) * spears_hit[@i][@3], spears_hit[@i][@2] - sprite_get_yoffset(spear_sprite) + offset, spears_hit[@i][@3], 1, c_white, 1);
        }
        
    }
}

// Compatibilities
// Kirby
if (kirby_attacking) {
    draw_sprite(sprite_get("pod_volt"), kirby_volt_image_index, kirby_pos[0] - 134, kirby_pos[1] - 144);
}

if (!post_paused) {
    cur_image = image_index;
}

post_paused = true;