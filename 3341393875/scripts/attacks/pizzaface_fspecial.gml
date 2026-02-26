set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("pizzaface_fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("pizzaface_fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("pizzaface_fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 20 - (has_rune("C") * 10));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("groundpoundstart"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 9);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_FSPECIAL, 5);

var n = 0;
while(n<5)
{
    n++;
    set_hitbox_value(AT_FSPECIAL, n, HG_HITBOX_GROUP, n);
    set_hitbox_value(AT_FSPECIAL, n, HG_PARENT_HITBOX, n);
    set_hitbox_value(AT_FSPECIAL, n, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSPECIAL, n, HG_WINDOW, 2);
    set_hitbox_value(AT_FSPECIAL, n, HG_LIFETIME, 4);
    set_hitbox_value(AT_FSPECIAL, n, HG_WINDOW_CREATION_FRAME, 4*n - 3);
    set_hitbox_value(AT_FSPECIAL, n, HG_HITBOX_X, 8);
    set_hitbox_value(AT_FSPECIAL, n, HG_HITBOX_Y, -56);
    set_hitbox_value(AT_FSPECIAL, n, HG_WIDTH, 110);
    set_hitbox_value(AT_FSPECIAL, n, HG_HEIGHT, 110);
    set_hitbox_value(AT_FSPECIAL, n, HG_PRIORITY, 2);
    set_hitbox_value(AT_FSPECIAL, n, HG_DAMAGE, 2);
    set_hitbox_value(AT_FSPECIAL, n, HG_ANGLE, 35);
    set_hitbox_value(AT_FSPECIAL, n, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_FSPECIAL, n, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL, n, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(AT_FSPECIAL, n, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL, n, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(AT_FSPECIAL, n, HG_IGNORES_PROJECTILES, 1);
    set_hitbox_value(AT_FSPECIAL, n, HG_SDI_MULTIPLIER, 0.5);
    //set_hitbox_value(AT_FSPECIAL, n, HG_ANGLE_FLIPPER, 2);
}

//final hit
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));