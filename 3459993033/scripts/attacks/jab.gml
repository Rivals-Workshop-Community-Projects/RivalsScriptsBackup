set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_MUNO_ATTACK_MISC, "If Jab 3 is used to polymorph a Toady, it skips straight to its finishing hitbox and ends the attack early.");

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("sfx_delta_swipe1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 2);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("sfx_delta_swipe2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 3);

set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("sfx_delta_swipe3"));

set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, sound_get("sfx_delta_jab3_rise"));
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 6);

set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX_FRAME, 6); 
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, asset_get("sfx_pom_fspecial_swing"));

set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 4);

set_num_hitboxes(AT_JAB, 10);

//jab 1
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 64);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, hfx_small)
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

//jab 2
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2)
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 63);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, hfx_small)

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2)
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, -29);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, hfx_tiny)

//jab 3
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 3)
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 39);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, hfx_tiny)
set_hitbox_value(AT_JAB, 4, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 3)
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 76);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 30);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_JAB, 5, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, hfx_tiny);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_JAB, 5, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");


set_hitbox_value(AT_JAB,6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB,6, HG_HITBOX_GROUP, -1)
set_hitbox_value(AT_JAB,6, HG_WINDOW, 9);
set_hitbox_value(AT_JAB,6, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB,6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB,6, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB,6, HG_HITBOX_Y, -24);
set_hitbox_value(AT_JAB,6, HG_WIDTH, 82);
set_hitbox_value(AT_JAB,6, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB,6, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB,6, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB,6, HG_ANGLE, 45);
set_hitbox_value(AT_JAB,6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB,6, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB,6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB,6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB,6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT, hfx_tiny);
set_hitbox_value(AT_JAB,6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB,6, HG_HIT_PARTICLE_NUM, 1);


set_hitbox_value(AT_JAB, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, -1)
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -24);
set_hitbox_value(AT_JAB, 7, HG_WIDTH, 82);
set_hitbox_value(AT_JAB, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 7, HG_EXTRA_HITPAUSE, 2);

set_hitbox_value(AT_JAB, 8, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, -1)
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -24);
set_hitbox_value(AT_JAB, 8, HG_WIDTH, 82);
set_hitbox_value(AT_JAB, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 8, HG_EXTRA_HITPAUSE, 2);

set_hitbox_value(AT_JAB, 9, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_GROUP, -1)
set_hitbox_value(AT_JAB, 9, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_Y, -24);
set_hitbox_value(AT_JAB, 9, HG_WIDTH, 82);
set_hitbox_value(AT_JAB, 9, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 9, HG_EXTRA_HITPAUSE, 2);

set_hitbox_value(AT_JAB, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_GROUP, -1)
set_hitbox_value(AT_JAB, 10, HG_WINDOW, 10);
set_hitbox_value(AT_JAB, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_Y, -24);
set_hitbox_value(AT_JAB, 10, HG_WIDTH, 82);
set_hitbox_value(AT_JAB, 10, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 10, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 10, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 10, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 10, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 10, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_JAB, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 10, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_JAB, 10, HG_VISUAL_EFFECT, hfx_small);


