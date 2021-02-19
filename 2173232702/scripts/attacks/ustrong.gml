set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 18); //21
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 12); //?
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("firework1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 9); //12
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_USTRONG,2);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 3); //4
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
// set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, -1);
// set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 48);//
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 96);//
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
// set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 11);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 5);
// set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 5);
// set_hitbox_value(AT_USTRONG, 1, HG_HIT, 180);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 0);
// set_hitbox_value(AT_USTRONG, 1, HG_, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
// set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 7); // 10?
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
// set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -154);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 128);//
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 128);//
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1); //0.7
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 15);
// set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 4.20);
set_hitbox_value(AT_USTRONG, 2, HG_EFFECT, 11);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_big_missile_ground"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj_explosion"));
// set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 10);