set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("dattackjump"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("dattackslam"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 75);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 75);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 320);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 0.45);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 304);