set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
var num_flutters = 2;
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3 + (num_flutters * 4));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

// Wind up
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Hold
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

for (i = 0; i < num_flutters; i++) {
    // Flutter forward kick
    set_window_value(AT_DAIR, 3 + (i * 4), AG_WINDOW_TYPE, 1);
    set_window_value(AT_DAIR, 3 + (i * 4), AG_WINDOW_LENGTH, 2);
    set_window_value(AT_DAIR, 3 + (i * 4), AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_DAIR, 3 + (i * 4), AG_WINDOW_ANIM_FRAME_START, 3);
    set_window_value(AT_DAIR, 3 + (i * 4), AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_DAIR, 3 + (i * 4), AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
    set_window_value(AT_DAIR, 3 + (i * 4), AG_WINDOW_SFX_FRAME, 1);
    
    set_window_value(AT_DAIR, 4 + (i * 4), AG_WINDOW_TYPE, 1);
    set_window_value(AT_DAIR, 4 + (i * 4), AG_WINDOW_LENGTH, 2);
    set_window_value(AT_DAIR, 4 + (i * 4), AG_WINDOW_ANIM_FRAMES, 0);
    set_window_value(AT_DAIR, 4 + (i * 4), AG_WINDOW_ANIM_FRAME_START, 5);

    // Flutter backward kick
    set_window_value(AT_DAIR, 5 + (i * 4), AG_WINDOW_TYPE, 1);
    set_window_value(AT_DAIR, 5 + (i * 4), AG_WINDOW_LENGTH, 2);
    set_window_value(AT_DAIR, 5 + (i * 4), AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_DAIR, 5 + (i * 4), AG_WINDOW_ANIM_FRAME_START, 7);
    set_window_value(AT_DAIR, 5 + (i * 4), AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_DAIR, 5 + (i * 4), AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
    set_window_value(AT_DAIR, 5 + (i * 4), AG_WINDOW_SFX_FRAME, 1);
    
    set_window_value(AT_DAIR, 6 + (i * 4), AG_WINDOW_TYPE, 1);
    set_window_value(AT_DAIR, 6 + (i * 4), AG_WINDOW_LENGTH, 2);
    set_window_value(AT_DAIR, 6 + (i * 4), AG_WINDOW_ANIM_FRAMES, 0);
    set_window_value(AT_DAIR, 6 + (i * 4), AG_WINDOW_ANIM_FRAME_START, 9);
}

// Endlag
set_window_value(AT_DAIR, 3 + (num_flutters * 4), AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3 + (num_flutters * 4), AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 3 + (num_flutters * 4), AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 3 + (num_flutters * 4), AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_DAIR, num_flutters * 2);

// Final hit
var box_duration = 2;
set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2 + (num_flutters * 4));
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, box_duration);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 91);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.4);

set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// Flutter
for (i = 0; i < ((2 * num_flutters) - 1); i++) {
    set_hitbox_value(AT_DAIR, 2 + i, HG_PARENT_HITBOX, 0);
    set_hitbox_value(AT_DAIR, 2 + i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DAIR, 2 + i, HG_HITBOX_GROUP, 1);
    set_hitbox_value(AT_DAIR, 2 + i, HG_WINDOW, 4 + (i * 2));
    set_hitbox_value(AT_DAIR, 2 + i, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_DAIR, 2 + i, HG_LIFETIME, box_duration);
    set_hitbox_value(AT_DAIR, 2 + i, HG_SHAPE, 0);
    set_hitbox_value(AT_DAIR, 2 + i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_DAIR, 2 + i, HG_HITBOX_Y, -15);
    set_hitbox_value(AT_DAIR, 2 + i, HG_WIDTH, 91);
    set_hitbox_value(AT_DAIR, 2 + i, HG_HEIGHT, 72);
    set_hitbox_value(AT_DAIR, 2 + i, HG_PRIORITY, 1);
    set_hitbox_value(AT_DAIR, 2 + i, HG_HITBOX_GROUP, -1);
    
    set_hitbox_value(AT_DAIR, 2 + i, HG_DAMAGE, 2);
    set_hitbox_value(AT_DAIR, 2 + i, HG_ANGLE, 20);
    set_hitbox_value(AT_DAIR, 2 + i, HG_ANGLE_FLIPPER, 4);
    set_hitbox_value(AT_DAIR, 2 + i, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_DAIR, 2 + i, HG_KNOCKBACK_SCALING, 0.0);
    set_hitbox_value(AT_DAIR, 2 + i, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_DAIR, 2 + i, HG_HITPAUSE_SCALING, 0.2);
    
    set_hitbox_value(AT_DAIR, 2 + i, HG_VISUAL_EFFECT, 303);
    set_hitbox_value(AT_DAIR, 2 + i, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
}