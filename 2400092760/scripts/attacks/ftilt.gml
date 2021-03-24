set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 2);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3    );
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 95);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 1.0);
//set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("F_air_U_air"));
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, hit_sprites[0]);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3    );
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 49);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -43);

set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 105);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 100);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 3, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 3, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .3);
//set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sound_get("hit4"));
//set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 3, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, hit_sprites[2]);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 20)
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -5);

set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 49);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -43);