set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USTRONG, AG_LANDING_LAG, 9);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .25);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_fireswipe"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -11); //was 13
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.65); //was 0.8
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,4);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 16); //was 17
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1); //was 1.125
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_flamepan"));

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 13); //was 15
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 72);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8); //was 8.5
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.04);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("sfx_flamepan"));
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -28);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 12); //was 14
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 72);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.04);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("sfx_flamepan"));
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 5);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -28);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 66);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 8); //was 8
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 72);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 5);