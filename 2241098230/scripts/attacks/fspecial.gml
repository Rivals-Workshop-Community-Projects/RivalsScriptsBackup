set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);

//Grabbing
set_window_value(AT_FSPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 14 - (has_rune("C") * 7));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_FSPECIAL, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.02);

set_window_value(AT_FSPECIAL, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 35 - (has_rune("C") * 18));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.55);

//Grab Success
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, -.5);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.01);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//Smoke Consume
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.55);

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED, -1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED, -7);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.01);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//Cancel
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED, -1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.03);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.03);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_num_hitboxes(AT_FSPECIAL, 6);

set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Early Grab");
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 64 + (has_rune("O") * 24));
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 42 + (has_rune("O") * 24));
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Grab");
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 43);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 42 + (has_rune("O") * 24));
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 42 + (has_rune("O") * 24));
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


//Normal
set_hitbox_value(AT_FSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Hit");
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 68);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 100);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_TECHABLE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Throw");
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 56);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 10 + (has_rune("J") * 2));
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 1);


//Smoked
set_hitbox_value(AT_FSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Hit (Consumed)");
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -14);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 68);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 100);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_FSPECIAL, 5, HG_TECHABLE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, smokeconsume_fx_bot);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, 32);

set_hitbox_value(AT_FSPECIAL, 6, HG_MUNO_HITBOX_NAME, "Throw (Consumed)");
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 56);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 56);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 9 + (has_rune("J") * 3));
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 1);
