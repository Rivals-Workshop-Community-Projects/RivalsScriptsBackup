//Credit to FelixBlobDev
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
//Punch
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);
//Punch2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 0);
//Rapid
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
//Punch3
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 10, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 10, AG_WINDOW_HSPEED, 4);

set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 17);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 11, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 5);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 75);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, fx_poison_small);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, fx_poison_small);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, fx_poison_small);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, fx_poison_small);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 10);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 45);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, fx_poison_large);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 5, HG_EXTRA_CAMERA_SHAKE, 1);