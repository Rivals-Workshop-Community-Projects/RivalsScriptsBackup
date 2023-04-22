set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 5);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -15);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 85);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sfx_waterhit_weak);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, vfx_waterhit_small);

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -15);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 85);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sfx_waterhit_weak);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, vfx_waterhit_small);

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -15);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 85);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sfx_waterhit_weak);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, vfx_waterhit_small);

set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -15);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 85);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, sfx_waterhit_weak);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, vfx_waterhit_small);

set_hitbox_value(AT_BAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -22);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 85);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, sfx_waterhit_medium);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, vfx_waterhit_medium);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, -20);