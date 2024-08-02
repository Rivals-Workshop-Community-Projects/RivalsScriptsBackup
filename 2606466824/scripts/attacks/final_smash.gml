set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("finalsmash"));
set_attack_value(49, AG_NUM_WINDOWS, 15);
set_attack_value(49, AG_AIR_SPRITE, sprite_get("finalsmash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("null"));
set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash: Hyper Beam");

//dash startup
set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 22); //13
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 8);

//dash active
set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 20);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 2, AG_WINDOW_HSPEED, 18);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 2, AG_WINDOW_GOTO, 3);

//dash endlag (miss)
set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 25);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 6);
set_window_value(49, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);
set_window_value(49, 3, AG_WINDOW_GOTO, 17);







//grab transition
set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 4);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

//grab
set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 16);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 1);

//throw startup
set_window_value(49, 6, AG_WINDOW_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_LENGTH, 9);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(49, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_VSPEED_TYPE, 1);

//throw active
set_window_value(49, 7, AG_WINDOW_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_LENGTH, 3);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(49, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_VSPEED_TYPE, 1);

//throw endlag
set_window_value(49, 8, AG_WINDOW_TYPE, 1);
set_window_value(49, 8, AG_WINDOW_LENGTH, 10);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(49, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 8, AG_WINDOW_VSPEED_TYPE, 1);




//beam transition to charge pose
set_window_value(49, 9, AG_WINDOW_TYPE, 1);
set_window_value(49, 9, AG_WINDOW_LENGTH, 9);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(49, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 9, AG_WINDOW_VSPEED_TYPE, 1);

//beam charge pose
set_window_value(49, 10, AG_WINDOW_TYPE, 1);
set_window_value(49, 10, AG_WINDOW_LENGTH, 12);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(49, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 10, AG_WINDOW_SFX, sound_get("hyperbeam"));
set_window_value(49, 10, AG_WINDOW_SFX_FRAME, 10);

