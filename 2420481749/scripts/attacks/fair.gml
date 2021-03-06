set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("oliviaappear"));
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, .65);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, sound_get("olivareturn2"));
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.9);

set_num_hitboxes(AT_FAIR, 3);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 62);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, starryhit);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("oliviasinghit"));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 65);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 52);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, starryhit);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("oliviasinghit"));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 65);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 78);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 78);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 55);
set_hitbox_value(AT_FAIR, 3, HG_EFFECT, 9);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, starryhit);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("oliviasinghit"));
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 3);