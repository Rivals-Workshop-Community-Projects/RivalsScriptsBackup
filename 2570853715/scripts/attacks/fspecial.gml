set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("raging_demon1"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 7);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);

set_num_hitboxes(AT_FSPECIAL, 14);

set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Initial Grab");
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("raging_demon2"));

set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Multihit 1");
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_FSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Multihit 2");
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Multihit 3");
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Multihit 4");
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 6, HG_MUNO_HITBOX_NAME, "Multihit 5");
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 7, HG_MUNO_HITBOX_NAME, "Multihit 6");
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 8, HG_MUNO_HITBOX_NAME, "Multihit 7");
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 9, HG_MUNO_HITBOX_NAME, "Multihit 8");
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 10, HG_MUNO_HITBOX_NAME, "Multihit 9");
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 11, HG_MUNO_HITBOX_NAME, "Multihit 10");
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 11, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 12, HG_MUNO_HITBOX_NAME, "Multihit 11");
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 12, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 12, HG_LIFETIME, 1);

set_hitbox_value(AT_FSPECIAL, 13, HG_MUNO_HITBOX_NAME, "Multihit 12");
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 13, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 13, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 13, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 13, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 13, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_HITPAUSE, 6);

set_hitbox_value(AT_FSPECIAL, 14, HG_MUNO_HITBOX_NAME, "Launcher");
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 14, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 14, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 14, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 14, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 14, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 14, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 14, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 14, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 14, HG_KNOCKBACK_SCALING, 1.18);
set_hitbox_value(AT_FSPECIAL, 14, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 14, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 14, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Projectile immune from frames " + string(get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)) + " to " + string(get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) + get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)) +".");