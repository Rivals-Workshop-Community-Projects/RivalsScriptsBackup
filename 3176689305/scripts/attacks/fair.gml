set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 7);

//atk1
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

//atk1 hold
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

//mid
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 1);

//atk2
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);

//atk2 hold
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);

//end
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);


set_num_hitboxes(AT_FAIR, 2);

//1
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 0.6);

//2
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 74);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 33);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));


