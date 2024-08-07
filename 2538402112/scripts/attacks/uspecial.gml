set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("Escape"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12);
// set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//RUNES
if has_rune("I"){
    set_num_hitboxes(AT_USPECIAL, 1);
    set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
    set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 8);
    set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -2);
    set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -43);
    set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 40);
    set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 110);
    set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
    set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
    set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.75);
    set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.25);
    set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
    set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
}

if has_rune("J"){
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
}