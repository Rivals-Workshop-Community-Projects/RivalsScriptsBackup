set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_2, AG_LANDING_LAG, 10);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

//hit 1
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 13);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_num_hitboxes(AT_NSPECIAL_2, 2);
//foot hitbox (sends bomb lower)
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 23);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 45);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 300);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_MOKOU_BOMB_ANGLE, 315);

//higher hitbox (sends bomb more shallow)
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -59);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 39);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 300);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_MOKOU_BOMB_ANGLE, 345);