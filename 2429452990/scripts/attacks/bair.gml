set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);


set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("duck_magnumpistol"))
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);


set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);;
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -46);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 58);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT,  30);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8.5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_obstacle_hit"));
