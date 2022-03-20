set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("utilt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_UAIR, 1);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 69);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));