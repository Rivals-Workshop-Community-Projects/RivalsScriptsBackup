set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("DSPECIAL"));
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("DSPECIAL_AIR"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("DSPECIAL_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("DSPECIAL_AIR_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL_AIR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_WHIFFLAG, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_TECHABLE, 1);