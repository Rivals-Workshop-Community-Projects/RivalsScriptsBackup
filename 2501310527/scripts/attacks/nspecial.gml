set_attack_value(AT_NSPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

//Spinning the wrench
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

//Summons the Blaster
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//Goes up and endlag
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, -8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_NSPECIAL, 7);

//Hitbox when throwing the Blaster forward
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 104);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 51);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 79);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 20);

//Hitbox when throwing the Blaster up
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 104);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 51);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 79);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 15);

//Hitbox when throwing the Blaster down
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 104);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 51);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 79);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 15);

//The spinning wrench multihits
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, -3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -73);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 37);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 1);

//The spinning wrench multihits
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -73);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 37);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 44);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, 2);

//The spinning wrench multihits
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, -3);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -73);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 37);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 44);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, 3);

//The spinning wrench multihits
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, -3);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -73);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 37);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 44);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, 4);