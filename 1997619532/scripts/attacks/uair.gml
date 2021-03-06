set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);

set_num_hitboxes(AT_UAIR,6);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3); 
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 82);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.4);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3); 
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -68);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 82);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 0.4);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3); 
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -73);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 92);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3); 
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 02);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 65);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .25 );
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 3); 
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 02);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 65);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 2);