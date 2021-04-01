set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);




set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 2,  AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2,  AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_NSPECIAL, 3,  AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 3,  AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("RI"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NSPECIAL, 4,  AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 4,  AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);


set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"))
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NSPECIAL, 7);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -61);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 84);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 100);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 144);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 100);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 144);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 0.1);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, 3);


set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 47);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 101);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 290);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2)
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("RI2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 100);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -11);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 215);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, .3);


set_hitbox_value(AT_NSPECIAL, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 100);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -61);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 210);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 140);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, .3);

set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 20, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 20, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_X,  100);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 20, HG_WIDTH, 94);
set_hitbox_value(AT_NSPECIAL, 20, HG_HEIGHT, 94);
set_hitbox_value(AT_NSPECIAL, 20, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 20, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL, 20, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 20, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_IS_TRANSCENDENT, true );
