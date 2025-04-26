set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_NAME, "USpecial: Paratroopa / Sky Dive");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC, "Rises up into the air, can slightly control horizontal direction when rising. Has 2 different follow-up options, depending on if Attack or Special is pressed or not after initially rising:
- No Input: Transition into a brief hover that slightly stalls your fall speed. Can be canceled into pratfall early by pressing Parry.
- Input: Spin, then perform a divekick at a ~45 degree angle below you that has a strong initial hit. Can be turned around during startup. Sends you into pratfall, even on hit.");


// very initial startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_CUSTOM_GRAVITY, 0);

// grow wings, startup 2, can aim
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// fly
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// transition window from fly to hover
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

// hover
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);

// transition into pratfall
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);

// ============

// sky dive spin / startup 1
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);

// startup 2, window where you can """aim"""
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);

// active dive kick
set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 20);

// hold pose
set_window_value(AT_USPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 21);

// rotate back to normal and into pratfall
set_window_value(AT_USPECIAL, 11, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 21);

// landing hitbox active
set_window_value(AT_USPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 27);

// landing endlag
set_window_value(AT_USPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_LENGTH, 26);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Clean Diving Hitbox");
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 14);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 38);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_NAME, "Late Diving Hitbox");
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 14);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 24);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_NAME, "Landing Hit");
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 12);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 68);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 35);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);

// visual for wings dissapearing (you can ignore this.)
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 69);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 999);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("uspecial_wingfront"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 4, HG_IGNORES_PROJECTILES, 1); // cannot break projectiles
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("there is none"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 69);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 999);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("uspecial_wingback"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 5, HG_IGNORES_PROJECTILES, 1); // cannot break projectiles
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("there is none"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);