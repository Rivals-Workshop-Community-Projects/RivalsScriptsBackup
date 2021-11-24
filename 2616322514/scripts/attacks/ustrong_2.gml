set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong2"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG_2, AG_MUNO_ATTACK_NAME, "UStrong (Supercharged)");
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, sound_get("sfx_shock_large"));

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2,2);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -152);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 304);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, sound_get("sfx_electro_hit_med"));

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 22);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, electric_hit);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, sound_get("sfx_electro_hit_heavy"));