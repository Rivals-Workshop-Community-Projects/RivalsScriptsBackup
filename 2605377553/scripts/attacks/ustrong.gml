set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));


//pre charge
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("chains"));


//post charge
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get( "birdup" ));

//atk
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get( "sfx_abyss_explosion" ));

//end
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//end2
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);

//chain
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, sound_get("elli_chains"));

//true end
set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_USTRONG, 7);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 88);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 88);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, bigsmoke);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("hit_bird"));

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 100);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));



//chain
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 7, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 16);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, sound_get("slash"));