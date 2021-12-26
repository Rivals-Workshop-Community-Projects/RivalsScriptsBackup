set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

// flip
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);

// coil
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 3);

// spin kick
var kick_duration = 3;
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, kick_duration);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// slow down
var spin_duration = 18;
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, spin_duration);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

// flip back
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);


set_num_hitboxes(AT_UAIR, 2);

// Initial hit
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, kick_duration);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -87);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 63);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5.5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// Lingering hit
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, spin_duration);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -87);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 63);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

/*
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,1);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
*/