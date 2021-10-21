set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_AIR_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 16);


set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -2);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_DAIR, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 24);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 58);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("heavyslashsoku"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -8);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 58);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("heavyslashsoku"));

