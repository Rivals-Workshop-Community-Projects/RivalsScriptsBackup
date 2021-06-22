set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//Startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_tip_loop"));

//Startup 2
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

//Initial Hit
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ell_drill_loop"));

//Drill
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 6);

//Brief Recovery
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_ell_drill_stab"));

//Final Hit
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//Recovery
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 8);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 49);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 170);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("Hit1"));

set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 49);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("Hit1"));

set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 49);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 170);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("Hit1"));

set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 49);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("Hit1"));

set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 49);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 170);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, sound_get("Hit1"));

set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 49);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, sound_get("Hit1"));

set_hitbox_value(AT_FSTRONG, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 49);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 7, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG, 7, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 7, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_SFX, sound_get("Hit4"));

set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 8, HG_WIDTH, 53);
set_hitbox_value(AT_FSTRONG, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 8, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 8, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 8, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 8, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 8, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_FSTRONG, 8, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 8, HG_HIT_SFX, sound_get("Hit4"));