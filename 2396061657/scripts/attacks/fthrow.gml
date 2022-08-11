set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FTHROW,1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, hit_roses);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 40);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, sound_get("BTL_RAPIER_CRITICAL"));
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_CAMERA_SHAKE, 2);

set_hitbox_value(AT_FTHROW, 1, HG_HIT_PARTICLE_NUM, 4);