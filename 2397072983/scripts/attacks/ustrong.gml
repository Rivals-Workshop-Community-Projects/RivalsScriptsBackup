set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_USTRONG, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
	
	
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_USTRONG, 4);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2); 
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3); 
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4); 
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 38);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -52);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 5); 
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITSTUN_MULTIPLIER, 1);
