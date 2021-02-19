set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("bnewtrumpet"));
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_FAIR, 2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 77);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT,  65);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7.5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 254);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT,  54);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 5.5);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 3.75);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
