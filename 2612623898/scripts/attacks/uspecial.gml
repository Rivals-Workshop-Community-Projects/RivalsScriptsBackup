set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 12);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("smoke"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.55);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.35);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("slam1"));
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("slam2"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, -2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_num_hitboxes(AT_USPECIAL, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 32);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("slam1"));
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 32);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 32);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -72);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 32);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 42);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, fx_expl);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, sound_get("thud"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 37);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -42);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 76);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 76);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, hfx_ssl_bigger);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, sound_get("smoke"));
set_hitbox_value(AT_USPECIAL, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_PARTICLE_NUM, 1);