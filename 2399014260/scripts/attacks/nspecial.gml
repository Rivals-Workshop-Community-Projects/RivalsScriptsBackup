set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_COOLDOWN, 50);
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_NAME, "NSpecial: Luma Spin");

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sfx_ssbu_rosa_swing_3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL, 4, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_num_hitboxes(AT_NSPECIAL, 2);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 96);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Early Hit");

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 96);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Late Hit");