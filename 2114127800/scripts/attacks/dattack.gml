set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_SFX, asset_get("sfx_blow_heavy2"));

set_num_hitboxes(AT_DATTACK, 3);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 35)
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 30)
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 32);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 90);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 15)
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 67);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));