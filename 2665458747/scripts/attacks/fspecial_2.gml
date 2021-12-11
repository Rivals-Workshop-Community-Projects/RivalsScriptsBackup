set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspec"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 10);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspec_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("sm-gulp"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);



set_num_hitboxes(AT_FSPECIAL_2, 6);

//oran
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, oran_hit);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("sm-tipper"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);

//pecha
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, pecha_hit);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 1);

//rawst
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, rawst_hit_weak);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 85);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, rawst_hit_weak);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX,  asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT, rawst_hit);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HIT_SFX,  asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_GROUP, 3);

//cheri
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_DAMAGE, 16);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_ANGLE, 65);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT, cheri_hit);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HIT_SFX, sound_get("dp-boom"));
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_GROUP, 1);