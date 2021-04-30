set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .75);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .25);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get( "squack1" ));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .25);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 1.5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);





set_num_hitboxes(AT_FSTRONG,2);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 46);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get( "sfx_blow_heavy1" ));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);



set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 64);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);

