set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4)


set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 11);


set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 20);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);



set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW,2 )
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME,4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_DAIR, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2 )
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));