set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14); 
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

//attack
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10); 
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//endlag
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,3);

set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_MISC, "Hitbox 1 sends higher and Hitbox 2 goes higher depending on how long you hold this strong.");

set_hitbox_value(AT_USTRONG, 1, HG_MUNO_HITBOX_NAME, "The hitbox that sends up");
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8); 
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 6);

set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_NAME, "Decorational");
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("thrash_machine"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, sprite_get("thrash_machine"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GRAVITY, 0.55);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);

set_hitbox_value(AT_USTRONG, 3, HG_MUNO_HITBOX_NAME, "Explosion");
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("blank_sheet"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, sprite_get("blank_sheet"));
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_3"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 3, HG_EXTENDED_PARRY_STUN, true);