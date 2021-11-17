set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sfx_nair);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 8);

set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Normal Hit");
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sfx_smash_ult_sword_hit_medium);

set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Normal Hit");
set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -3);

set_hitbox_value(AT_NAIR, 3, HG_MUNO_HITBOX_NAME, "Normal Hit");
set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -5);

set_hitbox_value(AT_NAIR, 4, HG_MUNO_HITBOX_NAME, "Normal Hit");
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -19);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -45);

set_hitbox_value(AT_NAIR, 5, HG_MUNO_HITBOX_NAME, "Late Hit");
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 16);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);

set_hitbox_value(AT_NAIR, 6, HG_MUNO_HITBOX_NAME, "Late Hit");
set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 18);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -3);

set_hitbox_value(AT_NAIR, 7, HG_MUNO_HITBOX_NAME, "Late Hit");
set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -5);

set_hitbox_value(AT_NAIR, 8, HG_MUNO_HITBOX_NAME, "Late Hit");
set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, -19);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -45);