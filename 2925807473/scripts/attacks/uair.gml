atk = AT_UAIR;

set_attack_value(atk, AG_SPRITE, sprite_get("uair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 5);
set_attack_value(atk, AG_CATEGORY, 1);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("knifeswing3"));
set_window_value(atk, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(atk, 1, AG_WINDOW_VSPEED, -.8);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_X, 0);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -70);
set_hitbox_value(atk, 1, HG_WIDTH, 80);
set_hitbox_value(atk, 1, HG_HEIGHT, 60);
set_hitbox_value(atk, 1, HG_PRIORITY, 1);
set_hitbox_value(atk, 1, HG_DAMAGE, 7);
set_hitbox_value(atk, 1, HG_ANGLE, 70);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("slash"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_HITBOX_X, 0);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -45);
set_hitbox_value(atk, 2, HG_WIDTH, 80);
set_hitbox_value(atk, 2, HG_HEIGHT, 30);
set_hitbox_value(atk, 2, HG_PRIORITY, 1);
set_hitbox_value(atk, 2, HG_DAMAGE, 7);
set_hitbox_value(atk, 2, HG_ANGLE, 70);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("slash"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 1);