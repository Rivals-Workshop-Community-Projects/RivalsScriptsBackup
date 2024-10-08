set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 4);

set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_BAIR, 3);

//front hitbox
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -17);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -0);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 4);

//main hitbox
set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -52);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .325);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 4);

//frame 2 hitbox
set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -20);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -72);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 8); //11
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6); //8
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .5); //.8
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6); //10
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 3);

//frame 3 hitbox
//set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 4);
//set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 4);
//set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
//set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
//set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, 14);
//set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -50);
//set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 50);
//set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 50);
//set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 2);
//set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 5);
//set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 50);
//set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .30);
//set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));