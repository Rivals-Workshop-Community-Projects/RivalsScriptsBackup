set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR, 4);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 4);
//set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 67);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 67);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);