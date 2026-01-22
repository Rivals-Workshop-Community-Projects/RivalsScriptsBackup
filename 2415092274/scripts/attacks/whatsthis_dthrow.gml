//throwtests

set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("whatsthis_throw_d"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);



set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 72);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 63);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


























