set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HSPEED, -5);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_syl_fspecial_bite"));
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_bite"));
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 3);

//weak hit
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);

//bite hit
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, 2);