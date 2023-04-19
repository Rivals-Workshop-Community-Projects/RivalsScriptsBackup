atk = AT_DATTACK;

set_attack_value(atk, AG_SPRITE, sprite_get("dattack"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_HSPEED, 4);
set_window_value(atk, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(atk, 2, AG_WINDOW_LENGTH, 7);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_HSPEED, 3);
set_window_value(atk, 2, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 10);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////
set_num_hitboxes(atk, 1);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_X, 15);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -20);
set_hitbox_value(atk, 1, HG_WIDTH, 60);
set_hitbox_value(atk, 1, HG_HEIGHT, 35);
set_hitbox_value(atk, 1, HG_PRIORITY, 1);
set_hitbox_value(atk, 1, HG_DAMAGE, 8);
set_hitbox_value(atk, 1, HG_ANGLE, 45);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));