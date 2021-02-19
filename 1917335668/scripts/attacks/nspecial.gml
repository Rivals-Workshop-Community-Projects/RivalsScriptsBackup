set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("rollout"));

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 8);



set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -24);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3 );
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5 );
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4 );

