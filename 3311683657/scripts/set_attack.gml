//set_attack

sfx_nair = asset_get("sfx_ori_seinhit_medium")
sfx_fair = asset_get("sfx_swipe_medium1")
sfx_ustrong = asset_get("sfx_ori_uptilt_single")
sfx_dstrong = asset_get("sfx_swipe_medium1")
sfx_fstrong = asset_get("sfx_swipe_weak2")

if move_cooldown[AT_FSPECIAL] <= 2 {
    reset_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE);
    reset_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE);
    reset_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE);
}

if attack == AT_NSPECIAL {
    set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, clamp(shuriken_charge+1, 2, 4));
    breversed = false
    nspec_empowered = false
    nspec_cloud_count = 0
    nspec_sucking = false
    reset_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START);
    reset_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX);
    reset_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX);
    reset_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE);
    reset_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_HITPAUSE);
    reset_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE);
}

if attack == AT_FSPECIAL && move_cooldown[AT_FSPECIAL] <= 2 {
    if !ss_start {
        ss_start = true
        ss_dist = 60*spr_dir
        ss_timer = 0
        reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO);
        move_cooldown[AT_FSPECIAL] = 12
        ss_count = 0
    } else {
        //ss_timer = 90
    }
}

if attack == AT_USPECIAL {
    uspec_dir = 90
    uspec_draw_dir = 90
    draw_jet = false
    draw_jet_timer = 0
    splash_info = [undefined,undefined]
    jet_array = array_create(28, [0,0,0,0])
    spawn_splash = false
    has_collided = false //whether jet has hit ground
    collision_x = undefined //coords of collision
    collision_y = undefined
    //reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
    //reset_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING);
    //reset_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK);
    
    var slot1 = 5
    var slot2 = 0
    var col_slot = get_player_color(player)
    var col_1_r = get_color_profile_slot_r(col_slot, slot1)
    var col_1_g = get_color_profile_slot_g(col_slot, slot1)
    var col_1_b = get_color_profile_slot_b(col_slot, slot1)
    holo_col_1 = make_color_rgb(col_1_r, col_1_g, col_1_b)
    
    var col_2_r = get_color_profile_slot_r(col_slot, slot2)
    var col_2_g = get_color_profile_slot_g(col_slot, slot2)
    var col_2_b = get_color_profile_slot_b(col_slot, slot2)
    holo_col_2 = make_color_rgb(col_2_r, col_2_g, col_2_b)
}

if attack == AT_TAUNT && down_down {
    attack = AT_TAUNT_2
}

used_uspec = false

counter_hit = noone

if attack == AT_FSPECIAL has_hit = false

