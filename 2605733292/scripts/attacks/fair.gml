set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sfx_kirby_swipe3);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 66);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, pillow_hit_fx_lrg);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, 3);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 72);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, pillow_hit_fx_lrg);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 0);