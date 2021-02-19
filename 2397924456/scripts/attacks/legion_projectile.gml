universal(AT_EXTRA_3);

set_attack_value(AT_EXTRA_3, AG_SPRITE, spr_legion_projectile_forward);
set_attack_value(AT_EXTRA_3, AG_MUNO_ATTACK_NAME, "FSpecial (Synced) (Legion)");













#define universal(atk)

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_NUM_WINDOWS, 3);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

// startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 20);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_ell_arc_taunt_end"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 18);

// active
set_window_value(atk, 2, AG_WINDOW_LENGTH, 10);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// endlag
set_window_value(atk, 3, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);



set_num_hitboxes(atk, 1);



set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 10);
set_hitbox_value(atk, 1, HG_HITBOX_X, 40);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 24);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 4);
set_hitbox_value(atk, 1, HG_ANGLE, 40);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));