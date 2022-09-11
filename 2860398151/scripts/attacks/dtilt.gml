set_attack_value(AT_DTILT, AG_CATEGORY, 2);
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_AIR_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_HURTBOX_AIR_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 0);

//	Normal Slide
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.50);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//	The Part where Kodiak decides to say "F*ck it, I'm gonna speen!!"
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, sfx_kodiak_dtilt);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.20);

set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.20);

set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_DTILT, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.35);
set_window_value(AT_DTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 7);

set_hitbox_value(AT_DTILT, 1, HG_MUNO_HITBOX_NAME, "Slide Kick");
set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTILT, 2, HG_MUNO_HITBOX_NAME, "Twirl 1");
set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 98);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7.8);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DTILT, 3, HG_MUNO_HITBOX_NAME, "Twirl 2");
set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DTILT, 4, HG_MUNO_HITBOX_NAME, "Twirl 3");
set_hitbox_value(AT_DTILT, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 6);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DTILT, 5, HG_MUNO_HITBOX_NAME, "Twirl 4");
set_hitbox_value(AT_DTILT, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 6);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DTILT, 6, HG_MUNO_HITBOX_NAME, "Twirl 5");
set_hitbox_value(AT_DTILT, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 6, HG_WINDOW, 6);
set_hitbox_value(AT_DTILT, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_X, 6);
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DTILT, 7, HG_MUNO_HITBOX_NAME, "Twirl Finisher");
set_hitbox_value(AT_DTILT, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_DTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 7, HG_WINDOW, 6);
set_hitbox_value(AT_DTILT, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DTILT, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 7, HG_HITBOX_X, 6);
set_hitbox_value(AT_DTILT, 7, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 7, HG_WIDTH, 98);
set_hitbox_value(AT_DTILT, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 7, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 7, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_DTILT, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 7, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_DTILT, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DTILT, 7, HG_HITBOX_GROUP, 7);