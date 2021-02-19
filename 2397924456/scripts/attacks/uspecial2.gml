set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_NAME, "USpecial (Chain Jump)");

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sfx_astral_chain_select_1);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));