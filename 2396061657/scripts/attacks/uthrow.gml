set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED, -9);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(AT_UTHROW,1);

set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 44);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, sound_get("BTL_HAND_CRITICAL"));
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, hit_uthrow);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -80);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_UTHROW, 1, HG_HIT_PARTICLE_NUM, 5);