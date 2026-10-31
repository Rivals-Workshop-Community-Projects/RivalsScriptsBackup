set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("pyro"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("pyro_burn"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, -12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 8);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("pyro_burn"));

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, sound_get("pyro_burn"));

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED, -3);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_SFX, sound_get("pyro_launch"))
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HSPEED, 0);


set_num_hitboxes(AT_EXTRA_1,7);

//Loop 1
set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.0)
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("pyro_hit"));
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 1)
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, 1)
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, -12);

//Loop 2
set_hitbox_value(AT_EXTRA_1, 3, HG_PARENT_HITBOX, 1)
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, 2)
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, -12);

set_hitbox_value(AT_EXTRA_1, 4, HG_PARENT_HITBOX, 1)
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_GROUP, 3)
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, -12);

//Final hit
set_hitbox_value(AT_EXTRA_1, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_EXTRA_1, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_WIDTH, 160);
set_hitbox_value(AT_EXTRA_1, 5, HG_HEIGHT, 160);
set_hitbox_value(AT_EXTRA_1, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_DAMAGE, 20);
set_hitbox_value(AT_EXTRA_1, 5, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 5, HG_KNOCKBACK_SCALING, 1.15)
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_SFX, sound_get("hit_smb2"));
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_EXTRA_1, 5, HG_EXTRA_HITPAUSE, 10);

//Loop 3
set_hitbox_value(AT_EXTRA_1, 6, HG_PARENT_HITBOX, 1)
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_GROUP, 6)
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_X, -12);

set_hitbox_value(AT_EXTRA_1, 7, HG_PARENT_HITBOX, 1)
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_GROUP, 7)
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_EXTRA_1, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_X, -12);