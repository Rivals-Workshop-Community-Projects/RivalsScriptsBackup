set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6)

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_GOTO, 7);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//bow up attack
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 0);

//shoot
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 90);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -110);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 1);