// Shellshift
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("shellshift"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("squr_crouch_box"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .01);

set_window_value(AT_NTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 0);


set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 67);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 37);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 155);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NTHROW, 1, HG_HIT_LOCKOUT, 5);