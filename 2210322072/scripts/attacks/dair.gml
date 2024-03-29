set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);

set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 13);


set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_DAIR, 5);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 13);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("slice1"));
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 2, HG_SDI_MULTIPLIER, 0.8);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -13);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 110);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("slice2"));
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 0.9);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME,3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 96);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("strong1"));
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -14);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 76);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("strong1"));

set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -38);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 34);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, sound_get("strong1"));
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
