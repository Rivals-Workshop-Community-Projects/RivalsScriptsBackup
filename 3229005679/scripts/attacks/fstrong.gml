set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("shotgunshot"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, -6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.45);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.45);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, sound_get("shotgunload"));
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH)-1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.45);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG, 3);


//first blast
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, HFX_ZET_FIRE_BIG);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 6);

//second blast
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, HFX_ZET_FIRE);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 6);

//third blast
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 110);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, HFX_ZET_FIRE);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 6);