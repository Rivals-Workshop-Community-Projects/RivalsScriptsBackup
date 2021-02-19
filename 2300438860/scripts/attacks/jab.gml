set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 4);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 88);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("hweak"));
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 0.8);


