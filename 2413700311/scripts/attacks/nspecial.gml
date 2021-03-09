set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("chainsaw1"));

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);

//ループ
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("chainsaw2"));

//ヒット
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ell_uspecial_explode"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

//ヒット余韻
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

//しまう(刃なし)
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 18);

//しまう(刃あり)
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);

//終わり
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 20);

//------------------------------------------------------
set_num_hitboxes(AT_NSPECIAL, 5);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 45);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ell_uspecial_explode"));
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, 2);
