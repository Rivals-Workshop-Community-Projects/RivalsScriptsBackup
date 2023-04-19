atk = AT_FAIR;

set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 5);
set_attack_value(atk, AG_CATEGORY, 1);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 17);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("hirentosu"));
set_window_value(atk, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(atk, 1, AG_WINDOW_VSPEED, -1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 22);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

set_num_hitboxes(atk, 3);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_X, 40);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -50);
set_hitbox_value(atk, 1, HG_WIDTH, 40);
set_hitbox_value(atk, 1, HG_HEIGHT, 80);
set_hitbox_value(atk, 1, HG_PRIORITY, 1);
set_hitbox_value(atk, 1, HG_DAMAGE, 7);
set_hitbox_value(atk, 1, HG_ANGLE, 40);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_HITBOX_X, 55);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -15);
set_hitbox_value(atk, 2, HG_WIDTH, 7);
set_hitbox_value(atk, 2, HG_HEIGHT, 20);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 12);
set_hitbox_value(atk, 2, HG_ANGLE, 270);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("sweetspot2"));

set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_LIFETIME, 3);
set_hitbox_value(atk, 3, HG_HITBOX_X, 20);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -70);
set_hitbox_value(atk, 3, HG_WIDTH, 30);
set_hitbox_value(atk, 3, HG_HEIGHT, 30);
set_hitbox_value(atk, 3, HG_PRIORITY, 1);
set_hitbox_value(atk, 3, HG_DAMAGE, 7);
set_hitbox_value(atk, 3, HG_ANGLE, 40);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));