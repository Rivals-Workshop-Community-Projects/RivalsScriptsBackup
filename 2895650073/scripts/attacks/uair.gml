set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 7);

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ell_dtilt2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, 1);


set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_ori_glide_featherout"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 3);


set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);


set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 3);

//1
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -55-16);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 36);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 3)

//2
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -64-16);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));



//hold
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 14);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -70-16);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 64);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 18);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 1);















