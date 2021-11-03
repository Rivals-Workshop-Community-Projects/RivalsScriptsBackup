//This is code for the 2nd dair

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("dair"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 16);


set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, -4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, -7);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("dair"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_EXTRA_1, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 24);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 75);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_FINAL_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("heavyslashsoku"));

set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, -8);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 58);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, sound_get("heavyslashsoku"));

