atk = AT_BAIR;

set_attack_value(atk, AG_SPRITE, sprite_get("bair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 5);
set_attack_value(atk, AG_CATEGORY, 1);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 14);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("knifeswing3"));
set_window_value(atk, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(atk, 1, AG_WINDOW_VSPEED, -.8);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 11);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

set_num_hitboxes(atk, 1);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_X, -30);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -30);
set_hitbox_value(atk, 1, HG_WIDTH, 80);
set_hitbox_value(atk, 1, HG_HEIGHT, 43);
set_hitbox_value(atk, 1, HG_PRIORITY, 1);
set_hitbox_value(atk, 1, HG_DAMAGE, 9);
set_hitbox_value(atk, 1, HG_ANGLE, 150);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("slash"));