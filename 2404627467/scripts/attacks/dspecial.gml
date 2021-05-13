set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 6);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.4);


set_num_hitboxes(AT_DSPECIAL, 2);

//Close
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.1);

//Far
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 112);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 48);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.1);