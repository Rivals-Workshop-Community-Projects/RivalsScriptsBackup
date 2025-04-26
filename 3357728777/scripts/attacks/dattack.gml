set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_bite"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 7);


set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 5);


set_num_hitboxes(AT_DATTACK, 4);

//Hit 1 (Ground Hit)
set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, hfx_feather_small);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_FORCE_FLINCH, 2);
//set_hitbox_value(AT_DATTACK, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM, 1);

/*Hit 1 (Air Hit)
set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, -40);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITSTUN_MULTIPLIER, 0.6);
*/

//Base Hit 2
set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 39);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 74);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, hfx_curse_small);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_PARTICLE_NUM, 2);

//Wrath Hit 2
set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 39);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 74);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 85);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 3, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, hfx_blood_small);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_PARTICLE_NUM, 2);