set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_AIR_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_AIR_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("run_coward")); //WHAH

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 33);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -48);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -91);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 33);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 21);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 125);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
