// NSpecial Blast Seed
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("nthrow_air"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nthrow_hurt"));
set_attack_value(AT_NTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("nthrow_air_hurt"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 0);

set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, sound_get("EatSeed"));

set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED, -8);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire"));

set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 58);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 95);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 7.0);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 8.0);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, HFX_ELL_FSPEC_HIT);

if has_rune("M"){
    set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 82);
    set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 143);
    set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 105);
}