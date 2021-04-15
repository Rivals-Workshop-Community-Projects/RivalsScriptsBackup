set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_absa_jump"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);

//jumptackle
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -3.5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);

//slide
set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_land_med2"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("falldown"));

//cancellable1
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);

//cancellable2
set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 1);

//cancellable3
set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 1);

//cancellable4
set_window_value(AT_DATTACK, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_DATTACK, 3);

set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, dashhit);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, dashhit);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, dashhit);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);
