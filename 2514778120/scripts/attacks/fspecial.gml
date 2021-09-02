set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 7);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

sword_attack_spr[0, AT_FSPECIAL] = sprite_get("sword0_fspecial");
sword_attack_hurtbox_spr[0, AT_FSPECIAL] = sprite_get("sword0_fspecial");
sword_attack_xoff[0, AT_FSPECIAL] = -72;
sword_attack_yoff[0, AT_FSPECIAL] = -40;

sword_attack_spr[1, AT_FSPECIAL] = sprite_get("sword1_fspecial");
sword_attack_hurtbox_spr[1, AT_FSPECIAL] = sprite_get("sword1_fspecial");
sword_attack_xoff[1, AT_FSPECIAL] = 0;
sword_attack_yoff[1, AT_FSPECIAL] = -40;

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 12);

//No sword
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 25);

//One sword
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 25);

//Two swords
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_GOTO, 25);



sword_window_min[0, AT_FSPECIAL] = 10;
sword_window_max[0, AT_FSPECIAL] = 15;

sword_window_min[1, AT_FSPECIAL] = 10;
sword_window_max[1, AT_FSPECIAL] = 15;
//One sword
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_GOTO, 25);

//Two swords
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

set_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 15, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_GOTO, 25);

set_num_hitboxes(AT_FSPECIAL, 1);

//No Swords
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 43);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

sword_window_hitbox_min[0, AT_FSPECIAL] = 2;
sword_window_hitbox_max[0, AT_FSPECIAL] = 3;

sword_window_hitbox_min[1, AT_FSPECIAL] = 2;
sword_window_hitbox_max[1, AT_FSPECIAL] = 3;

//One Sword
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 111);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 97);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, fx_plasma2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

//Two Swords
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 14);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 111);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 97);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, fx_plasmatip);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_fspecial_slash"));
