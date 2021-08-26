set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 2);

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 130);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("bullet_time"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, sound_get("bullet_time"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(AT_DAIR, 2);
//aerial
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("bullet_time_footstool"));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

//grounded
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 18);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("bullet_time_footstool"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);