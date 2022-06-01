set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 12);



set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8 );
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2 );
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.4 );
set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 13 );
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 4 );
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2 );
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1 );
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1") );
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 1 );
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, -7);
set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5 );
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, 0);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10 );
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5 );
set_window_value(AT_BAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_BAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0 );


set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 18 );
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 5 );
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5 );

set_num_hitboxes(AT_BAIR,2);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 22);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("spearcut"));

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -52);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 19);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 22);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY,  1);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("spearcutsweet"));

