set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("shadow"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("shadow"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get(""));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("Cast A Spell"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_ghost_glove"));

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 30)
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_INVINCIBILITY, 1);;
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_VSPEED, -12);


set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 120);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_EXTRA_2, 1, HG_FINAL_BASE_KNOCKBACK, 3);
