set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 15);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 56);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR,1);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 99);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_uair"));