set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dair_fire"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dair_fire_hurt"));
set_attack_value(AT_DTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 5);

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTHROW, 3, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTHROW, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTHROW, 2);

//dive
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, -90);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DTHROW, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DTHROW, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, HFX_ZET_FIRE_DIR);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, 1);

//land
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DTHROW, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DTHROW, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DTHROW, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTHROW, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTHROW, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTHROW, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DTHROW, 2, HG_VISUAL_EFFECT, HFX_ELL_BOOM_BIG);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTHROW, 2, HG_HIT_LOCKOUT, 6);