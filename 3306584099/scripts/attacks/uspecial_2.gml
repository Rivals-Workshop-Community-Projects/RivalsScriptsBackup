set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_USES_ROLES, 1);

//Startup
set_window_value(AT_USPECIAL_2, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_ice_nspecial_hit_ground"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 9);

//Rising
set_window_value(AT_USPECIAL_2, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -16);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//About to fall
set_window_value(AT_USPECIAL_2, 3, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//Falling
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 999);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//Landing active
set_window_value(AT_USPECIAL_2, 5, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);

//Landing recovery
set_window_value(AT_USPECIAL_2, 6, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 28);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_GOTO, 10);

//Cancel
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_SFX_FRAME, 5);

//Cancel
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_VSPEED, -9);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_VSPEED_TYPE, 2);

//Muno stuff
var cancel = get_window_value(AT_USPECIAL_2, 7, AG_WINDOW_LENGTH) + get_window_value(AT_USPECIAL_2, 8, AG_WINDOW_LENGTH) + 1;

set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_MISC, `Can cancel on frame ${cancel}`);
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_FAF, "-");

set_num_hitboxes(AT_USPECIAL_2, 5);

set_hitbox_value(AT_USPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Rising");
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 52);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_USPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Landing");
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 128);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 158);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Platform Rising");
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, 16);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 96);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USPECIAL_2, 4, HG_MUNO_HITBOX_NAME, "Platform Early");
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, 16);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 96);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL_2, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));

set_hitbox_value(AT_USPECIAL_2, 5, HG_MUNO_HITBOX_NAME, "Platform Late");
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 600);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, 16);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WIDTH, 104);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL_2, 5, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));

//Fix timings for the muno woodcock
var startup = get_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH) + get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH) + get_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH);

set_hitbox_value(AT_USPECIAL_2, 3, HG_MUNO_HITBOX_ACTIVE, `${startup}-${startup + get_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME)}`);
set_hitbox_value(AT_USPECIAL_2, 4, HG_MUNO_HITBOX_ACTIVE, `${startup + get_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME) + 1}-${startup + get_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME) + get_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME) + 1}`);
