set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sfx_fair_1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 5);

//Active 1
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Inbetween 1 and 2
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, sfx_fair_2);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 2);

//Active 1
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//Inbetween 1 and 2
set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, sfx_fair_3);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX_FRAME, 2);

//Active 3
set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 9);

//Inbetween 1 and 2
set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_NAME, "Multi Hit 1");
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 2, HG_MUNO_HITBOX_NAME, "Multi Hit 2");
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FAIR, 3, HG_MUNO_HITBOX_NAME, "Finishing Hit");
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -19);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 85);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sfx_smash_ult_sword_hit_medium);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 3);