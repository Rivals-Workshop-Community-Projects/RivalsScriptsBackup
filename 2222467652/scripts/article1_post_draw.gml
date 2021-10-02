draw_sprite_ext(boulder_index, 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 1);
if (boulder_index == sprite_get("boulder_trolled")){
    draw_sprite_ext(boulder_index, 0, x, y, spr_dir, 1, fireball_draw_angle, make_colour_rgb(round(get_color_profile_slot_r(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(fireball_onfire_id.player), 0) * 0.5)), 0.1);
}
if (fireball_onfire){
    if (boulder_index == sprite_get("boulder_coin")){
        draw_sprite_ext(sprite_get("boulder_coin_outline"), 0, x, y, spr_dir, 1, fireball_draw_angle, make_colour_rgb(round(get_color_profile_slot_r(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(fireball_onfire_id.player), 0) * 0.5)), 1);
    } else {
        if (boulder_index == sprite_get("boulder_trolled")){
            draw_sprite_ext(sprite_get("boulder_trolled_outline"), 0, x, y, spr_dir, 1, fireball_draw_angle, make_colour_rgb(round(get_color_profile_slot_r(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(fireball_onfire_id.player), 0) * 0.5)), 1);
        } else {
            draw_sprite_ext(sprite_get("boulder_outline"), 0, x, y, spr_dir, 1, fireball_draw_angle, make_colour_rgb(round(get_color_profile_slot_r(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(fireball_onfire_id.player), 0) * 0.5)), 1);
        }
    }
}
if (bounces < 1){
    if (boulder_index == sprite_get("boulder_gb")){
        draw_sprite_ext(sprite_get("boulder_gb_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 1);
    } else {
        if (boulder_index == sprite_get("boulder_gold")){
            draw_sprite_ext(sprite_get("boulder_gold_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 1);
        } else {
            if (boulder_index == sprite_get("boulder_nes")){
                draw_sprite_ext(sprite_get("boulder_nes_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 1);
            } else {
                if (boulder_index == sprite_get("boulder_archen")){
                    draw_sprite_ext(sprite_get("boulder_archen_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 1);
                } else {
                    if (boulder_index == sprite_get("boulder_archen_alt")){
                        draw_sprite_ext(sprite_get("boulder_archen_alt_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 1);
                    } else {
                        if (boulder_index == sprite_get("boulder_negative")){
                            draw_sprite_ext(sprite_get("boulder_cracks_outline"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 1);
                        } else {
                            if (boulder_index == sprite_get("boulder_fading")){
                                draw_sprite_ext(sprite_get("boulder_fading_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 0.8);
                            } else {
                                draw_sprite_ext(sprite_get("boulder_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 1);
                            }
                        }
                    }
                }
            }
        }
    }
    if (fireball_onfire){
        draw_sprite_ext(sprite_get("boulder_cracks_outline"), 0, x, y, spr_dir, 1, fireball_draw_angle, make_colour_rgb(round(get_color_profile_slot_r(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(fireball_onfire_id.player), 0) * 0.5)), 1);
    }
}

if (bounces < 2){
    if (boulder_index == sprite_get("boulder_gb")){
        draw_sprite_ext(sprite_get("boulder_gb_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 0.05);
    } else {
        if (boulder_index == sprite_get("boulder_gold")){
            draw_sprite_ext(sprite_get("boulder_gold_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 0.05);
        } else {
            if (boulder_index == sprite_get("boulder_nes")){
                draw_sprite_ext(sprite_get("boulder_nes_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 0.05);
            } else {
                if (boulder_index == sprite_get("boulder_archen") || boulder_index == sprite_get("boulder_archen_alt")){
                    draw_sprite_ext(sprite_get("boulder_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 1);
                } else {
                    if (boulder_index == sprite_get("boulder_fading")){
                        draw_sprite_ext(sprite_get("boulder_fading_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 0.1);
                    } else {
                        draw_sprite_ext(sprite_get("boulder_cracks"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 0.05);
                    }
                }
            }
        }
    }
    if (fireball_onfire){
        draw_sprite_ext(sprite_get("boulder_cracks_outline"), 0, x, y, spr_dir, 1, fireball_draw_angle, make_colour_rgb(round(get_color_profile_slot_r(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(fireball_onfire_id.player), 0) * 0.5)), 0.05);
    }
}

if (get_player_color(player_id.player) == player_id.alt_waluigi){
    draw_sprite_ext(sprite_get("boulder_smashlogo"), 0, x, y, spr_dir, 1, 0, c_white, 1);
    if (fireball_onfire){
        draw_sprite_ext(sprite_get("boulder_smashlogo_outline"), 0, x, y, spr_dir, 1, 0, make_colour_rgb(round(get_color_profile_slot_r(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(fireball_onfire_id.player), 0) * 0.5)), 1);
    }
}

if (dr_mario_cape_timer > 0){
    with(dr_mario_cape_id){
        shader_start();
        draw_sprite_ext(other.boulder_glow_index, 0, other.x, other.y, other.spr_dir, 1, other.fireball_draw_angle, make_colour_rgb(round(get_color_profile_slot_r(get_player_color(player), 0)), round(get_color_profile_slot_g(get_player_color(player), 0)), round(get_color_profile_slot_b(get_player_color(player), 0))), 0.25);
        shader_end();
    }
}

if (egg_hitpause && egg_hitstop >= egg_hitstop_full * 0.5){
    if (boulder_index == sprite_get("boulder_archen") || boulder_index == sprite_get("boulder_archen_alt")){
        if (bounces < 1){
            draw_sprite_ext(sprite_get("boulder_archen_cracks_glow"), 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 0.5);
        } else {
            draw_sprite_ext(boulder_glow_index, 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 0.5);
        }
    } else {
        draw_sprite_ext(boulder_glow_index, 0, x, y, spr_dir, 1, fireball_draw_angle, c_white, 0.5);
    }
}

if (player_id.hurtboxID.visible){
    draw_sprite_ext(mask_index, 0, x, y, spr_dir, 1, 0, c_white, 0.5);
}

if player_id.phone_cheats[player_id.cheat_funny_bird]{
	draw_debug_text(x, y, "bird up");
}

//make_colour_rgb(round(get_color_profile_slot_r(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(fireball_onfire_id.player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(fireball_onfire_id.player), 0) * 0.5))