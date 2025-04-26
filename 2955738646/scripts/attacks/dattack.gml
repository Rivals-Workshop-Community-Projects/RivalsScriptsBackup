set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, -0.9);
set_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1); //Knee out
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_WHIFFLAG, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("DashAttack_attack"));

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1); //Done skid
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1); //Empty window
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_GOTO, 10);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1); //Holding out
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 15);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 3);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1); //Kick!
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 26);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_DATTACK, 7, AG_WINDOW_TYPE, 1); //Ending endlag
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DATTACK, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_window_value(AT_DATTACK, 8, AG_WINDOW_TYPE, 1); //Jumping if DAttack'd off ledge
set_window_value(AT_DATTACK, 8, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DATTACK, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_DATTACK, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_num_hitboxes(AT_DATTACK, 10);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1); //Knee
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 254);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 7);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("DashAttack_hit"));
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1); //1
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, -115);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 14);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1); //2
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, -115);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 26);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 36);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DATTACK, 3, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1); //3
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, -115);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, -28);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 48);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DATTACK, 4, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1); //4
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, -115);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 5, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 5, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT_Y_OFFSET, -38);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DATTACK, 5, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1); //5
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, -115);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 6, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_X_OFFSET, 45);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_Y_OFFSET, -18);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DATTACK, 6, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_TYPE, 1); //6
set_hitbox_value(AT_DATTACK, 7, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_X, -115);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 7, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 7, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 7, HG_ANGLE, 40);
set_hitbox_value(AT_DATTACK, 7, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DATTACK, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 7, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 7, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 7, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DATTACK, 7, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DATTACK, 7, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(AT_DATTACK, 7, HG_VISUAL_EFFECT_Y_OFFSET, 6);
set_hitbox_value(AT_DATTACK, 7, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DATTACK, 7, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DATTACK, 7, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_TYPE, 1); //7 - final hit
set_hitbox_value(AT_DATTACK, 8, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 8, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DATTACK, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_X, -115);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 8, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 8, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 8, HG_PRIORITY, 9);
set_hitbox_value(AT_DATTACK, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 8, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 8, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DATTACK, 8, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DATTACK, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 8, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 8, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DATTACK, 8, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DATTACK, 8, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 8, HG_VISUAL_EFFECT_X_OFFSET, 7);
set_hitbox_value(AT_DATTACK, 8, HG_VISUAL_EFFECT_Y_OFFSET, 7);
set_hitbox_value(AT_DATTACK, 8, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DATTACK, 8, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DATTACK, 8, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 9, HG_HITBOX_TYPE, 1); //Follow upper kick
set_hitbox_value(AT_DATTACK, 9, HG_WINDOW, 6);
set_hitbox_value(AT_DATTACK, 9, HG_WINDOW_CREATION_FRAME, 23);
set_hitbox_value(AT_DATTACK, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 9, HG_HITBOX_X, 12);
set_hitbox_value(AT_DATTACK, 9, HG_HITBOX_Y, -54);
set_hitbox_value(AT_DATTACK, 9, HG_WIDTH, 90);
set_hitbox_value(AT_DATTACK, 9, HG_HEIGHT, 109);
set_hitbox_value(AT_DATTACK, 9, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 9, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 9, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 9, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DATTACK, 9, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 9, HG_DRIFT_MULTIPLIER, 0.001);
set_hitbox_value(AT_DATTACK, 9, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(AT_DATTACK, 9, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DATTACK, 9, HG_VISUAL_EFFECT, 200);
set_hitbox_value(AT_DATTACK, 9, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_DATTACK, 9, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_DATTACK, 9, HG_HIT_SFX, asset_get("sfx_ori_ustrong_launch"));
set_hitbox_value(AT_DATTACK, 9, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 9, HG_HITBOX_GROUP, -1);