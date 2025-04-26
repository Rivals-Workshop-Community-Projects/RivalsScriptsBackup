set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_2_hurt"));

//Startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));

//Charge
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 4);

//Prep
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 3);

//Launch
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//Early Endlag
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 17);

//Endlag
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(AT_USPECIAL_2, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, -7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, fx_gus_flame_small);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, -7);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, -7);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, -7);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 17);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, -7);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_FINAL_BASE_KNOCKBACK , 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITPAUSE_SCALING, 1.0);
//set_hitbox_value(AT_USPECIAL_2, 5, HG_EXTRA_HITPAUSE, 6);
//set_hitbox_value(AT_USPECIAL_2, 5, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, fx_gus_flame_large);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE_FLIPPER, 10);
