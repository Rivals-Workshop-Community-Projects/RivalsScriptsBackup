set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);

//startup

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, has_rune("C")? 13:19);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get( "sfx_kecha" ));

//charge

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);


//actives

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1") );
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 0 );
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 2.5 );

//recovery frames

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, has_rune("C")? 4:6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);

//recovery frames 2

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, has_rune("C")? 4:7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,4);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -51);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 51);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40); 
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_don"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);

//late hitbox

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 62);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("sfx_don"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);

//sweetspots

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -52);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 62);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 24);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 63);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("sfx_don_sweet")); 
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, sweetdon_fx);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 65);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 27);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("sfx_don_sweet")); 
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, sweetdon_fx);