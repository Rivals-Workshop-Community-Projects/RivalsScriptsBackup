set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("tambourine"));

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_NAIR,2);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 1, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -41);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 54);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 79);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_NAIR, 2, HG_SDI_MULTIPLIER, .7);