set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 14);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

// Uppercut Charge

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

// Strong Uppercut

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("dashcharge"));

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("voicefspecial"));

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("trainwhistle"));

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 50);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sound_get("dash2"));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 4)
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 4)

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 4)
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 4)

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 4)
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 4)

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 4)
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 4)

set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 9999);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_GROUND_FRICTION, 4)
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, 4)

// Light Uppercut

set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_SFX, sound_get("dash1"));

set_window_value(AT_FSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HSPEED, 20);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1)
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_CUSTOM_AIR_FRICTION, 1)
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_SFX, sound_get("voicefspecial"));

set_window_value(AT_FSPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_SFX, sound_get("trainwhistle"));
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.1)
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.1)

set_window_value(AT_FSPECIAL, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.25)
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.25)
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_CANCEL_TYPE, 2)
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_CANCEL_FRAME, 4)

set_num_hitboxes(AT_FSPECIAL, 6);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, hitsparkheavy);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("bighit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.4);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, hitsparkheavy);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("bighit"));
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.4);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, hitsparkheavy);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sound_get("punchlight"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.4);
set_hitbox_value(AT_FSPECIAL, 3, HG_TECHABLE, 3);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 13);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, hitsparkheavy);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, sound_get("punchmedium"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.4);
set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 3);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 14);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 120);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, hitsparkheavy);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, sound_get("punchheavy"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.4);
set_hitbox_value(AT_FSPECIAL, 5, HG_TECHABLE, 3);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 14);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 120);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 20);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, hitsparksuper);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, sound_get("bighit"));
set_hitbox_value(AT_FSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.4);
set_hitbox_value(AT_FSPECIAL, 6, HG_TECHABLE, 3);