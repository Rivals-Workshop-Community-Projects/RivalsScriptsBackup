set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);//kick 1
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);//kick 2
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 3);
//set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,3);

//set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 53);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, small);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
//set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 6);
//set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 21);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, small);

//set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 21);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 53);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 86);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, uspec_large);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_PARTICLE_NUM, 1);

//set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 1);