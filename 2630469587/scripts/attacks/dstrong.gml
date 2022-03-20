set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("swash"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 22);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_SFX, sound_get("sheathe"));

set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 27);


set_num_hitboxes(AT_DSTRONG, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 88);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("dsmashhit"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -60);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 85);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("dsmashhit"));
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);

