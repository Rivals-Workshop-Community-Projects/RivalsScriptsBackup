set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("revolver_cock"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("revolver_shot"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//No gun
set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, -2);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 2);

//Half stage projectile lol
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_DTILT, 2, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 55);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 1);