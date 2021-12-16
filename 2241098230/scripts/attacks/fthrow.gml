set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fthrow_air"));
set_attack_value(AT_FTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("fthrow_air_hurt"));
set_attack_value(AT_FTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_INVINCIBILITY, 1);

//Throw 1
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.04);
set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

//Smoked throw
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.04);
set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);


set_num_hitboxes(AT_FTHROW, 2);

//Normal
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(AT_FTHROW, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 1);

//Smoked
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_FTHROW, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTHROW, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, smokeconsume_fx_bot);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, 32);
