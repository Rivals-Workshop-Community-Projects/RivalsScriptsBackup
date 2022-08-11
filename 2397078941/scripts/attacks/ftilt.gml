set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .7);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 86);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 140);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 86);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 120);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 302);

