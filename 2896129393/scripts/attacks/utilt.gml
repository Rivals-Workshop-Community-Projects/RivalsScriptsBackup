set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_UTILT,1,AG_WINDOW_LENGTH)-1);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, get_window_value(AT_UTILT,3,AG_WINDOW_LENGTH)-1);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,2);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, get_window_value(AT_UTILT,2,AG_WINDOW_LENGTH));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, get_window_value(AT_UTILT,4,AG_WINDOW_LENGTH));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .4);
//set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
