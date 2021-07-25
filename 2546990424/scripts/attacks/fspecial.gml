set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_ready"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_charge_blade_ready"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 4);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_FSPECIAL, 6);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 115);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 115);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 115);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 115);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 115);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 0);//10
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 160);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 102);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 56);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_bird_downspecial"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_LOCKOUT, 10);