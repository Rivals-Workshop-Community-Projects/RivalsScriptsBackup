set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

//start1
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("hero_dash"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 100);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, -17);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 9);

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED, -8);

set_num_hitboxes(AT_USPECIAL_2, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, -8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 18);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 18);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));