//draw_debug_text(round(x), round(y) + 20, "State: " + string(state))

if (sprite_exists(sprite_index)) {
    if (strong_charge > 0 && strong_charge % 10 < 6)
    {    
        
        gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_set_alpha(0);
        draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(1);
        draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale * spr_dir, image_yscale, image_angle, image_blend, 0.5);
        gpu_set_blendenable(true);
        gpu_set_colorwriteenable(true,true,true,true);
        gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
        gpu_set_alphatestenable(true);
        draw_rectangle_color(0, 0, room_width, room_height, 
            c_yellow, c_yellow, c_yellow, c_yellow, false);
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);
        draw_set_alpha(1);
    }
    if (state == PS_ATTACK_AIR && attack == AT_NSPECIAL && window == 7) {
        var modulo = player_id.nspecial_charge_timer <= player_id.nspecial_charge_timer_max_hold ? 8 : 4;
        var player_color = get_player_color(player_id.player);
        var charge_color = make_color_rgb(get_color_profile_slot_r(player_color, 4), get_color_profile_slot_g(player_color, 4), get_color_profile_slot_b(player_color, 4));
        if (get_gameplay_time() % modulo <= modulo / 2) {
            gpu_set_blendenable(false);
            gpu_set_colorwriteenable(false, false, false, true);
            draw_set_alpha(0);
            draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
            draw_set_alpha(1);
            draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale * spr_dir, image_yscale, image_angle, image_blend, 0.5);
            gpu_set_blendenable(true);
            gpu_set_colorwriteenable(true,true,true,true);
            gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
            gpu_set_alphatestenable(true);
            draw_rectangle_color(0, 0, room_width, room_height, 
                charge_color, charge_color, charge_color, charge_color, false);
            gpu_set_alphatestenable(false);
            gpu_set_blendmode(bm_normal);
            draw_set_alpha(1);
        }
    }
}

if (follow_type == 1) {
     draw_sprite_ext(sprite_get("sword_arrow"), 0, round(x), round(y) - follower_height, image_xscale, image_yscale, 0, get_player_hud_color(player_id.player), 1);
}

with (pHurtBox) {
    if (playerID == other.player_id) {
        if (visible) {
            with (other)
            if (hurtbox_mask >= 0)
                draw_sprite_ext(hurtbox_mask, image_index, round(x), round(y), image_xscale * spr_dir, image_yscale, image_angle, image_blend, 0.5);
        }
    }
}