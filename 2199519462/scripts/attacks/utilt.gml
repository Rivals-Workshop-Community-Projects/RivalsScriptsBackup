set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_CANCEL_FRAME, 8);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_UTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_UTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT,4);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, hfx[4]);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 4, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, hfx[4]);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_EFFECT, 420);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 29);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 3, HG_EFFECT, 420);