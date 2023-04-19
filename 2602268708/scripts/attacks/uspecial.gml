set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Cannon article hitbox is active whenever the article is airborne. Cannon stats are buffed when grabbed by Chuckya or thrown by Heave-Ho.");

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1); //Getting into the launcher
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("cannon_enter"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 90);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//SPEEEEEEN
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .4675);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_num_hitboxes(AT_USPECIAL, 2);

//CANNON HITBOX
set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Aerial Cannon");
set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, "When Thrown: 6-16 DMG, 6-8 BKB, .5 to .6 KBG");
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 46);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("sm64_clonk"));
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);


set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_NAME, "Spinning Hit");
set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_ACTIVE, "-");
set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_MISC_ADD, "Active for 20 frames after launch");
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, cannonball);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("ssbu_cannonbody"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
