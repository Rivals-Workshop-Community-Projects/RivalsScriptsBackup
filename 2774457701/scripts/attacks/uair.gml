set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uaie"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_UAIR, 1);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 129);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 138);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));