set_attack_value(AT_USTRONG_G, AG_SPRITE, sprite_get("ustrongg"));
set_attack_value(AT_USTRONG_G, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG_G, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_G, AG_HURTBOX_SPRITE, sprite_get("ustrongg_hurt"));

//charge
set_window_value(AT_USTRONG_G, 1, AG_WINDOW_LENGTH, 23);
set_window_value(AT_USTRONG_G, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_G, 1, AG_WINDOW_ANIM_FRAME_START, 2);

//start
set_window_value(AT_USTRONG_G, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_G, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_G, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG_G, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_G, 2, AG_WINDOW_SFX, sound_get("explosion1"));
set_window_value(AT_USTRONG_G, 2, AG_WINDOW_SFX_FRAME, 11);

//active
set_window_value(AT_USTRONG_G, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_G, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_G, 3, AG_WINDOW_ANIM_FRAME_START, 9);

//end
set_window_value(AT_USTRONG_G, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG_G, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG_G, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG_G, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_G, 4);

/*//launcher right
set_hitbox_value(AT_USTRONG_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_G, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_G, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_USTRONG_G, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_USTRONG_G, 1, HG_HITBOX_Y, -19);
set_hitbox_value(AT_USTRONG_G, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG_G, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_USTRONG_G, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_G, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG_G, 1, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG_G, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_G, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_G, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG_G, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG_G, 1, HG_HITBOX_GROUP, 1);

//launcher left
set_hitbox_value(AT_USTRONG_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_G, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_G, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_USTRONG_G, 2, HG_HITBOX_X, -44);
set_hitbox_value(AT_USTRONG_G, 2, HG_HITBOX_Y, -19);
set_hitbox_value(AT_USTRONG_G, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG_G, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_USTRONG_G, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_G, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_G, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG_G, 2, HG_ANGLE, 65);
set_hitbox_value(AT_USTRONG_G, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_G, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_G, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG_G, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG_G, 2, HG_HITBOX_GROUP, 1);*/

//explosion
set_hitbox_value(AT_USTRONG_G, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_G, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_G, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_USTRONG_G, 3, HG_HITBOX_X, -14);
set_hitbox_value(AT_USTRONG_G, 3, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USTRONG_G, 3, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG_G, 3, HG_HEIGHT, 82);
set_hitbox_value(AT_USTRONG_G, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_G, 3, HG_DAMAGE, 16);
set_hitbox_value(AT_USTRONG_G, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_G, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_G, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_G, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_G, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG_G, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_G, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG_G, 3, HG_HITBOX_GROUP, 1);

//explosion sour
set_hitbox_value(AT_USTRONG_G, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_G, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_G, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_USTRONG_G, 4, HG_HITBOX_X, -14);
set_hitbox_value(AT_USTRONG_G, 4, HG_HITBOX_Y, -124);
set_hitbox_value(AT_USTRONG_G, 4, HG_WIDTH, 95);
set_hitbox_value(AT_USTRONG_G, 4, HG_HEIGHT, 104);
set_hitbox_value(AT_USTRONG_G, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_G, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG_G, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_G, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_G, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USTRONG_G, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_G, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG_G, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_G, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG_G, 4, HG_HITBOX_GROUP, 1);