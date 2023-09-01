set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//charge
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

//startup
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

//hitbox
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//endlag
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 12);

//grab stuff is below this!!

//grab startup
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 5);

//grab hit
set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 12);

//grab endlag
set_window_value(AT_USTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 13);

//alarm startup buffer
set_window_value(AT_USTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 16);

//alarm hit
set_window_value(AT_USTRONG, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 16);

//alarm endlag
set_window_value(AT_USTRONG, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 11, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 17);

//alarm endlag 2
set_window_value(AT_USTRONG, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_USTRONG, 3);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 58);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 58);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 65);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);