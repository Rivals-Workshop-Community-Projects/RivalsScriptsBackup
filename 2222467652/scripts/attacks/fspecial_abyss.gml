set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("fspecial_abyss"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("fspecial_abyss"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("fspecial_abyss_hurt"));
set_attack_value(AT_NTHROW, AG_MUNO_ATTACK_NAME, "Fspecial (Abyss)");
set_attack_value(AT_NTHROW, AG_MUNO_ATTACK_MISC_ADD, "Abyss Rune L only
To input: Quartercircle(down-forward) + [SPECIAL]");

set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));

set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_ell_arc_taunt_end"));
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 65);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NTHROW, 1, HG_IGNORES_PROJECTILES, 1);