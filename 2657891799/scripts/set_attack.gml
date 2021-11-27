//set_attack

sfx_nair = asset_get("sfx_waterhit_weak")
sfx_fair = asset_get("sfx_swish_weak")
sfx_ustrong = asset_get("sfx_swish_medium")
sfx_dstrong = asset_get("sfx_swish_medium")
sfx_fstrong = asset_get("sfx_swish_weak")

if attack == AT_NSPECIAL {
    set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, clamp(shuriken_charge+1, 2, 4));
    breversed = false
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
    reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK);
}

hit_doll = undefined
counter_hit = noone

if attack == AT_FSPECIAL has_hit = false

reset_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE);
reset_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE);
reset_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE);