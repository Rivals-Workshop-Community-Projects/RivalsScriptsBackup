set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, spr_luma_fspecial);
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_MUNO_ATTACK_NAME, "FSpecial 2 (Luma)");

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sfx_mario_galaxy_cursor_ready);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_FSPECIAL_AIR, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 124);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 88);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 88);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 45); // prerelease: 80
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7); // prerelease: 9
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));