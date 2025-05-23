set_attack_value(AT_UAIR2, AG_CATEGORY, 1);
set_attack_value(AT_UAIR2, AG_SPRITE, sprite_get("uair2"));
set_attack_value(AT_UAIR2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR2, AG_LANDING_LAG, 7);
set_attack_value(AT_UAIR2, AG_HURTBOX_SPRITE, sprite_get("uair2_hurt"));

set_window_value(AT_UAIR2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR2, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UAIR2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR2, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_window_value(AT_UAIR2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR2, 4, AG_WINDOW_HAS_WHIFFLAG, 4);


set_num_hitboxes(AT_UAIR2, 3);

set_hitbox_value(AT_UAIR2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR2, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_UAIR2, 1, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UAIR2, 1, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR2, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UAIR2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR2, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_UAIR2, 2, HG_HITBOX_Y, -140);
set_hitbox_value(AT_UAIR2, 2, HG_WIDTH, 24);
set_hitbox_value(AT_UAIR2, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_UAIR2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR2, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR2, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR2, 2, HG_VISUAL_EFFECT, shock_big);
set_hitbox_value(AT_UAIR2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
