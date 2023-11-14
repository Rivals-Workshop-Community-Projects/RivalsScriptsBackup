set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//Jab1-Start
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sfx_swinglight1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
//Jab1-Active
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_NAIR, 2, AG_WINDOW_HSPEED, 2);
//set_window_value(AT_NAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
//Jab1-End
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_CANCEL_FRAME, 6);
//Jab2-Start
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, sfx_swingheavy1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX_FRAME, 2);
//Jab2-Active
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 5, AG_WINDOW_HSPEED, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_VSPEED, -3);
set_window_value(AT_NAIR, 5, AG_WINDOW_VSPEED_TYPE, 2);
//Jab2-End
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_CANCEL_FRAME, 6);
//Jab3-Start
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_SFX, sfx_swinglight2);
set_window_value(AT_NAIR, 7, AG_WINDOW_SFX_FRAME, 4);
//Jab3-Active
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NAIR, 8, AG_WINDOW_HSPEED, 2);
set_window_value(AT_NAIR, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NAIR, 8, AG_WINDOW_VSPEED, -3);
set_window_value(AT_NAIR, 8, AG_WINDOW_VSPEED_TYPE, 2);
//Jab4-End
set_window_value(AT_NAIR, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 5);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.15);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sfx_fe_hit1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sfx_fe_hit2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 22);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 120);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sfx_fe_hit2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 8);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 56);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 72);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sfx_fe_hit1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 8);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -18);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sfx_fe_hit1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 3);