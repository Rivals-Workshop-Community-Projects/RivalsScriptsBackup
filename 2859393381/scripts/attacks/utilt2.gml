set_attack_value(AT_UTILT2, AG_SPRITE, sprite_get("utilt2"));
set_attack_value(AT_UTILT2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT2, AG_HURTBOX_SPRITE, sprite_get("utilt2_hurt"));

set_window_value(AT_UTILT2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT2, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT2, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_UTILT2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT2, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT2, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT2,3);

set_hitbox_value(AT_UTILT2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT2, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_UTILT2, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_UTILT2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UTILT2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT2, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT2, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT2, 2, HG_WIDTH, 72);
set_hitbox_value(AT_UTILT2, 2, HG_HEIGHT, 160);
set_hitbox_value(AT_UTILT2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT2, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT2, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_UTILT2, 2, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_UTILT2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT2, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT2, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_UTILT2, 3, HG_HITBOX_Y, -150);
set_hitbox_value(AT_UTILT2, 3, HG_WIDTH, 24);
set_hitbox_value(AT_UTILT2, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_UTILT2, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT2, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT2, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UTILT2, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT2, 3, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_UTILT2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));