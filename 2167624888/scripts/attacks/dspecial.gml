set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1); // jumpstart
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dspecial_startup"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1); // jumping
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, -4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -11);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1); // no shoot
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1); // after shoot
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1); // shoot red
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1); // kick
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1.1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1); // landing
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1); // kick bounce
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 1.1);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1); // After shoot
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, red_explosion);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);