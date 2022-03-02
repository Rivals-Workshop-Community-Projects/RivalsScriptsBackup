set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .75);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .75);

set_num_hitboxes(AT_DSPECIAL, 7);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 138);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("rock_hit_s"));

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 106);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1.1);
set_hitbox_value(AT_DSPECIAL, 2, HG_SDI_MULTIPLIER, 1.1);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("rock_hit_s"));

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 122);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 54);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 8.5);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, rock_s);
set_hitbox_value(AT_DSPECIAL, 7, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, sound_get("rock_hit_l"));

