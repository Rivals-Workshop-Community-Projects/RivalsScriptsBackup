set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_COOLDOWN, 90);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_CD_SPECIAL, 1);

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_FSPECIAL, 1, AG_MUNO_WINDOW_CD_SPECIAL, 1);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 19);

//active
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_FSPECIAL, 2, AG_MUNO_WINDOW_CD_SPECIAL, 1);

//endlag
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
// set_window_value(AT_FSPECIAL, 3, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);