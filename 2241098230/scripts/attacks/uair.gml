set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 3);
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 6);

set_window_value(AT_UAIR, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UAIR, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED_TYPE, 1);

//Normal
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_UAIR, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_UAIR, 6, AG_WINDOW_VSPEED_TYPE, 1);

//Smoke consume
set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_UAIR, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UAIR, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UAIR, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_UAIR, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UAIR, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UAIR, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_UAIR, 8, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_UAIR, 8, AG_WINDOW_VSPEED_TYPE, 1);


set_num_hitboxes(AT_UAIR, 3);
set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Grab");
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 40 + (has_rune("O") * 144));
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 40 + (has_rune("O") * 144));
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UAIR, 1, HG_IGNORES_PROJECTILES, 1);

//Regular throw
set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Throw");
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -12);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_EFFECT, 9);
set_hitbox_value(AT_UAIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);

//Smoke consume throw
set_hitbox_value(AT_UAIR, 3, HG_MUNO_HITBOX_NAME, "Throw (Consumed)");
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 7);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -12);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 145);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_UAIR, 3, HG_EFFECT, 9);
set_hitbox_value(AT_UAIR, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, smokeconsume_fx_bot);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 32);
