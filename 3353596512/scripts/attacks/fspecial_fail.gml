//fspecial (no tools)

set_attack_value(AT_FSPECIAL_FAIL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_FAIL, AG_SPRITE, sprite_get("fspecial_fail"));
set_attack_value(AT_FSPECIAL_FAIL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_FAIL, AG_AIR_SPRITE, sprite_get("fspecial_fail"));
set_attack_value(AT_FSPECIAL_FAIL, AG_HURTBOX_SPRITE, sprite_get("fspecial_fail_hurt"));
set_attack_value(AT_FSPECIAL_FAIL, AG_MUNO_ATTACK_NAME, "FSpecial (Fail)");

//startup
set_window_value(AT_FSPECIAL_FAIL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_FAIL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_FAIL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_FAIL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_FAIL, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FSPECIAL_FAIL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//"throw"
set_window_value(AT_FSPECIAL_FAIL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_FAIL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_FAIL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_FAIL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//endlag
set_window_value(AT_FSPECIAL_FAIL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_FAIL, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSPECIAL_FAIL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_FAIL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_FSPECIAL_FAIL, 1);

set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_WIDTH, 36);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_FAIL, 1, HG_VISUAL_EFFECT, 301);
