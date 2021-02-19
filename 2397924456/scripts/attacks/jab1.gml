set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab1"));
set_attack_value(AT_JAB, AG_AIR_SPRITE, sprite_get("jab1_air"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 4);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab1_hurt"));
set_attack_value(AT_JAB, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_JAB, AG_LANDING_LAG, 5);
set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_MUNO_ATTACK_MISC_ADD, "Ignores parry stun unless used in midair.");

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sfx_astral_chain_swipe_1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// no cancel
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// cancel
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_MUNO_WINDOW_EXCLUDE, 2);

set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 65);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, vfx_hit_small);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));