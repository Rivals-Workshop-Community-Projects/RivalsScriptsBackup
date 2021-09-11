set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 8)

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1)
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 114);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2)
//set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3)
//set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
//set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3 );
//set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 60);
//set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -19);
//set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 25);
//set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 63);
//set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
//set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
//set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
//set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 90);
//set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .35);
//set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
//set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
//set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));//