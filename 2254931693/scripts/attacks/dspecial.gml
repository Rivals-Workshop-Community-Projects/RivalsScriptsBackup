set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dspecialstart"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, dspecialbounceeffect);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -16);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, dspecialfalleffect);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, 25);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 26);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sound_get("dspecialland"));
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 37);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 47);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 37);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 47);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

