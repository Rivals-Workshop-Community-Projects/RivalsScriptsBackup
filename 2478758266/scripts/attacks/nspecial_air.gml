set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("pkthunder"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("pkthunder_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("pkthunder"));
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 37);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("ow"));
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 40);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 20);


set_num_hitboxes(AT_NSPECIAL_AIR, 11);

//first frame bolt
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_GROUP, 1)
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -1004);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 1188);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("bash"));

//second frame bolt
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -865);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 1467);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("bash"));

//third frame bolt
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_LIFETIME, 36);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_Y, -797);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WIDTH, 42);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HEIGHT, 1598);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_SFX, sound_get("bash"));

//last frame bolt
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_TYPE, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WIDTH, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HEIGHT, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);




//first scatter
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_GROUP, 2)
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WIDTH, 133);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HEIGHT, 69);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HIT_SFX, sound_get("bash"));

//second scatter
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_GROUP, 3)
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_X, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_WIDTH, 184);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HEIGHT, 89);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HIT_SFX, sound_get("bash"));

//third scatter
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WINDOW_CREATION_FRAME, 19);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_GROUP, 4)
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_X, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WIDTH, 233);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HEIGHT, -126);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HIT_SFX, sound_get("bash"));

set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WINDOW_CREATION_FRAME, 23);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_GROUP, 5)
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_X, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WIDTH, 233);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HEIGHT, -126);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HIT_SFX, sound_get("bash"));

set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_WINDOW_CREATION_FRAME, 27);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_GROUP, 6)
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_LIFETIME, 17);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_X, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_WIDTH, 233);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HEIGHT, -126);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HIT_SFX, sound_get("bash"));




//left scatter
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HITBOX_GROUP, 7)
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HITBOX_X, -86);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_WIDTH, 73);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HEIGHT, 132);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_ANGLE, 100);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HIT_SFX, sound_get("bash"));

//right scatter
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_HITBOX_GROUP, 8)
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_HITBOX_X, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_HITBOX_Y, -47);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_WIDTH, 72);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_HEIGHT, 132);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 11, HG_HIT_SFX, sound_get("bash"));
