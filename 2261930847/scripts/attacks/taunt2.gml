set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("up_taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("up_taunt_hurt"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 165);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 96);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("sfx_neck"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 97);

set_num_hitboxes(AT_TAUNT_2, 1);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 3.5);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT_2, 1, HG_TECHABLE, 1);
