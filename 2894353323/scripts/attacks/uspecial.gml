set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_1_ground"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 11);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_1"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_1_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_1_ground_hurt"));
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Can be charged for 60 frames on the ground.");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);

//start
set_window_value(AT_USPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//loop
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//actual startup
set_window_value(AT_USPECIAL, 3, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//active 1
set_window_value(AT_USPECIAL, 4, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//active 2
set_window_value(AT_USPECIAL, 5, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_sword_swing_heavy1"));
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//active 3
set_window_value(AT_USPECIAL, 6, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//Recovery (grounded)
set_window_value(AT_USPECIAL, 7, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 40);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_GOTO, 24);

//active 1
set_window_value(AT_USPECIAL, 8, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//active 2
set_window_value(AT_USPECIAL, 9, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_SFX, asset_get("sfx_sword_swing_heavy1"));
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//active 3
set_window_value(AT_USPECIAL, 10, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 8);

//Recovery (aerial)
set_window_value(AT_USPECIAL, 11, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_USPECIAL, 18);

set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Clean 1 (Grounded)");
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 116);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_NAME, "Clean 1 (Grounded)");
set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_NAME, "Clean 2 (Grounded)");
set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 116);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_NAME, "Clean 2 (Grounded)");
set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -16);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 66);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);

set_hitbox_value(AT_USPECIAL, 5, HG_MUNO_HITBOX_NAME, "Late 1 (Grounded)");
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 116);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);

set_hitbox_value(AT_USPECIAL, 6, HG_MUNO_HITBOX_NAME, "Late 1 (Grounded)");
set_hitbox_value(AT_USPECIAL, 6, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 48);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 54);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);

set_hitbox_value(AT_USPECIAL, 7, HG_MUNO_HITBOX_NAME, "Late 2 (Grounded)");
set_hitbox_value(AT_USPECIAL, 7, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 116);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 1);

set_hitbox_value(AT_USPECIAL, 8, HG_MUNO_HITBOX_NAME, "Late 2 (Grounded)");
set_hitbox_value(AT_USPECIAL, 8, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, -16);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 66);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_USPECIAL, 9, HG_MUNO_HITBOX_NAME, "Final Hit (Grounded)");
set_hitbox_value(AT_USPECIAL, 9, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, 24);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 122);
set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, 0);

for (var i = 0; i <= 4; i++) {
    set_hitbox_value(AT_USPECIAL, i, HG_DAMAGE, 12);
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE, 361);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_USPECIAL, i, HG_KNOCKBACK_SCALING, 0.95);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(AT_USPECIAL, i, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT, 304);
    set_hitbox_value(AT_USPECIAL, i, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE_FLIPPER, 6);
}

for (var i = 5; i <= 9; i++) {
    set_hitbox_value(AT_USPECIAL, i, HG_DAMAGE, 6);
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE, 361);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_USPECIAL, i, HG_KNOCKBACK_SCALING, 0.5);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_USPECIAL, i, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(AT_USPECIAL, i, HG_HIT_SFX, sound_get("sfx_sword_blow_medium1"));
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE_FLIPPER, 6);
}

set_hitbox_value(AT_USPECIAL, 10, HG_MUNO_HITBOX_NAME, "Linker 1 (Aerial)");
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 10, HG_WIDTH, 116);
set_hitbox_value(AT_USPECIAL, 10, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_USPECIAL, 11, HG_MUNO_HITBOX_NAME, "Linker 1 (Aerial)");
set_hitbox_value(AT_USPECIAL, 11, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_X, 48);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 11, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 11, HG_HEIGHT, 54);
set_hitbox_value(AT_USPECIAL, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_USPECIAL, 12, HG_MUNO_HITBOX_NAME, "Linker 2 (Aerial)");
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 12, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 12, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USPECIAL, 12, HG_WIDTH, 116);
set_hitbox_value(AT_USPECIAL, 12, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 13, HG_MUNO_HITBOX_NAME, "Linker 2 (Aerial)");
set_hitbox_value(AT_USPECIAL, 13, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 13, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 13, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 13, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_X, -16);
set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 13, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 13, HG_HEIGHT, 66);
set_hitbox_value(AT_USPECIAL, 13, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 14, HG_MUNO_HITBOX_NAME, "Linker 3 (Aerial)");
set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 14, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 14, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 14, HG_WIDTH, 116);
set_hitbox_value(AT_USPECIAL, 14, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 14, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 15, HG_MUNO_HITBOX_NAME, "Linker 3 (Aerial)");
set_hitbox_value(AT_USPECIAL, 15, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 15, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 15, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 15, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 15, HG_HITBOX_X, 48);
set_hitbox_value(AT_USPECIAL, 15, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 15, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 15, HG_HEIGHT, 54);
set_hitbox_value(AT_USPECIAL, 15, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 15, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 16, HG_MUNO_HITBOX_NAME, "Linker 4 (Aerial)");
set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 16, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 16, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 16, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USPECIAL, 16, HG_WIDTH, 116);
set_hitbox_value(AT_USPECIAL, 16, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 16, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 17, HG_MUNO_HITBOX_NAME, "Linker 4 (Aerial)");
set_hitbox_value(AT_USPECIAL, 17, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, 17, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 17, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 17, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 17, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 17, HG_HITBOX_X, -16);
set_hitbox_value(AT_USPECIAL, 17, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 17, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 17, HG_HEIGHT, 66);
set_hitbox_value(AT_USPECIAL, 17, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 17, HG_HITBOX_GROUP, 3);

for (var i = 10; i <= 13; i++) {
    set_hitbox_value(AT_USPECIAL, i, HG_DAMAGE, 1);
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE, 70);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(AT_USPECIAL, i, HG_HIT_SFX, sound_get("sfx_sword_blow_light1"));
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE_FLIPPER, 4);
    set_hitbox_value(AT_USPECIAL, i, HG_TECHABLE, 1);
}
for (var i = 14; i <= 17; i++) {
    set_hitbox_value(AT_USPECIAL, i, HG_DAMAGE, 1);
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE, 70);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(AT_USPECIAL, i, HG_HIT_SFX, sound_get("sfx_sword_blow_light1"));
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE_FLIPPER, 4);
    set_hitbox_value(AT_USPECIAL, i, HG_TECHABLE, 1);
}

set_hitbox_value(AT_USPECIAL, 18, HG_MUNO_HITBOX_NAME, "Final Hit (Aerial)");
set_hitbox_value(AT_USPECIAL, 18, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 18, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL, 18, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 18, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 18, HG_HITBOX_X, 24);
set_hitbox_value(AT_USPECIAL, 18, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 18, HG_WIDTH, 122);
set_hitbox_value(AT_USPECIAL, 18, HG_HEIGHT, 112);
set_hitbox_value(AT_USPECIAL, 18, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 18, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 18, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 18, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL, 18, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 18, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 18, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 18, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 18, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 18, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));
//set_hitbox_value(AT_USPECIAL, 18, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 18, HG_HITBOX_GROUP, 4);
