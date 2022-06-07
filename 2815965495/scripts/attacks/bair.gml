set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7); // 4
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -0.5);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, 1.25);


set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 14); // 7
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -52);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8); // 5
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR ,1, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 10)
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 54);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .45);

set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 6);