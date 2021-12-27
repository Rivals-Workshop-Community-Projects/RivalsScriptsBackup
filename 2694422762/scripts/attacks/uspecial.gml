set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 12);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC, "Holding the special/attack button after frame " + string(9 + 6 + 9 + 25 + 8) + " will cause the user to explode, but shortens the distance.");

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);

//Prep
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_ready"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_USPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_USPECIAL, 2, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ori_glide_start"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_USPECIAL, 3, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_cannon"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 24);
set_window_value(AT_USPECIAL, 4, AG_MUNO_WINDOW_ROLE, 1);

//Launch
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 5, AG_MUNO_WINDOW_ROLE, 2);

//Fall
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_GOTO, 10);
set_window_value(AT_USPECIAL, 6, AG_MUNO_WINDOW_ROLE, 3);

//Explosion
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_GOTO, 9);

set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 23);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);


set_num_hitboxes(AT_USPECIAL, 3);

//Launch Clean
set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Clean");
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Launch Late
set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_NAME, "Late");
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Explosion
set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_NAME, "Explosion");
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 144);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 144);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, fx_cardhit);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));