//beam charge to release transition
set_window_value(49, 11, AG_WINDOW_TYPE, 1);
set_window_value(49, 11, AG_WINDOW_LENGTH, 12);
set_window_value(49, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 11, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(49, 11, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 11, AG_WINDOW_VSPEED_TYPE, 1);

//beam release start
set_window_value(49, 12, AG_WINDOW_TYPE, 1);
set_window_value(49, 12, AG_WINDOW_LENGTH, 6);
set_window_value(49, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 12, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(49, 12, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 12, AG_WINDOW_VSPEED_TYPE, 1);

//beam release hold
set_window_value(49, 13, AG_WINDOW_TYPE, 1);
set_window_value(49, 13, AG_WINDOW_LENGTH, 7);
set_window_value(49, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 13, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(49, 13, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 13, AG_WINDOW_VSPEED_TYPE, 1);

//beam end recoil
set_window_value(49, 14, AG_WINDOW_TYPE, 1);
set_window_value(49, 14, AG_WINDOW_LENGTH, 12);
set_window_value(49, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 14, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(49, 14, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 14, AG_WINDOW_VSPEED_TYPE, 1);

//recoil to idle transition
set_window_value(49, 15, AG_WINDOW_TYPE, 1);
set_window_value(49, 15, AG_WINDOW_LENGTH, 18);
set_window_value(49, 15, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 15, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(49, 15, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 15, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49, 6);

set_hitbox_value(49, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 14);
set_hitbox_value(49, 1, HG_HITBOX_X, 35);
set_hitbox_value(49, 1, HG_HITBOX_Y, -30);
set_hitbox_value(49, 1, HG_WIDTH, 55);
set_hitbox_value(49, 1, HG_HEIGHT, 25);
set_hitbox_value(49, 1, HG_SHAPE, 2);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_DAMAGE, 0);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(49, 1, HG_TECHABLE, 3);
set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("nspec_grab"));
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 1, HG_THROWS_ROCK, 1);
set_hitbox_value(49, 1, HG_MUNO_HITBOX_NAME, "Grab");

set_hitbox_value(49, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 0);
set_hitbox_value(49, 2, HG_LIFETIME, 1);
set_hitbox_value(49, 2, HG_HITBOX_X, 40);
set_hitbox_value(49, 2, HG_HITBOX_Y, -30);
set_hitbox_value(49, 2, HG_WIDTH, 30);
set_hitbox_value(49, 2, HG_HEIGHT, 30);
set_hitbox_value(49, 2, HG_SHAPE, 2);
set_hitbox_value(49, 2, HG_PRIORITY, 2);
set_hitbox_value(49, 2, HG_DAMAGE, 0);
set_hitbox_value(49, 2, HG_ANGLE, 90);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(49, 2, HG_TECHABLE, 3);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(49, 2, HG_MUNO_HITBOX_EXCLUDE, 1);

set_hitbox_value(49, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 7);
set_hitbox_value(49, 3, HG_LIFETIME, 3);
set_hitbox_value(49, 3, HG_HITBOX_X, 45);
set_hitbox_value(49, 3, HG_HITBOX_Y, -10);
set_hitbox_value(49, 3, HG_WIDTH, 50);
set_hitbox_value(49, 3, HG_HEIGHT, 40);
set_hitbox_value(49, 3, HG_PRIORITY, 1);
set_hitbox_value(49, 3, HG_DAMAGE, 5);
set_hitbox_value(49, 3, HG_ANGLE, 78);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(49, 3, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_bird_nspecial2"));
set_hitbox_value(49, 3, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(49, 3, HG_MUNO_HITBOX_NAME, "Throw");
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 194);




set_hitbox_value(49, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 4, HG_WINDOW, 0);
set_hitbox_value(49, 4, HG_LIFETIME, 4);
set_hitbox_value(49, 4, HG_HITBOX_X, 80);
set_hitbox_value(49, 4, HG_HITBOX_Y, -60);
set_hitbox_value(49, 4, HG_WIDTH, 200);
set_hitbox_value(49, 4, HG_HEIGHT, 100);
set_hitbox_value(49, 4, HG_SHAPE, 2);
set_hitbox_value(49, 4, HG_PRIORITY, 1);
set_hitbox_value(49, 4, HG_DAMAGE, 2);
set_hitbox_value(49, 4, HG_ANGLE, 30);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(49, 4, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(49, 4, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(49, 4, HG_HITBOX_GROUP, 6);
set_hitbox_value(49, 4, HG_VISUAL_EFFECT, 1);

set_hitbox_value(49, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(49, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 5, HG_WINDOW, 0);
set_hitbox_value(49, 5, HG_LIFETIME, 4);
set_hitbox_value(49, 5, HG_HITBOX_X, 180);
set_hitbox_value(49, 5, HG_HITBOX_Y, -120);
set_hitbox_value(49, 5, HG_HITBOX_GROUP, 6);
set_hitbox_value(49, 5, HG_VISUAL_EFFECT, 1);

set_hitbox_value(49, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(49, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 6, HG_WINDOW, 0);
set_hitbox_value(49, 6, HG_LIFETIME, 4);
set_hitbox_value(49, 6, HG_HITBOX_X, 300);
set_hitbox_value(49, 6, HG_HITBOX_Y, -180);
set_hitbox_value(49, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(49, 6, HG_VISUAL_EFFECT, 1);




set_hitbox_value(49, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 7, HG_WINDOW, 0);
set_hitbox_value(49, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(49, 7, HG_LIFETIME, 4);
set_hitbox_value(49, 7, HG_HITBOX_X, 80);
set_hitbox_value(49, 7, HG_HITBOX_Y, -60);
set_hitbox_value(49, 7, HG_WIDTH, 200);
set_hitbox_value(49, 7, HG_HEIGHT, 100);
set_hitbox_value(49, 7, HG_SHAPE, 2);
set_hitbox_value(49, 7, HG_PRIORITY, 1);
set_hitbox_value(49, 7, HG_DAMAGE, 2);
set_hitbox_value(49, 7, HG_ANGLE, 40);
set_hitbox_value(49, 7, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(49, 7, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(49, 7, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(49, 7, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(49, 7, HG_HITBOX_GROUP, 7);
set_hitbox_value(49, 7, HG_VISUAL_EFFECT, 1);

set_hitbox_value(49, 8, HG_PARENT_HITBOX, 7);
set_hitbox_value(49, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 8, HG_WINDOW, 0);
set_hitbox_value(49, 8, HG_LIFETIME, 4);
set_hitbox_value(49, 8, HG_HITBOX_X, 180);
set_hitbox_value(49, 8, HG_HITBOX_Y, -120);
set_hitbox_value(49, 8, HG_HITBOX_GROUP, 7);
set_hitbox_value(49, 8, HG_VISUAL_EFFECT, 1);

set_hitbox_value(49, 9, HG_PARENT_HITBOX, 7);
set_hitbox_value(49, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 9, HG_WINDOW, 0);
set_hitbox_value(49, 9, HG_LIFETIME, 4);
set_hitbox_value(49, 9, HG_HITBOX_X, 300);
set_hitbox_value(49, 9, HG_HITBOX_Y, -180);
set_hitbox_value(49, 9, HG_HITBOX_GROUP, 7);
set_hitbox_value(49, 9, HG_VISUAL_EFFECT, 1);




set_hitbox_value(49, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 10, HG_WINDOW, 0);
set_hitbox_value(49, 10, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(49, 10, HG_LIFETIME, 4);
set_hitbox_value(49, 10, HG_HITBOX_X, 80);
set_hitbox_value(49, 10, HG_HITBOX_Y, -60);
set_hitbox_value(49, 10, HG_WIDTH, 300);
set_hitbox_value(49, 10, HG_HEIGHT, 200);
set_hitbox_value(49, 10, HG_SHAPE, 2);
set_hitbox_value(49, 10, HG_PRIORITY, 1);
set_hitbox_value(49, 10, HG_DAMAGE, 8);
set_hitbox_value(49, 10, HG_ANGLE, 45);
set_hitbox_value(49, 10, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 10, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(49, 10, HG_BASE_HITPAUSE, 14);
set_hitbox_value(49, 10, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(49, 10, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(49, 10, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(49, 10, HG_HITBOX_GROUP, 8);
set_hitbox_value(49, 10, HG_VISUAL_EFFECT, 1);

set_hitbox_value(49, 11, HG_PARENT_HITBOX, 10);
set_hitbox_value(49, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 11, HG_WINDOW, 0);
set_hitbox_value(49, 11, HG_LIFETIME, 4);
set_hitbox_value(49, 11, HG_HITBOX_X, 180);
set_hitbox_value(49, 11, HG_HITBOX_Y, -120);
set_hitbox_value(49, 11, HG_HITBOX_GROUP, 8);
set_hitbox_value(49, 11, HG_VISUAL_EFFECT, 1);

set_hitbox_value(49, 12, HG_PARENT_HITBOX, 10);
set_hitbox_value(49, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 12, HG_WINDOW, 0);
set_hitbox_value(49, 12, HG_LIFETIME, 4);
set_hitbox_value(49, 12, HG_HITBOX_X, 300);
set_hitbox_value(49, 12, HG_HITBOX_Y, -180);
set_hitbox_value(49, 12, HG_HITBOX_GROUP, 8);
set_hitbox_value(49, 12, HG_VISUAL_EFFECT, 1);
