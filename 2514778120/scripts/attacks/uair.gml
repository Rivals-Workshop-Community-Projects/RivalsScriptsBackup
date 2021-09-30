set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);

sword_attack_spr[0, AT_UAIR] = sprite_get("sword0_uair");
sword_attack_hurtbox_spr[0, AT_UAIR] = sprite_get("sword0_uair_hurt");
sword_attack_xoff[0, AT_UAIR] = 0;
sword_attack_yoff[0, AT_UAIR] = -40;

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_GOTO, 3);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

sword_window_min[0, AT_UAIR] = 5;
sword_window_max[0, AT_UAIR] = 7;
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX, asset_get("sfx_clairen_poke_med"));
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 6, AG_WINDOW_VSPEED, -3);

set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 3);

//Early
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 56);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 95);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Clean
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 82);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 100);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Late
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 46);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 105);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

sword_window_hitbox_min[0, AT_UAIR] = 4;
sword_window_hitbox_max[0, AT_UAIR] = 6;

//Close
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 4, HG_HIT_LOCKOUT, 9);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 88);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, fx_plasma1);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

//Tip
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 5, HG_HIT_LOCKOUT, 9);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -107);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 25);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, fx_plasmatip);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

//Late
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 6, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, -1);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -72);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 136);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 105);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, fx_plasma1);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
