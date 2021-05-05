set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_AIR_SPRITE, sprite_get("utilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("BlueSwish3"));

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 47);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 28);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 85);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_DTILT, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("Hit2"));

//Sourspot
set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 17);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 22);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 12);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 85);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_DTILT, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("Hit1"));

//Sweetspot
set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 47);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -75);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 28);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 21);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 85);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_DTILT, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, sound_get("Hit4"));
