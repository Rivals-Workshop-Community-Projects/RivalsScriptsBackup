//final-smash

set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_SPRITE, sprite_get("fs"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("fs_hurt"));
set_attack_value(49, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(49, AG_NUM_WINDOWS, 4);

//startup
set_window_value(49, 1, AG_WINDOW_LENGTH, 10);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(49, 1, AG_WINDOW_HSPEED, 0);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED, 0);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 2);

//summon shrine
set_window_value(49, 2, AG_WINDOW_LENGTH, 12);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 2, AG_WINDOW_HSPEED, 0);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED, 0);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 6);

//cutscene/shrins stays in place for a while
set_window_value(49, 3, AG_WINDOW_LENGTH, 20);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 3, AG_WINDOW_HSPEED, 0);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED, 0);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

//miss endlag
set_window_value(49, 4, AG_WINDOW_LENGTH, 10);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 4, AG_WINDOW_HSPEED, 0);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED, 0);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49, 2);

//shrine hitbox
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(49, 1, HG_LIFETIME, 5);
set_hitbox_value(49, 1, HG_HITBOX_X, 240);
set_hitbox_value(49, 1, HG_HITBOX_Y, -120);
set_hitbox_value(49, 1, HG_WIDTH, 120);
set_hitbox_value(49, 1, HG_HEIGHT, 240);
set_hitbox_value(49, 1, HG_PRIORITY, 4);
set_hitbox_value(49, 1, HG_DAMAGE, 10);
set_hitbox_value(49, 1, HG_ANGLE, -90);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 500);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 1, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 2);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(49, 2, HG_LIFETIME, 5);
set_hitbox_value(49, 2, HG_HITBOX_X, 170);
set_hitbox_value(49, 2, HG_HITBOX_Y, -40);
set_hitbox_value(49, 2, HG_WIDTH, 160);
set_hitbox_value(49, 2, HG_HEIGHT, 80);
set_hitbox_value(49, 2, HG_PRIORITY, 4);
set_hitbox_value(49, 2, HG_DAMAGE, 10);
set_hitbox_value(49, 2, HG_ANGLE, -90);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 2, HG_SHAPE, 1);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 500);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 2, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 0);

//launcher
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 4);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 3, HG_LIFETIME, 4);
set_hitbox_value(49, 3, HG_HITBOX_X, 200);
set_hitbox_value(49, 3, HG_HITBOX_Y, -120);
set_hitbox_value(49, 3, HG_WIDTH, 220);
set_hitbox_value(49, 3, HG_HEIGHT, 240);
set_hitbox_value(49, 3, HG_PRIORITY, 4);
set_hitbox_value(49, 3, HG_DAMAGE, 30);
set_hitbox_value(49, 3, HG_ANGLE, 50);
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 3, HG_SHAPE, 1);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(49, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, 1);