set_attack_value(AT_NSPECIAL_ZET, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_ZET, AG_SPRITE, sprite_get("AT_NSPECIAL_ZETT_CHARGEUP_GROUND"));
set_attack_value(AT_NSPECIAL_ZET, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_ZETT_CHARGEUP_AIR"));
set_attack_value(AT_NSPECIAL_ZET, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_ZET, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_ZETT_hurt"));

set_window_value(AT_NSPECIAL_ZET, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ZET, 1, AG_WINDOW_LENGTH, 35);
set_window_value(AT_NSPECIAL_ZET, 1, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_NSPECIAL_ZET, 2, AG_WINDOW_TYPE, 1); //Mid
set_window_value(AT_NSPECIAL_ZET, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_ZET, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_ZET, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_ZET, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ZET, 2, AG_WINDOW_SFX, asset_get("sfx_zap"));


set_window_value(AT_NSPECIAL_ZET, 3, AG_WINDOW_TYPE, 1); //Full
set_window_value(AT_NSPECIAL_ZET, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_ZET, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_ZET, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_ZET, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL_ZET, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ZET, 3, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));


set_window_value(AT_NSPECIAL_ZET, 4, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_NSPECIAL_ZET, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_ZET, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_ZET, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_NSPECIAL_ZET, 2);

set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_KNOCKBACK_SCALING, .14);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_ZET, 1, HG_ANGLE_FLIPPER, 1);

set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_WIDTH, 120);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_ZET, 2, HG_ANGLE_FLIPPER, 1);