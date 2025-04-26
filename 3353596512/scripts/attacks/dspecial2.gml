//item throw

set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 18);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_MUNO_ATTACK_NAME, "DSpecial (Scrap Throw)");
set_attack_value(AT_DSPECIAL_2, AG_MUNO_ATTACK_MISC, "Gains 7 extra frames of startup when throwing a large scrap item.");

//throw forward startup
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//throw forward active
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//throw forward endlag
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_GOTO, 20);

//throw up startup
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_2, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//throw up active
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_2, 5, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw up endlag
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_GOTO, 20);
set_window_value(AT_DSPECIAL_2, 6, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw down startup
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL_2, 7, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//throw down active
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL_2, 8, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw down endlag
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_GOTO, 20);
set_window_value(AT_DSPECIAL_2, 9, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw forward startup heavy
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSPECIAL_2, 10, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw forward active heavy
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_DSPECIAL_2, 11, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw forward endlag heavy
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_DSPECIAL_2, 12, AG_WINDOW_GOTO, 20);
set_window_value(AT_DSPECIAL_2, 12, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw up startup heavy
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_DSPECIAL_2, 13, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_DSPECIAL_2, 13, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//throw up active heavy
set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 14, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_DSPECIAL_2, 14, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw up endlag heavy
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(AT_DSPECIAL_2, 15, AG_WINDOW_GOTO, 20);
set_window_value(AT_DSPECIAL_2, 15, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw down startup heavy
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_ANIM_FRAME_START, 37);
set_window_value(AT_DSPECIAL_2, 16, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_DSPECIAL_2, 16, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//throw down active heavy
set_window_value(AT_DSPECIAL_2, 17, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 17, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 17, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 17, AG_WINDOW_ANIM_FRAME_START, 41);
set_window_value(AT_DSPECIAL_2, 17, AG_MUNO_WINDOW_EXCLUDE, 1);

//throw down endlag heavy
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_ANIM_FRAME_START, 42);
set_window_value(AT_DSPECIAL_2, 18, AG_WINDOW_GOTO, 20);
set_window_value(AT_DSPECIAL_2, 18, AG_MUNO_WINDOW_EXCLUDE, 1);

set_num_hitboxes(AT_DSPECIAL_2, 6);

//small scrap
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 500);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("scrap_proj"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("scrap_mask_small"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION, 0.6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION, 0.05);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Scrap");

//large scrap
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 500);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 61);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -58);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("scrap_large"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("scrap_mask_large"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_FRICTION, 0.6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_AIR_FRICTION, 0.05);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Large Scrap");

//bees
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 720);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("bees"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("scrap_mask_large"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_AIR_FRICTION, 0.02);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, bees_destroyed);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Circuit Bees");

//bee zap
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_COLLISION_SPRITE, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, zapgun_small);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_MUNO_HITBOX_NAME, "Circuit Bees Attack");
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, -1);

//egg explode
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WIDTH, 78);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HEIGHT, 78);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_DSPECIAL_2, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_MUNO_HITBOX_NAME, "Easter Egg Explosion");

//mask blood burst
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HIT_SFX, sound_get("jeb_hit"));
//set_hitbox_value(AT_DSPECIAL_2, 6, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_MUNO_HITBOX_NAME, "Masked");


//visual hitboxes

//small scrap
set_hitbox_value(2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(2, 3, HG_WINDOW, 2);
set_hitbox_value(2, 3, HG_LIFETIME, 300);
set_hitbox_value(2, 3, HG_WIDTH, 0);
set_hitbox_value(2, 3, HG_HEIGHT, 0);
set_hitbox_value(2, 3, HG_SHAPE, 0);
set_hitbox_value(2, 3, HG_PRIORITY, 0);
set_hitbox_value(2, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(2, 3, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(2, 3, HG_PROJECTILE_SPRITE, sprite_get("scrap_dropped"));
set_hitbox_value(2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(2, 3, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(2, 3, HG_PROJECTILE_GROUND_FRICTION, 0.6);
set_hitbox_value(2, 3, HG_PROJECTILE_AIR_FRICTION, 0.05);
set_hitbox_value(2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(2, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(2, 3, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(2, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(2, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(2, 3, HG_PROJECTILE_UNBASHABLE, true);

//large scrap
set_hitbox_value(2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(2, 4, HG_LIFETIME, 300);
set_hitbox_value(2, 4, HG_WIDTH, 0);
set_hitbox_value(2, 4, HG_HEIGHT, 0);
set_hitbox_value(2, 4, HG_SHAPE, 0);
set_hitbox_value(2, 4, HG_PRIORITY, 0);
set_hitbox_value(2, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(2, 4, HG_PROJECTILE_SPRITE, sprite_get("scrap_large"));
set_hitbox_value(2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(2, 4, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(2, 4, HG_PROJECTILE_GROUND_FRICTION, 0.6);
set_hitbox_value(2, 4, HG_PROJECTILE_AIR_FRICTION, 0.05);
set_hitbox_value(2, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(2, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(2, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(2, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(2, 4, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(2, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(2, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(2, 4, HG_PROJECTILE_UNBASHABLE, true);