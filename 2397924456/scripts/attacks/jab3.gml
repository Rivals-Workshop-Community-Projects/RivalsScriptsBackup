set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("jab3"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("jab3_hurt"));
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);

set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sfx_astral_chain_swipe_3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, vfx_hit_big);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));