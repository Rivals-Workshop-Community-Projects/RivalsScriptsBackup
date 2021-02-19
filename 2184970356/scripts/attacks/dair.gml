set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 3);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -15);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_burst_up"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 2.7);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 1);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 11);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("dair_proj"));
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_MASK, -1);	
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_VSPEED, 7);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 29);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 27);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 30);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
