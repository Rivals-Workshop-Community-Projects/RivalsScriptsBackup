set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("dair_grab"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NTHROW, AG_LANDING_LAG, 4);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("dair_grab_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, 11);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);


set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);

set_num_hitboxes(AT_NTHROW,1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 96);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, bigsmoke);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));