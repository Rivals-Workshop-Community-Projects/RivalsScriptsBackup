set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, uair_sprite);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"))

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, -0.001);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, -0.001);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED, -3);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX, sound_get("grab_smw"));
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 17);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_UAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_num_hitboxes(AT_UAIR,5);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -8);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.1)
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("hit_yi"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1)
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1)
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -8);

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1)
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2)
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -8);

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1)
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 3)
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -8);

set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 65);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.9)
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 7.5);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("hit_pm"));