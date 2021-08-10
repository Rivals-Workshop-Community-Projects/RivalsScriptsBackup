set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 50);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, 19);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.5);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, sound_get("SMASH"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_DAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_num_hitboxes(AT_DAIR, 3);

//set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 110);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
//set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1.0);

//set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 49);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -1);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 58);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("hit4"));
set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 1);

//set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("hit3"));
set_hitbox_value(AT_DAIR, 3, HG_FORCE_FLINCH, 1);



