set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("wizardF"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1)
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, -2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("wizard2"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1)
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//sword
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("wizardF"));
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX_FRAME, 10)
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, -2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sound_get("wizard2"));
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 1)
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(AT_DSPECIAL, 5);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("kick_medium"));
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);

set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("kick_medium"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("kick_medium"));
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("kick_medium"));
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
