set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//attack
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//endlag
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 4);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -104);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 25);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 65);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -116);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("shrim_jumpscare"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, sprite_get("shrim_jumpscare"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 43);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));