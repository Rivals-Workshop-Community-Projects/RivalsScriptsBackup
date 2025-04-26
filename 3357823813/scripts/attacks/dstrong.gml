set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//Startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

//Charge Window
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_start"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 10);

//Release Window
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//About to spawn explosion
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("sfx_demonic_megiddo"));   //Later we'll need to make this into a variable, so we can give him mute, JP and EN voiced options
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, 10);

//Active 1 (growing)
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//Active 2 (stable)
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//Endlag
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_GOTO, 10);

//Parried
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_DSTRONG, 3);

//Multihit (Grounded)
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 99);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_COLOR, $FFFF00);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("blow_sfx1"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, true);

//Launcher
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 58);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -104);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 460);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 214);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("sfx_darkness_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, true);

//Multihit (Aerial)
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 99);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 120);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 12);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_COLOR, $FFFF00);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("blow_sfx1"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PLASMA_SAFE, true);