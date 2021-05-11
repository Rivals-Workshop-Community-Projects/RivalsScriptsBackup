set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("star"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, sound_get("bair"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_BAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_BAIR, 18);

//spike 
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 240);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("boom"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -44);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 240);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("boom"));
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -46);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 240);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("boom"));
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -48);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -17);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 240);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, sound_get("boom"));
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -10);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 160);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, sound_get("starhit"));
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 7);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, -24);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, 4);
set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 160);
set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 6, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, sound_get("starhit"));
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, starhit );

//sou7rspot
set_hitbox_value(AT_BAIR, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_X, -54);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_Y, -65);
set_hitbox_value(AT_BAIR, 7, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 7, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 7, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 7, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 7, HG_HITPAUSE_SCALING, .12);
set_hitbox_value(AT_BAIR, 7, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 7, HG_HIT_SFX, sound_get("starhit"));
set_hitbox_value(AT_BAIR, 7, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_X, -63);
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_Y, -56);
set_hitbox_value(AT_BAIR, 8, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 8, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 8, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 8, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 8, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 8, HG_HITPAUSE_SCALING, .12);
set_hitbox_value(AT_BAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 8, HG_HIT_SFX, sound_get("starhit"));
set_hitbox_value(AT_BAIR, 8, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 9, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 9, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_X, -62);
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_Y, -46);
set_hitbox_value(AT_BAIR, 9, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 9, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 9, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 9, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 9, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 9, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 9, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 9, HG_HITPAUSE_SCALING, .12);
set_hitbox_value(AT_BAIR, 9, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 9, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 9, HG_HIT_SFX, sound_get("starhit"));
set_hitbox_value(AT_BAIR, 9, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 10, HG_PARENT_HITBOX, 10);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 10, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 10, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_X, -66);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_Y, -9);
set_hitbox_value(AT_BAIR, 10, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 10, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 10, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 10, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 10, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 10, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 10, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 10, HG_HITPAUSE_SCALING, .12);
set_hitbox_value(AT_BAIR, 10, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 10, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 10, HG_HIT_SFX, sound_get("starhit"));
set_hitbox_value(AT_BAIR, 10, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 11, HG_PARENT_HITBOX, 11);
set_hitbox_value(AT_BAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 11, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 11, HG_HITBOX_X, -58);
set_hitbox_value(AT_BAIR, 11, HG_HITBOX_Y, 0);
set_hitbox_value(AT_BAIR, 11, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 11, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 11, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 11, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 11, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 11, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 11, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 11, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 11, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 11, HG_HITPAUSE_SCALING, .12);
set_hitbox_value(AT_BAIR, 11, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 11, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 11, HG_HIT_SFX, sound_get("starhit"));
set_hitbox_value(AT_BAIR, 11, HG_VISUAL_EFFECT, starhit );

set_hitbox_value(AT_BAIR, 12, HG_PARENT_HITBOX, 12);
set_hitbox_value(AT_BAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 12, HG_WINDOW, 7);
set_hitbox_value(AT_BAIR, 12, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 12, HG_HITBOX_X, -38);
set_hitbox_value(AT_BAIR, 12, HG_HITBOX_Y, 20);
set_hitbox_value(AT_BAIR, 12, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 12, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 12, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 12, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 12, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 12, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 12, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 12, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 12, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 12, HG_HITPAUSE_SCALING, .12);
set_hitbox_value(AT_BAIR, 12, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 12, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 12, HG_HIT_SFX, sound_get("starhit"));
set_hitbox_value(AT_BAIR, 12, HG_VISUAL_EFFECT, starhit );

//sourspot
set_hitbox_value(AT_BAIR, 13, HG_PARENT_HITBOX, 13);
set_hitbox_value(AT_BAIR, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 13, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 13, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 13, HG_HITBOX_X, -20);
set_hitbox_value(AT_BAIR, 13, HG_HITBOX_Y, -36);
set_hitbox_value(AT_BAIR, 13, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 13, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 13, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 13, HG_PRIORITY, 7);
set_hitbox_value(AT_BAIR, 13, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 13, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 13, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 13, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 13, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 13, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_BAIR, 13, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 13, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 13, HG_HIT_SFX, sound_get("bash"));

set_hitbox_value(AT_BAIR, 14, HG_PARENT_HITBOX, 14);
set_hitbox_value(AT_BAIR, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 14, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 14, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 14, HG_HITBOX_X, -24);
set_hitbox_value(AT_BAIR, 14, HG_HITBOX_Y, -34);
set_hitbox_value(AT_BAIR, 14, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 14, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 14, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 14, HG_PRIORITY, 7);
set_hitbox_value(AT_BAIR, 14, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 14, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 14, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 14, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 14, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 14, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_BAIR, 14, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 14, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 14, HG_HIT_SFX, sound_get("bash"));

set_hitbox_value(AT_BAIR, 15, HG_PARENT_HITBOX, 15);
set_hitbox_value(AT_BAIR, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 15, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 15, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 15, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 15, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 15, HG_HITBOX_Y, -29);
set_hitbox_value(AT_BAIR, 15, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 15, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 15, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 15, HG_PRIORITY, 7);
set_hitbox_value(AT_BAIR, 15, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 15, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 15, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 15, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 15, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 15, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_BAIR, 15, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 15, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 15, HG_HIT_SFX, sound_get("bash"));

set_hitbox_value(AT_BAIR, 16, HG_PARENT_HITBOX, 16);
set_hitbox_value(AT_BAIR, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 16, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 16, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 16, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 16, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 16, HG_HITBOX_Y, -26);
set_hitbox_value(AT_BAIR, 16, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 16, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 16, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 16, HG_PRIORITY, 7);
set_hitbox_value(AT_BAIR, 16, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 16, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 16, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 16, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 16, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 16, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_BAIR, 16, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 16, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 16, HG_HIT_SFX, sound_get("bash"));

set_hitbox_value(AT_BAIR, 17, HG_PARENT_HITBOX, 17);
set_hitbox_value(AT_BAIR, 17, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 17, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 17, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 17, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 17, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 17, HG_HITBOX_Y, -22);
set_hitbox_value(AT_BAIR, 17, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 17, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 17, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 17, HG_PRIORITY, 7);
set_hitbox_value(AT_BAIR, 17, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 17, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 17, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 17, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 17, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 17, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_BAIR, 17, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 17, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 17, HG_HIT_SFX, sound_get("bash"));

set_hitbox_value(AT_BAIR, 18, HG_PARENT_HITBOX, 18);
set_hitbox_value(AT_BAIR, 18, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 18, HG_WINDOW, 7);
set_hitbox_value(AT_BAIR, 18, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 18, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 18, HG_HITBOX_X, -13);
set_hitbox_value(AT_BAIR, 18, HG_HITBOX_Y, -9);
set_hitbox_value(AT_BAIR, 18, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 18, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 18, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 18, HG_PRIORITY, 7);
set_hitbox_value(AT_BAIR, 18, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 18, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 18, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 18, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 18, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 18, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_BAIR, 18, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 18, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 18, HG_HIT_SFX, sound_get("bash"));