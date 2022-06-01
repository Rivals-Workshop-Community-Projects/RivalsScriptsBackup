set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4 );
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5 );
set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4 );
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1 );
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1 );
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1") );
set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 1 );
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10 );
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3 );
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_JAB, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5 );
set_window_value(AT_JAB, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2 );
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1 );
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 1 );

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6 );
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4 );
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_JAB, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5 );
set_window_value(AT_JAB, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4 );
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3 );
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5 );
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1 );
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1") );
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 1 );
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 1 );
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 1 );


set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 10 );
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2 );
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_JAB, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5 );
set_window_value(AT_JAB, 6, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8 );
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB,2);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 46);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 360);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 0); 
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1); 
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1); 

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 41);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 84);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 38);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1); 