set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//Startup
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("sfx_cape_swipe_hard1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);

//Active
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Active (Sourspot)
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED_TYPE, 2);

//Endlag
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

//Sweetspot
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -93);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 165);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);

//Sourspot
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -73);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 123);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));