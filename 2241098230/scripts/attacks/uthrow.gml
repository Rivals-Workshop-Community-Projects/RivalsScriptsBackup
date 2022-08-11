set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("uthrow_air"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));
set_attack_value(AT_UTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("uthrow_air_hurt"));
set_attack_value(AT_UTHROW, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_UTHROW, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 5);
set_window_value(AT_UTHROW, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 10);
 

//Throw 1
set_window_value(AT_UTHROW, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_UTHROW, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.04);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

//Smoked Throw
set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTHROW, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTHROW, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.04);
set_window_value(AT_UTHROW, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

set_num_hitboxes(AT_UTHROW, 2);

//Normal
set_hitbox_value(AT_UTHROW, 1, HG_MUNO_HITBOX_NAME, "Throw");
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(AT_UTHROW, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 1);

//Smoked
set_hitbox_value(AT_UTHROW, 2, HG_MUNO_HITBOX_NAME, "Throw (Consumed)");
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 80);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_UTHROW, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_UTHROW, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_UTHROW, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT, smokeconsume_fx_bot);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, 32);
