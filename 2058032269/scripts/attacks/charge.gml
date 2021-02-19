set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("cup_hurtbox"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//Not Fully Charged
set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("chargeshot_weak"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, sprite_get("chargeshot_weak"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 8);

//Fully Charged
set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("chargeshot_full"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, sprite_get("chargeshot_full"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTENDED_PARRY_STUN, true);