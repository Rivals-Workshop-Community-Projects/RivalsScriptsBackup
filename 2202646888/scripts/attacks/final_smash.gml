set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("eggcar"));
set_attack_value(49, AG_NUM_WINDOWS, 3);
set_attack_value(49, AG_HAS_LANDING_LAG, 4);
set_attack_value(49, AG_AIR_SPRITE, sprite_get("eggcar"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("eggcar"));
set_attack_value(49, AG_OFF_LEDGE, 1);

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 30);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("rev"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 9);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 2, AG_WINDOW_HSPEED, 30);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 2, AG_WINDOW_TYPE, 9);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 36);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 20);
set_window_value(49, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 20);

set_num_hitboxes(49, 1);

set_hitbox_value(49, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_HITBOX_X, 18);
set_hitbox_value(49, 1, HG_HITBOX_Y, -30);
set_hitbox_value(49, 1, HG_WIDTH, 80);
set_hitbox_value(49, 1, HG_HEIGHT, 50);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_DAMAGE, 60);
set_hitbox_value(49, 1, HG_ANGLE, 30);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(49, 1, HG_EFFECT, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 1, HG_LIFETIME, 9);
set_hitbox_value(49, 1, HG_TECHABLE, 1);
set_hitbox_value(49, 1, HG_HIT_LOCKOUT, 6);