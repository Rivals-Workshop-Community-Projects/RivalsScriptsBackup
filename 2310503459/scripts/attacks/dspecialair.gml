set_attack_value(AT_DSPECIALAIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIALAIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIALAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIALAIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIALAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIALAIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIALAIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIALAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIALAIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIALAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIALAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIALAIR, 1, AG_WINDOW_SFX, sound_get("laser"));
set_window_value(AT_DSPECIALAIR, 1, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_DSPECIALAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIALAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIALAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIALAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIALAIR, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DSPECIALAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DSPECIALAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIALAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIALAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIALAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIALAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 16);

set_num_hitboxes(AT_DSPECIALAIR, 2);

set_hitbox_value(AT_DSPECIALAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_HITBOX_Y, 294);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_WIDTH, 26);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_HEIGHT, 586);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_VISUAL_EFFECT, bullet_fx_large);
set_hitbox_value(AT_DSPECIALAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

set_hitbox_value(AT_DSPECIALAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_HITBOX_Y, 294);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_WIDTH, 4);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_HEIGHT, 586);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_VISUAL_EFFECT, bullet_fx_large);
set_hitbox_value(AT_DSPECIALAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));