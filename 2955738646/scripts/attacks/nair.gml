set_attack_value(AT_NAIR, AG_CATEGORY, 2);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("se_sonic_attackair_N01"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_mobile_gear_jump"));

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 4, AG_WINDOW_VSPEED, -8);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 4);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NAIR, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 0);

set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1); //Nair bounce 2
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 6, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 6, AG_WINDOW_VSPEED, 0);

set_window_value(AT_NAIR, 7, AG_WINDOW_TYPE, 1); //Nair bounce out
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NAIR, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_VSPEED, -6);

set_num_hitboxes(AT_NAIR, 6);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1); //Multi hits
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 78);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("se_common_sword_hit_s"));
set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1); //Final hit
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 6, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, sound_get("ARC_BTL_GBR_SwordShot_Hit"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, -1);
