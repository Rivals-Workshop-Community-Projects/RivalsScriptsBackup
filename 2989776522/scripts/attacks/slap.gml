set_attack_value(AT_SLAP, AG_SPRITE, sprite_get("slap"));
set_attack_value(AT_SLAP, AG_AIR_SPRITE, sprite_get("slap_air"));
set_attack_value(AT_SLAP, AG_HURTBOX_SPRITE, sprite_get("slap_hurt"));
set_attack_value(AT_SLAP, AG_NUM_WINDOWS, 3);

set_window_value(AT_SLAP, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_SLAP, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_SLAP, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_SLAP, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_SLAP, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_SLAP, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_SLAP, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_SLAP, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_SLAP, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_SLAP, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_SLAP, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_SLAP, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_SLAP, 1);

set_hitbox_value(AT_SLAP, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_SLAP, 1, HG_WINDOW, 2);
set_hitbox_value(AT_SLAP, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_SLAP, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_SLAP, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_SLAP, 1, HG_WIDTH, 80);
set_hitbox_value(AT_SLAP, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_SLAP, 1, HG_SHAPE, 0);
set_hitbox_value(AT_SLAP, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_SLAP, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_SLAP, 1, HG_ANGLE, 45);
set_hitbox_value(AT_SLAP, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_SLAP, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_SLAP, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_SLAP, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_SLAP, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_SLAP, 1, HG_HIT_SFX, sound_get("slap"));

/*set_window_value(AT_SLAP, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_SLAP, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_SLAP, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_SLAP, 3, AG_WINDOW_LENGTH, 1);*/